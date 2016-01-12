unit UAnalyseSyntaxique;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, dialogs,
  Commctrl, UTableSybmoles, UChaineRefs, UTableTransitions, 
  UAnalyseSemantique, UAnalyseLexical, UMsgs;

type

  TSyntaxe = class
    public
      Constructor Create;
      Destructor Destroy; override;
      procedure Lancer;
      procedure Terminer;
      function getNbrErreurs: Entier;
      function ExisteErreurs: Boolean;
      procedure Lancer_Erreur(Index: Byte); overload;
      procedure Lancer_Erreur(Texte: string); overload;
      procedure Initialisation;      
    private
      NbrErreurs: Entier;
      Sym : Entier;
      procedure Ensembles_Premier;
      procedure Suivant;
      procedure programme;
      procedure Bloc;
      procedure Partie_Declaration_Constantes;
      procedure Partie_Declaration_Variables;
      procedure Deffinition_Constante;
      procedure Deffinition_Variables;
      procedure Bloc_Instructions(Evaluer: Boolean);
      procedure Constant(var att_type: TType; var att_val: Variant; Evaluer: Boolean);
      procedure Idents (var StrList : TStringList);
      procedure Sortiees (var StrList : TStringList);
      procedure Entrees (var StrList : TStringList);
      procedure _Type(var att_type: TType; var att_valeur: Variant);
      procedure Instructions( Evaluer: Boolean);
      procedure Instruction( Evaluer: Boolean);
      procedure Lecture(Evaluer: Boolean);
      procedure Ecriture( Evaluer: Boolean);
      procedure Affectation( Evaluer: Boolean);
      procedure Instruction_Conditionelle( Evaluer: Boolean);
      procedure Instuction_Repetition( Evaluer: Boolean);
      procedure Expression_Simple(var att_type: TType; var att_val: Variant; Evaluer: Boolean);
      procedure Expression(var att_type: TType; var att_valeur: Variant; Evaluer: Boolean);
      procedure Terme(var att_type: TType; var att_val: Variant; Evaluer: Boolean);
      procedure Facteur(var att_type: TType; var att_val: Variant; Evaluer: Boolean);
   end;

var
  Syntaxe: TSyntaxe;

implementation

var
  Premier_Opr_Rel, Premier_Opr_Signe, Premier_Opr_Add, Premier_Opr_Mul,
    Premier_Type : Set of Byte;

procedure TSyntaxe.Initialisation;
begin
  NbrErreurs := 0;
  Ensembles_Premier;
//  Ref_Courant := 1;
end;

Constructor TSyntaxe.Create;
begin
  inherited;
  Initialisation;
end;

Destructor TSyntaxe.Destroy;
begin
  Initialisation;
  inherited;
end;

procedure TSyntaxe.Terminer;
Const
  Msg_Nbr_Erreure_Syntaxe = 'Syntaxe : Analyse Syntaxique terminÈe; Nombre d''erreurs: %3d';
  Msg_Pas_Erreure_Syntaxe =  'Syntaxe : Analyse Syntaxique terminÈe; Pas d''erreurs';
begin
  if ExisteErreurs then
    Msgs.Ajout_Msg_Erreur(Format(Msg_Nbr_Erreure_Syntaxe, [NbrErreurs]))
  else
    Msgs.Ajout_Msg_Erreur(Msg_Pas_Erreure_Syntaxe);
end;

function TSyntaxe.getNbrErreurs: Entier;
begin
  Result := NbrErreurs;
end;

procedure TSyntaxe.Ensembles_Premier;
begin
  with TableSymbole do
    begin
      Premier_Opr_Signe := [Index_De_Vide, Index_De_Opr_Addi, Index_De_Opr_Sous];
      Premier_Opr_Add := [Index_De_Opr_Addi, Index_De_Opr_Sous, Index_De_Opr_Ou];
      Premier_Opr_Mul := [Index_De_Opr_Muli, Index_De_Opr_Divi, Index_De_Opr_Modu,
        Index_De_Opr_Et];
      Premier_Opr_Rel := [Index_De_Opr_Infe, Index_De_Opr_Supp, Index_De_Opr_Diff,
        Index_De_Opr_Infe_Egale, Index_De_Opr_Supp_Egale, Index_De_Opr_Egale];
      Premier_Type := [Index_De_Entier, Index_De_Naturel, Index_De_Logic,
        Index_De_Carac, Index_De_Chaine]
    end;
end;

procedure TSyntaxe.Lancer;
begin
  Programme;
  Terminer;
  Semantic.Terminer;
end;

procedure TSyntaxe.Suivant;
begin
  with Chaine_Refs do
 //   if not ExisteErreurs AND not Semantic.ExisteErreurs then
      if getCourant_Ref <= getIndex_Ref then
        begin
          Sym := getRef_Index(getCourant_Ref);
          SetCourant_Ref;
        end
      else Sym := 0
{     else
      begin
        SetCourant_Ref(getIndex_Ref);
        Sym := getIndex_Ref;
      end;   }
end;

procedure TSyntaxe.programme;
begin
  // Programme = " »—‰«„Ã " Ident "∫" Bloc ".".
  Suivant;

  if Sym = TableSymbole.Index_De_Prog then Suivant
  else Lancer_Erreur (TableSymbole.Index_De_Prog);

  if TableSymbole.Renvoi_Unite(Sym) = Identificateur then Suivant
  else Lancer_Erreur('Ident');

  if Sym = TableSymbole.Index_De_Point_Virgule then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Point_Virgule);

  Bloc;

  if Sym = TableSymbole.Index_De_Point then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Point);
end;

procedure TSyntaxe.Bloc;
begin
  { Bloc = [Partie_Declaration_Constantes]
         [Partie_Declaration_Variables] Bloc_Instructions.}

  if Sym = TableSymbole.Index_De_Conste then Partie_Declaration_Constantes;
  if Sym = TableSymbole.Index_De_Variable then Partie_Declaration_Variables;
  if Sym = TableSymbole.Index_De_Accoulad_Ouvr then Bloc_Instructions(True);
end;

procedure TSyntaxe.Partie_Declaration_Constantes;
begin
  (* Partie_Declaration_Constantes = "À«»  " Deffinition_Constante
   {Deffinition_Constante}.*)

  if Sym = TableSymbole.Index_De_Conste then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Conste);

  Deffinition_Constante;

  while TableSymbole.Renvoi_Unite(Sym) = Identificateur do Deffinition_Constante;
end;

procedure TSyntaxe.Deffinition_Constante;
var
  Ident: Byte;
  att_type_const: TType; att_val_const: Variant;
begin
  // Deffinition_Constante = Ident "=" Constant "∫".

  Ident := 0;
  if TableSymbole.Renvoi_Unite(Sym) = Identificateur then
    begin
      Ident := Sym;
      Suivant
    end
  else Lancer_Erreur('Ident');

  if Sym = TableSymbole.Index_De_Opr_Aff then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Opr_Aff);

  Constant(att_type_const, att_val_const, True);
  TableSymbole.Declarer(Ident, Fixe, att_type_const, att_val_const);

  if Sym = TableSymbole.Index_De_Point_Virgule then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Point_Virgule);
end;

procedure TSyntaxe.Constant(var att_type: TType; var att_val: Variant; Evaluer: Boolean);
var
  oprsigne: byte;
begin
  // Constant = [Opr_Signe] Nombre | Chaine | Oui | Non.

  att_type := Semantic.Verifier_Type(att_type, TableSymbole.Renvoi_Type(Sym));

  with TableSymbole do
    if Sym in Premier_Opr_Signe then
      begin
        oprsigne := Sym;
        Suivant;
          if Renvoi_Type(Sym) = _Naturel then
            begin
              att_type := Semantic.Verifier_Type(att_type, Renvoi_Type(Sym));
              if oprsigne = Index_De_Opr_Sous then
                begin
                  if Evaluer then att_type := _Entier;
                  att_val := Semantic.AffecterValeur(-1 * Renvoi_Valeur(Sym), Evaluer);
                end
              else
                att_val := Semantic.AffecterValeur(Renvoi_Valeur(Sym), Evaluer);
            end
          else
            Lancer_Erreur('Nombre');
      end
      else if Renvoi_Unite(Sym) = Constante then
        begin
          att_type := Semantic.Verifier_Type(att_type, Renvoi_Type(Sym));
          att_val := Semantic.AffecterValeur(Renvoi_Valeur(Sym), Evaluer);
        end
      else if Sym in [Index_De_Oui, Index_De_Non] then
        begin
          att_type := Semantic.Verifier_Type(att_type, _Logic);
          if Sym = Index_De_Oui then att_val := Semantic.AffecterValeur(True, Evaluer)
          else if Sym = Index_De_Non then att_val := Semantic.AffecterValeur(False, Evaluer);
        end
      else
        Lancer_Erreur('Constante');
    Suivant;
end;

procedure TSyntaxe.Partie_Declaration_Variables;
begin
  (* Partie_Declaration_Variables = " „ €Ì— "
      Deffinition_Variables {Deffinition_Variables}.*)

  if Sym = TableSymbole.Index_De_Variable then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Variable);

  Deffinition_Variables;

  while TableSymbole.Renvoi_Unite(Sym) = Identificateur do Deffinition_Variables;
end;

procedure TSyntaxe.Deffinition_Variables;
var
  StrList: TStringList;
  att_type: TType;
  att_valeur: Variant;
begin
  // Deffinition_Variables = Idents ":" _Type "∫".

  StrList := TStringList.Create;
  Idents(StrList);

  if Sym = TableSymbole.Index_De_Deux_Point then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Deux_Point);

  _Type(att_type, att_valeur);
  TableSymbole.Declarer(StrList, Variable, att_type, att_valeur);

  if Sym = TableSymbole.Index_De_Point_Virgule then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Point_Virgule);
  StrList.Free;
end;

procedure TSyntaxe.Idents (var StrList : TStringList);
begin
  // Idents = Ident {'°' Ident}.
  StrList.Clear;

  if TableSymbole.Renvoi_Unite(Sym) = Identificateur then
    begin
      StrList.Add(IntToStr(Sym));
      Suivant
    end
    else Lancer_Erreur('Ident');

  while Sym = TableSymbole.Index_De_Virgule do
    begin
      Suivant;
      if TableSymbole.Renvoi_Unite(Sym) = Identificateur then
        begin
          StrList.Add(IntToStr(Sym));
          Suivant
        end
        else Lancer_Erreur('Ident');
    end;
end;

procedure TSyntaxe.Entrees (var StrList : TStringList);
begin
  // Entrees = Entree {'°' Entree}.
  StrList.Clear;

  if TableSymbole.Renvoi_Unite(Sym) = Variable then
    begin
      StrList.Add(IntToStr(Sym));
      Suivant
    end
    else Semantic.Lancer_Erreur('Variable', Sym);

  while Sym = TableSymbole.Index_De_Virgule do
    begin
      Suivant;
      if TableSymbole.Renvoi_Unite(Sym) = Variable then
        begin
          StrList.Add(IntToStr(Sym));
          Suivant
        end
        else Semantic.Lancer_Erreur('Variable', Sym);
    end;
end;

procedure TSyntaxe._Type(var att_type: TType; var att_valeur: Variant);
begin
  // _Type = " ’ÕÌÕ"| " ÿ»Ì⁄Ì " | "„‰ÿﬁÌ" | " —„“" | "”·”·…" .

  if Sym in Premier_Type then
    begin
      att_type := TableSymbole.StrToType(Sym);
      case att_type of
        _Entier, _Naturel: att_valeur := 0;
        _Logic: att_valeur := False;
        _Caractere, _Chaine: att_valeur:= '';
      end;
      Suivant
    end
  else Lancer_Erreur('Type')
end;

procedure TSyntaxe.Bloc_Instructions(Evaluer: Boolean);
begin
  // Bloc_Instructions = "}" Instructions "{".

  if Sym = TableSymbole.Index_De_Accoulad_Ouvr then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Accoulad_Ouvr);

  Instructions(Evaluer);

  if Sym = TableSymbole.Index_De_Accoulad_Ferm then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Accoulad_Ferm);
end;

procedure TSyntaxe.Instructions(Evaluer: Boolean);
begin
  // Instructions = Instruction {"∫" Instruction}.

  Instruction(Evaluer);

  while Sym = TableSymbole.Index_De_Point_Virgule do
    begin
      Suivant;
      Instruction(Evaluer);
    end;
end;

procedure TSyntaxe.Instruction(Evaluer: Boolean);
begin             
  { Instruction = [Lecture | Ecriture | Affectation |
    Instruction_Conditionelle | Instuction_Repetition | Bloc_Instructions ].}

  with TableSymbole do
   if Sym = Index_De_Ecrire then Ecriture(Evaluer)
    else if Sym = Index_De_Lire then Lecture(Evaluer)
    else if Sym = Index_De_Si then Instruction_Conditionelle(Evaluer)
    else if Sym = Index_De_Tant_que then Instuction_Repetition(Evaluer)
    else if Renvoi_Unite(Sym) in [Identificateur, Variable, Fixe] then Affectation(Evaluer)
    else if Sym = Index_De_Accoulad_Ouvr then Bloc_Instructions(Evaluer)
end;

procedure TSyntaxe.Sortiees (var StrList : TStringList);
begin
  (* Sortiees = Sortiee  {"+/°" Sortiee} *)
  StrList.Clear;

  if (TableSymbole.Renvoi_Unite(Sym) in [Variable, Fixe, Constante]) then
    begin
      StrList.Add(IntToStr(Sym));
      Suivant
    end
    else Semantic.Lancer_Erreur('Variable ou constante', Sym);

  while Sym in [TableSymbole.Index_De_Virgule, TableSymbole.Index_De_Opr_Addi] do
    begin
      Suivant;
  if (TableSymbole.Renvoi_Unite(Sym) in [Variable, Fixe, Constante]) then
        begin
          StrList.Add(IntToStr(Sym));
          Suivant
        end
        else Semantic.Lancer_Erreur('Variable ou constante', Sym);
    end;
end;

procedure TSyntaxe.Lecture(Evaluer: Boolean);
var
  StrList : TStringList;
begin
  // Lecture = " «ﬁ—« " ")" Entrees "(".
  StrList := TStringList.Create;

  if Sym = TableSymbole.Index_De_Lire then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Lire);

  if Sym = TableSymbole.Index_De_Parent_Ouvr then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Parent_Ouvr);

  Entrees(StrList);
  if Evaluer then TableSymbole.Affecter_Valeurs(StrList);

  if Sym = TableSymbole.Index_De_Parent_Ferm then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Parent_Ferm);
  StrList.Free
end;

procedure TSyntaxe.Ecriture(Evaluer: Boolean);
var
  StrList : TStringList;
begin
  // Ecriture = " «ÿ»⁄ " ")" Sortiees "(".
  StrList := TStringList.Create;

  if Sym = TableSymbole.Index_De_Ecrire then Suivant else
    Lancer_Erreur(TableSymbole.Index_De_Ecrire);

  if Sym = TableSymbole.Index_De_Parent_Ouvr then Suivant else
    Lancer_Erreur(TableSymbole.Index_De_Parent_Ouvr);

  Sortiees(StrList);
  if Evaluer then
    if not Semantic.ExisteErreurs then
      TableSymbole.Afficher_Valeurs(StrList);

  if Sym = TableSymbole.Index_De_Parent_Ferm then Suivant else
    Lancer_Erreur(TableSymbole.Index_De_Parent_Ferm);
  StrList.Free
end;

procedure TSyntaxe.Affectation(Evaluer: Boolean);
var
  ident:byte;
  att_type, att_type_exp: TType; att_val_exp: variant;
begin
  // Affectation = Ident "=" Expression.

  ident := 0;

  if TableSymbole.Renvoi_Unite(Sym) = Variable then
    begin
      ident := Sym;
      att_type := TableSymbole.Renvoi_Type(Sym);
      att_type_exp := att_type;
      Suivant;
    end
  else if TableSymbole.Renvoi_Unite(Sym) = Fixe then
    Semantic.Erreur_Const(Sym)
  else Semantic.Erreur_Var(Sym);

  if Sym = TableSymbole.Index_De_Opr_Aff then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Opr_Aff);

  Expression(att_type_exp, att_val_exp, Evaluer);
  Semantic.Verifier_Type(att_type_exp, TableSymbole.Renvoi_Type(ident));

  if  Evaluer then
    if not Semantic.ExisteErreurs then
      TableSymbole.Affecter_Valeur(ident, att_val_exp)
end;

procedure TSyntaxe.Expression(var att_type: TType; var att_valeur: Variant; Evaluer: Boolean);
var
  oprrel: byte;

  att_type_exp_smpl: TType;
  att_valeur_exp_smpl: Variant;

  _att_type_exp_smpl: TType;
  _att_valeur_exp_smpl: Variant;
begin
  // Expression = Expression_Simple [Opr_Rel Expression_Simple].

  Expression_Simple(att_type_exp_smpl, att_valeur_exp_smpl, Evaluer);

  if Sym in Premier_Opr_Rel then
    begin
      oprrel := Sym;
      Suivant;
      Expression_Simple(_att_type_exp_smpl, _att_valeur_exp_smpl, Evaluer);
      Semantic.Verifier_Type(att_type_exp_smpl, _att_type_exp_smpl);
      att_type := _Logic;
      with Semantic do
        with TableSymbole do
          begin
            if oprrel = Index_De_Opr_Infe then
              att_valeur := AffecterValeur(att_valeur_exp_smpl > _att_valeur_exp_smpl, Evaluer)
            else if oprrel = Index_De_Opr_Supp then
              att_valeur := AffecterValeur(att_valeur_exp_smpl < _att_valeur_exp_smpl, Evaluer)
            else if oprrel = Index_De_Opr_Infe_Egale then
              att_valeur := AffecterValeur(att_valeur_exp_smpl >= _att_valeur_exp_smpl, Evaluer)
            else if oprrel = Index_De_Opr_Supp_Egale then
              att_valeur := AffecterValeur(att_valeur_exp_smpl <= _att_valeur_exp_smpl, Evaluer)
            else if oprrel = Index_De_Opr_Egale then
              att_valeur := AffecterValeur(att_valeur_exp_smpl = _att_valeur_exp_smpl, Evaluer)
            else if oprrel = Index_De_Opr_Diff then
              att_valeur := AffecterValeur(att_valeur_exp_smpl <> _att_valeur_exp_smpl, Evaluer);
          end;
    end
  else
    begin
      att_type := Semantic.Verifier_Type(att_type, att_type_exp_smpl);
      att_valeur := Semantic.AffecterValeur(att_valeur_exp_smpl, Evaluer);
    end;
end;

procedure TSyntaxe.Expression_Simple(var att_type: TType; var att_val: Variant; Evaluer: Boolean);
var
  oprsigne, opradd: byte;
  att_type_trm: TType; att_val_trm :Variant;
begin
  // Expression_Simple = [Opr_Signe] Terme {Opr_Add Terme}.

  oprsigne := 0;

  if Sym in Premier_Opr_Signe then
    begin
      oprsigne := Sym;
      Suivant;
    end;

  Terme(att_type_trm, att_val_trm, Evaluer);

  if oprsigne = 0 then
    begin
      att_type := Semantic.Verifier_Type(att_type, att_type_trm);
      att_val := Semantic.AffecterValeur(att_val_trm, Evaluer)
    end
  else if oprsigne = TableSymbole.Index_De_Opr_Addi then
    begin
      if not (att_type_trm in [_Naturel, _Entier]) then
        Semantic.Erreur_Type(att_type_trm, att_type);
      att_type := Semantic.Verifier_Type(att_type, att_type_trm);
      att_val := Semantic.AffecterValeur(att_val_trm, Evaluer);
    end
  else if oprsigne = TableSymbole.Index_De_Opr_Sous then
    begin
      att_type := Semantic.Verifier_Type(att_type, _Entier);
      att_val := Semantic.AffecterValeur(- att_val_trm, Evaluer);
    end;

  while Sym in Premier_Opr_Add do
    begin
      opradd := Sym;
      Suivant;
      Terme(att_type_trm, att_val_trm, Evaluer);
      att_type := Semantic.Verifier_Type(att_type, att_type_trm);

      with Semantic do
        with TableSymbole do
          if opradd = Index_De_Opr_Addi then
            begin
              if (att_type = _Caractere) and (att_type_trm = _Caractere) then
                Erreur_Opr(att_type, Index_De_Opr_Addi)
              else
                att_val := AffecterValeur(att_val + att_val_trm, Evaluer)
            end
          else if opradd = Index_De_Opr_Sous then
            begin
              if ((att_type = _Caractere) and (att_type_trm = _Caractere)) then
                Erreur_Opr(att_type, Index_De_Opr_Sous)
              else if ((att_type = _Chaine) and (att_type_trm = _Chaine)) then
                Erreur_Opr(att_type, Index_De_Opr_Sous)
              else
                att_val := AffecterValeur(att_val - att_val_trm, Evaluer);
            end
          else if opradd = Index_De_Opr_Ou then
            begin
              if (att_type = _Caractere) and (att_type_trm = _Caractere) then
                Erreur_Opr(att_type, Index_De_Opr_Ou)
              else if (att_type = _Chaine) and (att_type_trm = _Chaine) then
                Erreur_Opr(att_type, Index_De_Opr_Ou)
              else
                att_val := AffecterValeur(att_val OR att_val_trm, Evaluer);
            end;
    end;
end;

procedure TSyntaxe.Terme(var att_type: TType; var att_val: Variant; Evaluer: Boolean);
var
  oprmul: Byte;
  att_type_fct: TType; att_val_fct: Variant;
begin
  // Terme = Facteur {Opr_Mul Facteur}.

  Facteur(att_type_fct, att_val_fct, Evaluer);
  att_type := Semantic.Verifier_Type(att_type, att_type_fct);
  att_val := Semantic.AffecterValeur(att_val_fct, Evaluer);

  while Sym in Premier_Opr_Mul do
    begin                               
      oprmul := Sym;
      Suivant;
      Facteur(att_type_fct, att_val_fct, Evaluer);
      if (att_type in [_Chaine, _Caractere]) then
        Semantic.Erreur_Opr(att_type, oprmul);
      att_type := Semantic.Verifier_Type(att_type, att_type_fct);

      with Semantic do
        with TableSymbole do
          if oprmul = Index_De_Opr_Muli then
            att_val := AffecterValeur(att_val * att_val_fct, Evaluer)
          else if oprmul = Index_De_Opr_Divi then
            begin
              if att_val_fct = 0 then
                Erreur_Div_Par_Zero
              else
                att_val := AffecterValeur(att_val  Div att_val_fct, Evaluer)
            end
          else if oprmul = Index_De_Opr_Modu then
            att_val := AffecterValeur(att_val Mod att_val_fct, Evaluer)
          else if oprmul = Index_De_Opr_Et then
            att_val := AffecterValeur(att_val AND att_val_fct, Evaluer);
        end;
end;

procedure TSyntaxe.Facteur(var att_type: TType; var att_val: Variant; Evaluer: Boolean);
var
  att_type_exp, att_type_const, att_type_fct: TType;
  att_val_exp, att_val_const, att_val_fct: Variant;
begin
  { Facteur = Ident | Constante | ")" Expression "(" | "!" " Facteur |
    " ‰⁄„" | "·«"}

    with TableSymbole do
  if Sym = Index_De_Parent_Ouvr then
    begin
      Suivant;
      Expression(att_type_exp, att_val_exp, Evaluer);
      att_type := Semantic.Verifier_Type(att_type, att_type_exp);
      att_val := Semantic.AffecterValeur(att_val_exp, Evaluer);

      if Sym = Index_De_Parent_Ferm then Suivant else
        Lancer_Erreur(Index_De_Parent_Ferm);
    end
  else if Sym = Index_De_Opr_Non then
    begin       
      Suivant;
      Facteur(att_type_fct, att_val_fct, Evaluer);
      att_type := Semantic.Verifier_Type(att_type, att_type_fct);
      att_val := Semantic.AffecterValeur(not att_val_fct, Evaluer);
    end
  else if Sym = Index_De_Oui then
    begin
      att_type := Semantic.Verifier_Type(att_type, _Logic);
      att_val := Semantic.AffecterValeur(True, Evaluer);
      Suivant;
    end
  else if Sym = Index_De_Non then
    begin
      att_type := Semantic.Verifier_Type(att_type, _Logic);
      att_val := Semantic.AffecterValeur(False, Evaluer);
      Suivant;
    end
  else if Renvoi_Unite(Sym) in [Identificateur, Variable, Fixe] then
    begin
      att_type := Semantic.Verifier_Type(att_type, TableSymbole.Renvoi_Type(Sym));
      att_val := Semantic.AffecterValeur(Renvoi_Valeur(Sym), Evaluer);
      Suivant;
    end
  else if Renvoi_Unite(Sym) = Constante then
    begin
      Constant(att_type_const, att_val_const, Evaluer);
      att_type := Semantic.Verifier_Type(att_type, att_type_const);
      att_val := Semantic.AffecterValeur(att_val_const, Evaluer);
    end
  else Lancer_Erreur('Facteur');
end;

procedure TSyntaxe.Instruction_Conditionelle( Evaluer: Boolean);
var
  att_type_exp: TType; att_val_exp: Variant;
begin
  {Instruction_Conditionelle = " «–« " "(" Expression ")" "›«‰" Bloc_Instructions
    ["Ê«·« " Bloc_Instructions ".}

  if Sym = TableSymbole.Index_De_Si then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Si);

  if Sym = TableSymbole.Index_De_Parent_Ouvr then
    begin
      Suivant;
      Expression(att_type_exp, att_val_exp, Evaluer);
      if att_type_exp <> _Logic then Semantic.Erreur_Type(att_type_exp, _Logic);

      if Sym = TableSymbole.Index_De_Parent_Ferm then Suivant else
        Lancer_Erreur(TableSymbole.Index_De_Parent_Ferm);
    end;

  if Sym = TableSymbole.Index_De_Alors then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Alors);

  if not Evaluer then att_val_exp := false;
    Bloc_Instructions(att_val_exp);

  if Sym = TableSymbole.Index_De_Si_Non then
    begin
      Suivant;
      att_val_exp := Semantic.AffecterValeur(not att_val_exp, Evaluer);
      att_val_exp := Semantic.AffecterValeur(false, not Evaluer);
      Bloc_Instructions(att_val_exp);
    end;
end;

procedure TSyntaxe.Instuction_Repetition( Evaluer: Boolean);
label
  boucle;
var
  OldRef :Entier;
  att_type_exp: TType; att_val_exp: Variant;
begin
  // Instuction_Repetition = " »Ì‰„« " "(" Expression ")" " ﬁ„ " Bloc_Instructions.

  if Sym = TableSymbole.Index_De_Tant_que then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Tant_que);

  att_val_exp := Evaluer;
  OldRef := Chaine_Refs.getCourant_Ref;

  boucle:
  if Sym = TableSymbole.Index_De_Parent_Ouvr then
    begin
      Suivant;
      Expression(att_type_exp, att_val_exp, att_val_exp);
      if att_type_exp <> _Logic then Semantic.Erreur_Type(att_type_exp, _Logic);

      if Sym = TableSymbole.Index_De_Parent_Ferm then Suivant else
        Lancer_Erreur(TableSymbole.Index_De_Parent_Ferm);
    end;

  if Sym = TableSymbole.Index_De_Faire then Suivant
  else Lancer_Erreur(TableSymbole.Index_De_Faire);

  Bloc_Instructions(att_val_exp);
  if att_val_exp then
    begin
      Chaine_Refs.SetCourant_Ref(OldRef-1);
      Suivant;
      goto boucle;
    end;
end;

procedure TSyntaxe.Lancer_Erreur(Index: Byte);
Const
  Msg = 'Syntaxe : "%s" attendu(e), mais "%s" trouvÈ(e); [Ligne: %3d , Colonne: %3d]';
begin
  Inc(NbrErreurs);
  with Chaine_Refs do
    with TableSymbole do
      Msgs.Ajout_Msg_Erreur(Format(Msg, [Renvoi_Intituler(Index),
        Renvoi_Intituler(Sym),  getRow(getCourant_Ref), getCol(getCourant_Ref)]));
end;

procedure TSyntaxe.Lancer_Erreur(Texte: string);
Const
  Msg = 'Syntaxe : "%s" attendu(e), mais "%s" trouvÈ(e); [Ligne: %3d , Colonne: %3d]';
begin
  Inc(NbrErreurs);
  with Chaine_Refs do
    Msgs.Ajout_Msg_Erreur(Format(Msg, [Texte, TableSymbole.Renvoi_Intituler(Sym),
      getRow(getCourant_Ref), getCol(getCourant_Ref)]));
end;

function TSyntaxe.ExisteErreurs: Boolean;
begin
  Result := NbrErreurs > 0;
end;
end.
