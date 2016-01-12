unit UAnalyseSemantique;

interface

uses Classes, SysUtils, dialogs, UTableSybmoles, UMsgs;

type
  TSemantic = class
    public
      Constructor Create;
      Destructor Destroy; override;
      procedure Terminer;
      function getNbrErreurs: Entier;
      function ExisteErreurs: Boolean;
      procedure Erreur_Type(_Type, _TypeOrg: TType);
      procedure Erreur_Var(Sym:Byte);
      procedure Erreur_Const(Sym:Byte);
      procedure Erreur_Opr(_Type: TType; Sym:Byte);
      procedure Erreur_Div_Par_Zero;
      function Verifier_Type(Type_1, Type_2: TType): TType;
      function AffecterValeur(att_vat: Variant; Evaluer: Boolean): Variant;
      procedure Lancer_Erreur(Texte: string; Sym: Byte);
      procedure Initialisation;
    private
      NbrErreurs: Entier;
   end;

var
  Semantic : TSemantic;
  
implementation

uses UChaineRefs;

procedure TSemantic.Initialisation;
begin
  NbrErreurs := 0;
end;

procedure TSemantic.Terminer;
Const
  Msg_Fin = 'Sèmantique : Analyse Sèmantique terminée;';
  Msg_Nbr_Erreures = 'Nombre d''erreurs: %3d;';
  Msg_Pas_Erreures = 'Pas d''erreurs;';
begin
  with Chaine_Refs do
    if ExisteErreurs then
      Msgs.Ajout_Msg_Erreur(Format(Msg_Fin + Msg_Nbr_Erreures, [NbrErreurs]))
  else
    Msgs.Ajout_Msg_Erreur(Msg_Fin + Msg_Pas_Erreures);
end;

Constructor TSemantic.Create;
begin
  inherited;
  Initialisation;
end;

Destructor TSemantic.Destroy;
begin
  Initialisation;
  inherited;
end;

function TSemantic.getNbrErreurs: Entier;
begin
  Result := NbrErreurs;
end;

function TSemantic.Verifier_Type(Type_1, Type_2: TType): TType;
begin
  if not ExisteErreurs then
    if (Type_1 = _Vide) and (Type_2 = _Vide) then Erreur_Var(
      TableSymbole.Renvoi_Valeur(Chaine_Refs.getIndex_Ref))
    else if (Type_1 = _Entier) and (Type_2 = _Naturel) then Type_1 := _Entier
    else if (Type_1 = _Naturel) and (Type_2 = _Entier) then Type_1 := _Entier
    else if (Type_1 = _Chaine) and (Type_2 = _Caractere) then Type_1 := _Chaine
    else if (Type_1 = _Caractere) and (Type_2 = _Chaine) then Type_1 := _Chaine
    else if (Type_1 = _Vide) then Type_1 := Type_2
    else if (Type_1 <> Type_2) then Erreur_Type(Type_1, Type_2);
  result := Type_1;
end;

function TSemantic.AffecterValeur(att_vat: Variant; Evaluer: Boolean): Variant;
begin
  if not ExisteErreurs then
   if Evaluer then
    result := att_vat
end;

procedure TSemantic.Erreur_Type(_Type, _TypeOrg: TType);
Const
  Msg = 'Sémantique : Type %s attendu, mais type "%s" trouvé; [Ligne: %3d , Colonne: %3d]';
begin
  Inc(NbrErreurs);
  with Chaine_Refs do
    Msgs.Ajout_Msg_Erreur(Format(Msg, [Types[_Type], Types[_TypeOrg],
      getRow(getCourant_Ref), getCol(getCourant_Ref)]));
end;

procedure TSemantic.Erreur_Opr(_Type: TType; Sym:Byte);
Const
  Msg = 'Sémantique : l''opération %s est interdit sur les types "%s"; [Ligne: %3d , Colonne: %3d]';
begin
  Inc(NbrErreurs);
  with Chaine_Refs do
    Msgs.Ajout_Msg_Erreur(Format(Msg, [TableSymbole.Renvoi_Intituler(Sym),
      Types[_Type], getRow(getCourant_Ref), getCol(getCourant_Ref)]));
end;

procedure TSemantic.Erreur_Var(Sym:Byte);
Const
  Msg = 'Sémantique : Variable %s non déclarer; [Ligne: %3d , Colonne: %3d]';
begin
  Inc(NbrErreurs);
  with Chaine_Refs do
    Msgs.Ajout_Msg_Erreur(Format(Msg, [TableSymbole.Renvoi_Intituler(Sym),
      getRow(getCourant_Ref), getCol(getCourant_Ref)]));
end;

procedure TSemantic.Erreur_Const(Sym:Byte);
Const
  Msg = 'Sémantique : Constante %s ne peut pas être affecter; [Ligne: %3d , Colonne: %3d]';
begin
  Inc(NbrErreurs);
  with Chaine_Refs do
    Msgs.Ajout_Msg_Erreur(Format(Msg, [TableSymbole.Renvoi_Intituler(Sym),
      getRow(getCourant_Ref), getCol(getCourant_Ref)]));
end;

procedure TSemantic.Erreur_Div_Par_Zero;
begin
  Inc(NbrErreurs);
  with Chaine_Refs do
    Msgs.Ajout_Msg_Erreur(Format('Sèmantique : Erreur: Division par 0; ' +
    '[Ligne: %3d , Colonne: %3d]', [getRow(getCourant_Ref), getCol(getCourant_Ref)]));
end;

procedure TSemantic.Lancer_Erreur(Texte: string; Sym: Byte);
Const
  Msg = 'Sémantique : "%s" attendu(e), mais "%s" trouvé(e); [Ligne: %3d , Colonne: %3d]';
begin
  Inc(NbrErreurs);
  with Chaine_Refs do
    Msgs.Ajout_Msg_Erreur(Format(Msg, [Texte, TableSymbole.Renvoi_Intituler(Sym),
      getRow(getCourant_Ref), getCol(getCourant_Ref)]));
end;

function TSemantic.ExisteErreurs: Boolean;
begin
  Result := NbrErreurs > 0;
end;

end.
