unit UTableSybmoles;

interface

uses
  Dialogs, SysUtils, Classes, UMsgs;

Type

  // les types des variables et des constante
  Entier = Integer;
  Naturel = 0..MaxInt;
  Logic = Boolean;
  Carac = Char;
  Chaine = String;

  // les types des unités lexicales
  TUnite = (Unit_Vide, Mot_Reserve, Operateur, Separateur, Identificateur,
    Constante, Variable, Fixe);

  // les types des variables et des constante
  TType = (_Vide, _Entier, _Naturel, _Logic, _Caractere, _Chaine);

  Entres = Entier;         // pour indexer la table des symboles ; -1 : erreur
  Ligne_Table_symbole = record
    Nom: String;
    Intituler: String;
    Unite : TUnite;
    __Valeur: Variant;
    _Type : TType;
  end;

  TTableSymbole = class
    public
      Table_symbole: array of Ligne_Table_Symbole;  // Table des symboles

      Index_De_Prog, Index_De_Conste, Index_De_Variable, Index_De_Logic,
      Index_De_Entier, Index_De_Naturel, Index_De_Chaine, Index_De_Carac,
      Index_De_Tant_que, Index_De_Faire, Index_De_Si, Index_De_Alors,
      Index_De_Si_non, Index_De_Oui, Index_De_Non, Index_De_Lire, Index_De_Ecrire,
      Index_De_Opr_Aff, Index_De_Opr_Addi, Index_De_Opr_Sous, Index_De_Opr_Muli,
      Index_De_Opr_Divi, Index_De_Opr_Modu, Index_De_Opr_Egale, Index_De_Opr_Diff,
      Index_De_Opr_Infe, Index_De_Opr_Supp, Index_De_Opr_Infe_Egale,
      Index_De_Opr_Supp_Egale, Index_De_Opr_Ou, Index_De_Opr_Et, Index_De_Opr_Non,
      Index_De_Parent_Ferm, Index_De_Parent_Ouvr, Index_De_Accoulad_Ouvr,
      Index_De_Accoulad_Ferm, Index_De_Point, Index_De_Virgule, Index_De_Vide,
      Index_De_Point_Virgule, Index_De_Deux_Point, Index_De_Anti_Slash: Byte;

      procedure Initialisation;
      Constructor Create;
      Destructor Destroy; override;
      function Est_Existe(MotCourant: String; Debut, Fin: Entres; _unit: TUnite;
        var Position: Entres): Boolean;
      procedure Ajout_Mot_Predefinis;
      procedure Ajout_Ident(_Intituler: String);
      procedure Ajout_Contante(att_type:TType; att_valeur: Variant);
      procedure Ajout_Mot_Predefenie(_Nom: string; Valeur: Variant; _Unite: TUnite);
      function Renvoi_Unite(Sym: Byte): TUnite;
      function Renvoi_Type(Sym: Byte): TType;
      function Renvoi_Intituler(Sym: Byte): String;
      function Renvoi_Valeur(Sym:Byte): Variant;
      function StrToType(Sym: Byte): TType;
      function getNbr_Type(Valeur: Entier): TType;
      function getChaine_Type(MotCourant: String): TType;
      function getIndex: Entres;
      function getIndex_Mots_Predifinis: Entres;
      procedure Affecter_Valeur(Sym:Byte; Valeur: Variant);
      procedure Affecter_Valeurs(Idents: TStringList);
      procedure Afficher_Valeurs(Idents: TStringList);
      procedure Declarer(Idents: TStringList; _Unite: TUnite; __Type: TType;
        Valeur: Variant); overload;
      procedure Declarer(Ident: byte; _Unite: TUnite; __Type: TType;
        Valeur: Variant); overload;
    private
      Index_Mots_Predifinis: Entres;   // Nbr des mots réservés + Sep + Opr
      Index: Entres;                   // index dans la tables des symboles
      Index_Ident: Entier;             // le classement de l'identificateur
      Index_Const: Entier;             // le classement de la constante
end;

const
  Unites : array [TUnite] of String = ('Vide', 'Mot Réservé', 'Opérateur',
    'Séparateur', 'Identificateur', 'Constante', 'Variable', 'Fixe');

  Types : array [TType] of String =  ('Vide', 'Entier', 'Naturel', 'Logic',
    'Caractère', 'Chaîne');
var
  TableSymbole : TTableSymbole;

implementation

uses TypInfo, Math, UAnalyseSemantique;

function TTableSymbole.getNbr_Type(Valeur: Entier): TType;
begin
  if Valeur >= 0 then
    Result := _Naturel
  else
    Result := _Entier;
end;

function TTableSymbole.getChaine_Type(MotCourant: String): TType;
begin
    if length(MotCourant) = 1 then
      Result := _Caractere
    else
     Result := _Chaine
end;

function TTableSymbole.Renvoi_Unite(Sym: Byte): TUnite;
begin
  Result := Table_symbole[Sym].Unite;
end;

function TTableSymbole.Renvoi_Type(Sym: Byte): TType;
begin
  Result := Table_symbole[Sym]._Type;
end;

function TTableSymbole.Renvoi_Intituler(Sym: Byte): String;
begin
  Result := Table_symbole[Sym].Intituler;
end;

function TTableSymbole.Renvoi_Valeur(Sym:Byte): Variant;
begin
  with Table_symbole[Sym] do
    Result := __Valeur
end;

function TTableSymbole.StrToType(Sym: Byte): TType;
begin
  with Table_symbole[Sym] do
    if Nom = 'Entier' then Result := _Entier
    else if Nom = 'Naturel' then Result := _Naturel
    else if Nom = 'Logic' then Result := _Logic
    else if Nom = 'Carac' then Result := _Caractere
    else if Nom = 'Chaine' then Result := _Chaine
    else Result := _Vide;
end;


function TTableSymbole.Est_Existe(MotCourant: String; Debut, Fin: Entres; _unit: TUnite;
            var Position: Entres): Boolean;
var
  i: Entres;
begin
  Position := -1;
  Result := false;
  for i:= Debut to Fin do
    if Renvoi_Intituler(i) = MotCourant then
      if Renvoi_Unite(i) = _unit then
      begin
        Result := True;
        Position := i;
        Exit;
      end;
end;

procedure TTableSymbole.Ajout_Mot_Predefenie(_Nom: string; Valeur: Variant; _Unite: TUnite);
begin
  Inc(Index);                          // Incremente l'index de la table  1,2,3,...
  SetLength(Table_symbole, index + 1);
  with Table_symbole[index] do
    begin
      Unite := _Unite;
      Nom := _Nom;
      Intituler := Valeur;
    end;
end;

procedure TTableSymbole. Ajout_Contante(att_type:TType; att_valeur: Variant);
begin
  Inc(Index);
  Inc(Index_Const);                         // Incremente le numéro de la constnate
  SetLength(Table_symbole, index + 1);
  with Table_symbole[index] do
    begin
      Unite := Constante;
      _Type := att_type;
      Nom := 'Const_' + IntToStr(Index_Const);          //Const_1, Const_2, ...
      __Valeur := att_valeur;
      Intituler := att_valeur;
    end;
end;

procedure TTableSymbole. Ajout_Ident(_Intituler: String);
begin
  Inc(Index);
  Inc(Index_Ident);               // Incremente le numéro de l'identificateur
  SetLength(Table_symbole, index + 1);
  with Table_symbole[index] do
    begin
      Unite := Identificateur;
      _Type := _Vide;
      Nom := 'Ident_' + IntToStr(Index_Ident);           //Ident_1, Ident_2, ...
      Intituler := _Intituler;
    end;
end;

procedure TTableSymbole.Initialisation;
begin
  Index := 0;
  Index_Const := 0;
  Index_Ident:= 0;
  Index_Mots_Predifinis := 0;
  Table_symbole := nil;
  SetLength(Table_symbole, 1);
  Ajout_Mot_Predefinis;
end;

procedure TTableSymbole. Ajout_Mot_Predefinis;
begin
  Ajout_Mot_Predefenie('Prog', 'ÈÑäÇãÌ', Mot_Reserve);    Index_De_Prog := Index;
  Ajout_Mot_Predefenie('Conste', 'ËÇÈÊ', Mot_Reserve);    Index_De_Conste := Index;
  Ajout_Mot_Predefenie('Variable', 'ãÊÛíÑ', Mot_Reserve); Index_De_Variable := Index;
  Ajout_Mot_Predefenie('Logic', 'ãäØÞí', Mot_Reserve);    Index_De_Logic := Index;
  Ajout_Mot_Predefenie('Entier', 'ÕÍíÍ', Mot_Reserve);    Index_De_Entier := Index;
  Ajout_Mot_Predefenie('Naturel', 'ØÈíÚí', Mot_Reserve);  Index_De_Naturel := Index;
  Ajout_Mot_Predefenie('Chaine', 'ÓáÓáÉ', Mot_Reserve);   Index_De_Chaine := Index;
  Ajout_Mot_Predefenie('Carac', 'ÑãÒ', Mot_Reserve);      Index_De_Carac := Index;
  Ajout_Mot_Predefenie('Tant_que', 'ÈíäãÇ', Mot_Reserve); Index_De_Tant_que := Index;
  Ajout_Mot_Predefenie('Faire', 'Þã', Mot_Reserve);       Index_De_Faire := Index;
  Ajout_Mot_Predefenie('Si', 'ÇÐÇ', Mot_Reserve);         Index_De_Si := Index;
  Ajout_Mot_Predefenie('Alors', 'ÝÇä', Mot_Reserve);      Index_De_Alors := Index;
  Ajout_Mot_Predefenie('Si_non',  'æÇáÇ', Mot_Reserve);   Index_De_Si_non := Index;
  Ajout_Mot_Predefenie('Oui', 'äÚã', Mot_Reserve);        Index_De_Oui := Index;
  Ajout_Mot_Predefenie('Non', 'áÇ', Mot_Reserve);         Index_De_Non := Index;
  Ajout_Mot_Predefenie('Lire', 'ÇÞÑÇ', Mot_Reserve);      Index_De_Lire := Index;
  Ajout_Mot_Predefenie('Ecrire', 'ÇØÈÚ', Mot_Reserve);    Index_De_Ecrire := Index;

  Ajout_Mot_Predefenie('Opr_Aff', '=', Operateur);        Index_De_Opr_Aff := Index;
  Ajout_Mot_Predefenie('Opr_Addi', '+', Operateur);       Index_De_Opr_Addi := Index;
  Ajout_Mot_Predefenie('Opr_Sous', '-', Operateur);       Index_De_Opr_Sous := Index;
  Ajout_Mot_Predefenie('Opr_Muli', '*', Operateur);       Index_De_Opr_Muli := Index;
  Ajout_Mot_Predefenie('Opr_Divi', '÷', Operateur);       Index_De_Opr_Divi := Index;
  Ajout_Mot_Predefenie('Opr_Modu', '%', Operateur);       Index_De_Opr_Modu := Index;
  Ajout_Mot_Predefenie('Opr_Egale', '~', Operateur);      Index_De_Opr_Egale := Index;
  Ajout_Mot_Predefenie('Opr_Diff', '#', Operateur);       Index_De_Opr_Diff := Index;
  Ajout_Mot_Predefenie('Opr_Infe', '>', Operateur);       Index_De_Opr_Infe := Index;
  Ajout_Mot_Predefenie('Opr_Supp', '<', Operateur);       Index_De_Opr_Supp := Index;
  Ajout_Mot_Predefenie('Opr_Infe_Egale', '»', Operateur); Index_De_Opr_Infe_Egale := Index;
  Ajout_Mot_Predefenie('Opr_Supp_Egale', '«', Operateur); Index_De_Opr_Supp_Egale := Index;
  Ajout_Mot_Predefenie('Opr_Ou', '|', Operateur);         Index_De_Opr_Ou := Index;
  Ajout_Mot_Predefenie('Opr_Et', '&', Operateur);         Index_De_Opr_Et := Index;
  Ajout_Mot_Predefenie('Opr_Non', '!', Operateur);        Index_De_Opr_Non := Index;

  Ajout_Mot_Predefenie('Parent_Ferm', ')', Separateur);   Index_De_Parent_Ferm := Index;
  Ajout_Mot_Predefenie('Parent_Ouvr', '(', Separateur);   Index_De_Parent_Ouvr := Index;
  Ajout_Mot_Predefenie('Accoulad_Ferm', '}', Separateur); Index_De_Accoulad_Ferm := Index;
  Ajout_Mot_Predefenie('Accoulad_Ouvr', '{', Separateur); Index_De_Accoulad_Ouvr := Index;
  Ajout_Mot_Predefenie('Point', '.', Separateur);         Index_De_Point := Index;
  Ajout_Mot_Predefenie('Virgule', '¡', Separateur);       Index_De_Virgule := Index;
  Ajout_Mot_Predefenie('Point_Virgule', 'º', Separateur); Index_De_Point_Virgule := Index;
  Ajout_Mot_Predefenie('Deux_Point', ':', Separateur);    Index_De_Deux_Point := Index;
  Ajout_Mot_Predefenie('Anti_Slash', '\', Separateur);    Index_De_Anti_Slash := Index;
  Ajout_Mot_Predefenie('Vide', #0, Separateur);           Index_De_Vide := Index;

  Index_Mots_Predifinis := Index;
end;

function TTableSymbole.getIndex: Entres;
begin
  Result := Index;
end;

function TTableSymbole.getIndex_Mots_Predifinis: Entres;
begin
  Result := Index_Mots_Predifinis;
end;

procedure TTableSymbole.Affecter_Valeur(Sym:Byte; Valeur: Variant);
begin
  with Table_symbole[Sym] do
    __Valeur := Valeur;
end;

procedure TTableSymbole.Affecter_Valeurs(Idents: TStringList);
var
  i: Entier;
  Sym: Byte;
  Valeur: String;
begin
  with TableSymbole do
    if Idents.Count > 0 then
      for i:= 0 to Idents.Count -1 do
        begin
          Sym := StrToInt(Idents.Strings[i]);
          If Renvoi_Type(Sym) <> _Vide then
            begin
              Valeur := '';
                Repeat until InputQuery('Lecture', 'Veuillez Entrer la valeur de ' +
                  Renvoi_Intituler(Sym), Valeur);
                with Table_symbole[Sym] do
                  case _Type of
                    _Entier: __Valeur := StrToInt(Valeur);
                    _Naturel: __Valeur := ABS(StrToInt(Valeur));
                    _Logic: __Valeur := StrToBool(Valeur);
                    _Caractere: __Valeur := Valeur[1];
                  _Chaine: __Valeur := Valeur;
                  end;
            end
          else Semantic.Erreur_Var(Sym);
        end;
end;

procedure TTableSymbole.Afficher_Valeurs(Idents: TStringList);
var
  i: Entier;
begin
  if Idents.Count > 0 then
    for i:= 0 to Idents.Count -1 do
      with Table_symbole[StrToInt(Idents.Strings[i])] do
        Msgs.Ajout_Msg_Exe(__Valeur);
end;

procedure TTableSymbole.Declarer(Idents: TStringList; _Unite: TUnite;
  __Type: TType; Valeur: Variant);
var
  i: Entier;
begin
  if Idents.Count > 0 then
    for i:= 0 to Idents.Count -1 do
      Declarer(StrToInt(Idents[i]), _Unite, __Type, Valeur)
end;

procedure TTableSymbole.Declarer(Ident: byte; _Unite: TUnite; __Type: TType;
  Valeur: Variant);
begin                         
  with Table_symbole[Ident] do
    begin
      Unite := _Unite;
      _Type :=  __Type;
      __Valeur := Valeur;
    end
end;

Constructor TTableSymbole.Create;
begin
  inherited;
  Initialisation;
end;

Destructor TTableSymbole.Destroy;
begin
  Initialisation;
  inherited;
end;
end.
