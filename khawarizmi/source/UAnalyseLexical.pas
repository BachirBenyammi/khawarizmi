unit UAnalyseLexical;

interface

Uses
  SysUtils, UTableSybmoles, UTableTransitions, UChaineRefs, UMsgs, StrUtils;

type

  TLexical = class
    public
      procedure Lancer;
      procedure Terminer;
      constructor Create;
      Destructor Destroy; override;
      function getSource: String;
      function getCarac_Courant: Char;
      function getMot_Courant: String;
      function getRowCourant: Entier;
      function getColCourant: Entier;
      function getNbrErreurs: Entier;
      function ExisteErreurs: Boolean;   // Existance d'une erreur lexicale
      procedure setSource(Source: String);
      procedure Initialisation;
    Private
      Carc_Courant: Char;            // le caractère courant
      Mot_Courant: String;           // le mot courant
      Ligne_Courante: Entier;       // la ligne courante
      Colonne_Courante: Entier;     // la colonne corante
      Old_Colonne : Entier;
      Old_Ligne : Entier;
      Programme_Source: String;      // Le Texte source
      Taille_Pro_Src: Entier;       // la longeur du programme source
      Index_Prg_Src: Entier;        // le position du pointeur
      NbrErreurs: Entier;
      procedure Unite_Lexicale_Suivante;
      procedure Mise_a_jour_Position_Analyseur(Position : Entier = 1);
      procedure Ident_Reconnu;
      procedure Contante_Reconnu (att_Type: TType; att_valeur : Variant);
      procedure Erreur_Reconnu(Erreur : Byte = 0);
      function StringReplaces (Mot_Courant: String): String;
  end;

var
  Lexical : TLexical;
  
implementation

// Ininitalisation
procedure TLexical.Initialisation;
begin
  Programme_Source :='';
  Taille_Pro_Src := 0;
  Index_Prg_Src := 1;
  Carc_Courant := #0;
  Mot_Courant := '';
  Ligne_Courante := 1;
  Colonne_Courante := 0;
  Old_Colonne := 0;
  Old_Ligne := 1;
  NbrErreurs := 0;
end;

constructor TLexical.Create;
begin
  Inherited;
  Initialisation;
end;

Destructor TLexical.Destroy;
begin
  Initialisation;
  Inherited;
end;

// Fin d'analyse ; affichage rapport
procedure TLexical.Terminer;
const
  Msg_Pas_Erreurs = 'Lexicale : Analyse lexicale terminée: Pas d''erreurs';
  Msg_Nbr_Erreurs = 'Lexicale : Analyse lexicale terminée: Nombre d''erreurs: %3d';
begin
  if ExisteErreurs then
    Msgs.Ajout_Msg_Erreur(Format(Msg_Nbr_Erreurs, [NbrErreurs]))
  else
    Msgs.Ajout_Msg_Erreur(Msg_Pas_Erreurs);
end;

procedure TLexical.Unite_Lexicale_Suivante;
var
  Old_Etat : TEtats;
  Position: Entres;
begin

  // Ininitalisation
  Mot_Courant := '';
  Carc_Courant := #0;
  Old_Etat := Etat_Initial;
  Table_Trans.setEtat(Etat_Initial);

  // Tant que l'état n'est pas final
  with Table_Trans do
    while not estEtatFinal do
      begin
        if (getEtat = Etat_Diff_Slash) and (Index_Prg_Src > Taille_Pro_Src) then
          begin
             setEtat(Etat_Erreur);
             break;
          end;
        Carc_Courant := Programme_Source[Index_Prg_Src];
        SetSymbole(Carc_Courant);
        Old_Etat := getEtat;
        setTransition();
        if  estChaine(Old_Etat) or estLettre_Chiffre then
          Mot_Courant := Mot_Courant + Carc_Courant;
        Mise_a_jour_Position_Analyseur;
      end;

  // Si l'état est final
  with Table_Trans do
    with TableSymbole do
    if estEtatFinal then
      case getEtat of
        Etat_Diff_Ident: Ident_Reconnu;               // Rendre Identificateur
        Etat_Diff_Nbr:
          begin
            Contante_Reconnu(getNbr_Type(StrToInt(Mot_Courant)),
              StrToInt(Mot_Courant));                 // Rendre Nombre
            Mise_a_jour_Position_Analyseur(-1);
          end;
        Etat_Slash_Diff_Nbr: Contante_Reconnu(_Caractere, chr(StrToInt(Mot_Courant)));
        Etat_Fin_Chaine:
          begin
            Mot_Courant := StringReplace(Mot_Courant, '/Î', #8, [rfReplaceAll]);    // \b Backspace character
            Mot_Courant := StringReplace(Mot_Courant, '/Ì', #9, [rfReplaceAll]);    // \t Tab character
            Mot_Courant := StringReplace(Mot_Courant, '/Ó', #10, [rfReplaceAll]);  // \n Newline character
            Mot_Courant := StringReplace(Mot_Courant, '/ä', #12, [rfReplaceAll]);  // \f Form feed character
            Mot_Courant := StringReplace(Mot_Courant, '/Ñ', #13, [rfReplaceAll]);  // \r Carriage return
            Mot_Courant := StringReplaces(Mot_Courant);   // Conversion des caractères spécieux
            Contante_Reconnu(getChaine_Type(Mot_Courant), Mot_Courant);  // Rendre Chaine de caractères
          end;
        Etat_Sep, Etat_Opr:
          begin
            if not Est_Existe(Carc_Courant, 0, getIndex_Mots_Predifinis, Separateur, Position)
            then // Rendre Séparateur ou Opérateur
              Est_Existe(Carc_Courant, 0, getIndex_Mots_Predifinis, Operateur, Position);
            Chaine_Refs.Ajout_Ref(Position, Ligne_Courante, Colonne_Courante);
          end;
        Etat_Erreur:                                      // Rendre Erreur
          case Old_Etat of
            Etat_Nbr: Erreur_Reconnu(1);
            Etat_Slash_Nbr, Etat_Anti_Slash : Erreur_Reconnu(5);
          else
            Erreur_Reconnu
          end;
      end
end;

function TLexical.StringReplaces (Mot_Courant: String): String;
var
  Nbr, Slash, i: integer;
  StrNbr :string;
begin
  Slash := 0;
  Result := Mot_Courant;
  repeat
    Slash := PosEx('/', Mot_Courant, Slash+1);
    if Slash > 0 then
      begin
        StrNbr := '';
        for i:= Slash + 1 to length(Mot_Courant) do
          if (Mot_Courant[i] in ['0'..'9']) then
            StrNbr := StrNbr + Mot_Courant[i]
          else break;
        if length(StrNbr) < 1 then Exit;
        Nbr := StrToInt(StrNbr);
        StrNbr := '/' + StrNbr;     
        Mot_Courant := StringReplace(Mot_Courant, StrNbr, chr(Nbr), [rfReplaceAll]);
      end;
  until Slash = 0 ;
  Result := Mot_Courant;
end;

function TLexical.getCarac_Courant: Char;
begin
  Result := Carc_Courant;
end;

function TLexical.getMot_Courant: String;
begin
  Result := Mot_Courant;
end;

function TLexical.getSource: String;
begin
  Result := Programme_Source;
end;

procedure TLexical.setSource(Source: String);
begin
  Programme_Source := Source;
  Taille_Pro_Src := Length(Source);
end;

function TLexical.getRowCourant: Entier;
begin
  Result := Ligne_Courante;
end;

function TLexical.getColCourant: Entier;
begin
  Result := Colonne_Courante;
end;

procedure TLexical.Lancer;
begin
  // A ce qu'on à un texte à analyser ?
  if Index_Prg_Src > Taille_Pro_Src then
    Erreur_Reconnu(3);

  // A ce qu'on à un caractère à analyser ?
  while (Index_Prg_Src <= Taille_Pro_Src)  do
      Unite_Lexicale_Suivante;
  Terminer
end;

procedure TLexical.Mise_a_jour_Position_Analyseur(Position : Entier = 1);
begin
  Case Position of
    -1:
      begin
        Dec(Index_Prg_Src);
        if Carc_Courant = #10 then
          begin
            Dec(Ligne_Courante);
            Colonne_Courante := Old_Colonne;
          end
        else
          Dec(Colonne_Courante);
      end;
    1:
      begin 
        Inc(Index_Prg_Src);    // Avancer dans le programme source;
        // Nouvelle ligne
        if Carc_Courant = #10 then
          begin
            Inc(Ligne_Courante);
            Colonne_Courante := 0;
          end
        else
        // Nouvelle colonne
        Inc(Colonne_Courante);
        Old_Colonne := Colonne_Courante;
     end;
  end;
  Old_Ligne := Ligne_Courante;  
end;

procedure TLexical.Ident_Reconnu;
var
  Position : Entres;
begin
  Mise_a_jour_Position_Analyseur(-1);
  with TableSymbole do
    if length (Mot_Courant) > 64 then Erreur_Reconnu(2)
    else if (not Est_Existe(Mot_Courant, 0, getIndex_Mots_Predifinis,
        Mot_Reserve, Position))
      and (not Est_Existe(Mot_Courant, getIndex_Mots_Predifinis + 1, getIndex,
        Identificateur, Position)) then
        begin
          Ajout_Ident(Mot_Courant);
          Chaine_Refs.Ajout_Ref(getIndex, Ligne_Courante, Colonne_Courante);
        end
      else
      Chaine_Refs.Ajout_Ref(Position, Ligne_Courante, Colonne_Courante)
end;

procedure TLexical.Contante_Reconnu (att_Type: TType; att_valeur : Variant);
var
  Position : Entres;
begin
  with TableSymbole do
    if (not Est_Existe(att_valeur, getIndex_Mots_Predifinis + 1, getIndex,
      Constante, Position)) then
    begin
      Ajout_Contante(att_Type, att_valeur);
      Chaine_Refs.Ajout_Ref(getIndex, Ligne_Courante, Colonne_Courante);
    end
  else
    Chaine_Refs.Ajout_Ref(Position,  Ligne_Courante, Colonne_Courante);
end;

procedure TLexical.Erreur_Reconnu(Erreur : Byte = 0);
Const
  Debut_Msg = 'Lexicale : Erreur, ';
  Lign_Col_Msg = '"%s" ; [Ligne: %3d , Colonne: %3d]';
  Msg_Erreur_Carac_Illegal = 'Cractère illegal: ';
  Msg_Erreur_Ident_Errone =  'Identificateur erroné: ';
  Msg_Erreur_Carac_Errone = 'Caractère erroné: ';
  Msg_Erreur_Ident_Long =    'Identificateur tros long: ';
  Msg_Erreur_Pas_De_Texte_Src = 'Pas de texte source: ';
  Msg_Erreur_Comm_Fin_Texte = 'Fin commentaire attendu: ';  
var
  Msg: String;
begin
  Inc(NbrErreurs);

  with Table_Trans do
    if Erreur = 0 then
    if (Taille_Pro_Src = 0 ) then Erreur := 0
    else if Index_Prg_Src > Taille_Pro_Src then Erreur := 4
    else if not estSymbole(Carc_Courant) then Erreur := 1
    else if estLettre(Carc_Courant) then Erreur := 3;
  
  case Erreur of
    0: Msg := Debut_Msg + Msg_Erreur_Carac_Illegal + Lign_Col_Msg;          // Rendre Erreur caratére illégale
    1: Msg := Debut_Msg + Msg_Erreur_Ident_Errone + Lign_Col_Msg;           // Rendre Erreur Identificateur erroné
    2: Msg := Debut_Msg + Msg_Erreur_Ident_Long + Lign_Col_Msg;             // Rendre Erreur Identificateur tros long
    3: Msg := Debut_Msg + Msg_Erreur_Pas_De_Texte_Src + Lign_Col_Msg;       // Rendre Erreur pas de texte source
    4: Msg := Debut_Msg + Msg_Erreur_Comm_Fin_Texte + Lign_Col_Msg;         // Rendre Erreur commentaire sans fin
    5,6: Msg := Debut_Msg + Msg_Erreur_Carac_Errone + Lign_Col_Msg;         // Rendre Erreur commentaire sans fin
  end;
  Msgs.Ajout_Msg_Erreur(Format(Msg, [Mot_Courant, Ligne_Courante,
    Colonne_Courante]));
end;

function TLexical.getNbrErreurs: Entier;
begin
  Result := NbrErreurs;
end;

function TLexical.ExisteErreurs: Boolean;
begin
  Result := NbrErreurs > 0;
end;

end.
