unit UTableTransitions;

interface

Const

  // Les ensembles des symboles
  Slash = '\';
  Anti_Slash = '/';
  EOL = [#0, #10, #13];
  Blancs = [#0..#32];
  Lettres = ['A'..'Z', 'a'..'z', '_', #0192 .. #0237];
  Chiffres = ['0'..'9'];
  Apostrophe = '"';
  Constantes = Chiffres + [Apostrophe];
  Separatateurs = ['(', ')', '}', '{', 'º', '¡', '.', ':'];
  Operateurs = ['+', '-', '*', '÷', '%', '=', '~', '#', '<', '>', '»', '«', '!', '&', '|'];
  Tous_Symboles = [Slash] + [Anti_Slash]+ EOL + Blancs + Lettres + Chiffres +
    Separatateurs + Operateurs;

  // Les d'états
  Etat_Initial = 0;
  Etat_Ident = 1;
  Etat_Diff_Ident = 2;
  Etat_Nbr = 3;
  Etat_Diff_Nbr = 4;
  Etat_Sep = 5;
  Etat_Opr = 6;
  Etat_Slash = 7;
  Etat_Diff_Eol = 8;
  Etat_Diff_Slash = 9;
  Etat_Ligne_Comn = 10;
  Etat_Mul_Lignes_Comm = 11;
  Etat_Chaine = 12;
  Etat_Fin_Chaine = 13;
  Etat_Erreur = 14;
  Etat_Anti_Slash = 15;
  Etat_Slash_Nbr = 16;
  Etat_Slash_Diff_Nbr = 17;

  // Les Sybmoles
  Sym_EOL = 0;
  Sym_Blanc = 1;
  Sym_Lettre = 2;
  Sym_Chiffre = 3;
  Sym_Sep = 4;
  Sym_Opr = 5;
  Sym_Slash = 6;
  Sym_Apostrophe = 7;
  Sym_Autre = 8;
  Sym_Slash_Chiffre = 9;
  Sym_Anti_Slash = 10;

  // Les états finaux
  TEtat_Final =  [Etat_Diff_Ident, Etat_Diff_Nbr, Etat_Sep, Etat_Opr, Etat_Erreur,
    Etat_Ligne_Comn, Etat_Mul_Lignes_Comm, Etat_Fin_Chaine, Etat_Slash_Diff_Nbr];

Type

  TSymboles = 0..10;     // Les Sybmoles
  TEtats = 0..17;       // Les d'états
  TTable_Transit = array [TEtats, TSymboles] of TEtats;  // Table des Transition


  TTable_Trans = class
    public
      Constructor Create;
      Destructor Destroy; override;
      procedure Initialisation;
      procedure setSymbole(Carac: Char);
      procedure setEtat(_Etat: TEtats);
      function getEtat:TEtats;
      function getSymbole:TSymboles;
      function estLettre_Chiffre: boolean;
      function estChaine(_Etat: TEtats): boolean;
      function estSymbole(Carac: Char): boolean;
      function estLettre(Carac: Char): boolean;
      function estEtatFinal: boolean;
      procedure setTransition();
    private
      Symbole : TSymboles;
      Etat : TEtats;
      Table_Transit: TTable_Transit;
  end;

var
  Table_Trans: TTable_Trans;

implementation

Constructor TTable_Trans.Create;
begin
  inherited;
  Initialisation;
end;

Destructor TTable_Trans.Destroy;
begin
  Initialisation;
  inherited;
end;

procedure TTable_Trans.Initialisation;
var
  Symbole : TSymboles;
  Etat : TEtats;
begin
  for Etat:= 0 to 14 do
    for Symbole:= 0 to 8 do
      Table_Transit[Etat, Symbole] := Etat_Erreur;

  Table_Transit[Etat_Initial,     Sym_EOL] :=        Etat_Initial;
  Table_Transit[Etat_Initial,     Sym_Blanc] :=      Etat_Initial;
  Table_Transit[Etat_Initial,     Sym_Lettre] :=     Etat_Ident;
  Table_Transit[Etat_Initial,     Sym_Chiffre] :=    Etat_Nbr;
  Table_Transit[Etat_Initial,     Sym_Sep] :=        Etat_Sep;
  Table_Transit[Etat_Initial,     Sym_Opr] :=        Etat_Opr;
  Table_Transit[Etat_Initial,     Sym_Slash] :=      Etat_Slash;
  Table_Transit[Etat_Initial,     Sym_Apostrophe] := Etat_Chaine;
  Table_Transit[Etat_Initial,     Sym_Autre] :=      Etat_Erreur;
  Table_Transit[Etat_Initial,     Sym_Slash_Chiffre] := Etat_Erreur;
  Table_Transit[Etat_Initial,     Sym_Anti_Slash] := Etat_Anti_Slash;

  Table_Transit[Etat_Ident,       Sym_Lettre] :=   Etat_Ident;
  Table_Transit[Etat_Ident,       Sym_Chiffre] :=  Etat_Ident;
  Table_Transit[Etat_Ident,       Sym_Eol] :=      Etat_Diff_Ident;
  Table_Transit[Etat_Ident,       Sym_Blanc] :=    Etat_Diff_Ident;
  Table_Transit[Etat_Ident,       Sym_Sep] :=      Etat_Diff_Ident;
  Table_Transit[Etat_Ident,       Sym_Opr] :=      Etat_Diff_Ident;
  Table_Transit[Etat_Ident,       Sym_Slash] :=    Etat_Diff_Ident;
  Table_Transit[Etat_Ident,       Sym_Autre] :=    Etat_Diff_Ident;
  Table_Transit[Etat_Ident,       Sym_Apostrophe] := Etat_Diff_Ident;
  Table_Transit[Etat_Ident,       Sym_Slash_Chiffre] := Etat_Diff_Ident;
  Table_Transit[Etat_Ident,       Sym_Anti_Slash] := Etat_Diff_Ident;

  Table_Transit[Etat_Nbr,         Sym_Chiffre] :=  Etat_Nbr;
  Table_Transit[Etat_Nbr,         Sym_Lettre] :=   Etat_Erreur;
  Table_Transit[Etat_Nbr,         Sym_Eol] :=      Etat_Diff_Nbr;
  Table_Transit[Etat_Nbr,         Sym_Blanc] :=    Etat_Diff_Nbr;
  Table_Transit[Etat_Nbr,         Sym_Sep] :=      Etat_Diff_Nbr;
  Table_Transit[Etat_Nbr,         Sym_Opr] :=      Etat_Diff_Nbr;
  Table_Transit[Etat_Nbr,         Sym_Slash] :=    Etat_Diff_Nbr;
  Table_Transit[Etat_Nbr,         Sym_Autre] :=    Etat_Diff_Nbr;
  Table_Transit[Etat_Nbr,         Sym_Apostrophe] := Etat_Diff_Nbr;
  Table_Transit[Etat_Nbr,         Sym_Slash_Chiffre] := Etat_Diff_Nbr;
  Table_Transit[Etat_Nbr,         Sym_Anti_Slash] := Etat_Diff_Nbr;

  Table_Transit[Etat_Slash_Nbr,   Sym_Chiffre] :=  Etat_Slash_Nbr;
  Table_Transit[Etat_Slash_Nbr,   Sym_Lettre] :=   Etat_Erreur;
  Table_Transit[Etat_Slash_Nbr,   Sym_Eol] :=      Etat_Slash_Diff_Nbr;
  Table_Transit[Etat_Slash_Nbr,   Sym_Blanc] :=    Etat_Slash_Diff_Nbr;
  Table_Transit[Etat_Slash_Nbr,   Sym_Sep] :=      Etat_Slash_Diff_Nbr;
  Table_Transit[Etat_Slash_Nbr,   Sym_Opr] :=      Etat_Slash_Diff_Nbr;
  Table_Transit[Etat_Slash_Nbr,   Sym_Slash] :=    Etat_Slash_Diff_Nbr;
  Table_Transit[Etat_Slash_Nbr,   Sym_Autre] :=    Etat_Slash_Diff_Nbr;
  Table_Transit[Etat_Slash_Nbr,   Sym_Apostrophe] := Etat_Slash_Diff_Nbr;
  Table_Transit[Etat_Slash_Nbr,   Sym_Slash_Chiffre] := Etat_Slash_Diff_Nbr;
  Table_Transit[Etat_Slash_Nbr,   Sym_Anti_Slash] := Etat_Slash_Diff_Nbr;

  Table_Transit[Etat_Anti_Slash,  Sym_Chiffre] :=  Etat_Slash_Nbr;
  Table_Transit[Etat_Anti_Slash,  Sym_Slash] :=    Etat_Erreur;
  Table_Transit[Etat_Anti_Slash,  Sym_Lettre] :=   Etat_Erreur;
  Table_Transit[Etat_Anti_Slash,  Sym_Eol] :=      Etat_Erreur;
  Table_Transit[Etat_Anti_Slash,  Sym_Blanc] :=    Etat_Erreur;
  Table_Transit[Etat_Anti_Slash,  Sym_Sep] :=      Etat_Erreur;
  Table_Transit[Etat_Anti_Slash,  Sym_Opr] :=      Etat_Erreur;
  Table_Transit[Etat_Anti_Slash,  Sym_Autre] :=    Etat_Erreur;
  Table_Transit[Etat_Anti_Slash,  Sym_Apostrophe] := Etat_Erreur;
  Table_Transit[Etat_Anti_Slash,  Sym_Slash_Chiffre] := Etat_Slash_Nbr;
  Table_Transit[Etat_Anti_Slash,  Sym_Anti_Slash] := Etat_Erreur;

  Table_Transit[Etat_Slash,       Sym_Slash] :=    Etat_Diff_Eol;
  Table_Transit[Etat_Slash,       Sym_Chiffre] :=  Etat_Diff_Slash;
  Table_Transit[Etat_Slash,       Sym_Lettre] :=   Etat_Diff_Slash;
  Table_Transit[Etat_Slash,       Sym_Eol] :=      Etat_Diff_Slash;
  Table_Transit[Etat_Slash,       Sym_Blanc] :=    Etat_Diff_Slash;
  Table_Transit[Etat_Slash,       Sym_Sep] :=      Etat_Diff_Slash;
  Table_Transit[Etat_Slash,       Sym_Opr] :=      Etat_Diff_Slash;
  Table_Transit[Etat_Slash,       Sym_Autre] :=    Etat_Diff_Slash;
  Table_Transit[Etat_Slash,       Sym_Apostrophe] := Etat_Diff_Slash;
  Table_Transit[Etat_Slash,       Sym_Slash_Chiffre] := Etat_Diff_Slash;
  Table_Transit[Etat_Slash,       Sym_Anti_Slash] := Etat_Diff_Slash;

  Table_Transit[Etat_Diff_Eol,    Sym_EOL] :=      Etat_Ligne_Comn;
  Table_Transit[Etat_Diff_Eol,    Sym_Chiffre] :=  Etat_Diff_Eol;
  Table_Transit[Etat_Diff_Eol,    Sym_Lettre] :=   Etat_Diff_Eol;
  Table_Transit[Etat_Diff_Eol,    Sym_Blanc] :=    Etat_Diff_Eol;
  Table_Transit[Etat_Diff_Eol,    Sym_Sep] :=      Etat_Diff_Eol;
  Table_Transit[Etat_Diff_Eol,    Sym_Opr] :=      Etat_Diff_Eol;
  Table_Transit[Etat_Diff_Eol,    Sym_Slash] :=    Etat_Diff_Eol;
  Table_Transit[Etat_Diff_Eol,    Sym_Autre] :=    Etat_Diff_Eol;
  Table_Transit[Etat_Diff_Eol,    Sym_Apostrophe] := Etat_Diff_Eol;
  Table_Transit[Etat_Diff_Eol,    Sym_Slash_Chiffre] := Etat_Diff_Eol;
  Table_Transit[Etat_Diff_Eol,    Sym_Anti_Slash] := Etat_Diff_Eol;

  Table_Transit[Etat_Diff_Slash,  Sym_Slash] :=    Etat_Mul_Lignes_Comm;
  Table_Transit[Etat_Diff_Slash,  Sym_EOL] :=      Etat_Diff_Slash;
  Table_Transit[Etat_Diff_Slash,  Sym_Chiffre] :=  Etat_Diff_Slash;
  Table_Transit[Etat_Diff_Slash,  Sym_Lettre] :=   Etat_Diff_Slash;
  Table_Transit[Etat_Diff_Slash,  Sym_Blanc] :=    Etat_Diff_Slash;
  Table_Transit[Etat_Diff_Slash,  Sym_Sep] :=      Etat_Diff_Slash;
  Table_Transit[Etat_Diff_Slash,  Sym_Opr] :=      Etat_Diff_Slash;
  Table_Transit[Etat_Diff_Slash,  Sym_Autre] :=    Etat_Diff_Slash;
  Table_Transit[Etat_Diff_Slash,  Sym_Apostrophe] := Etat_Diff_Slash;
  Table_Transit[Etat_Diff_Slash,  Sym_Slash_Chiffre] := Etat_Diff_Slash;
  Table_Transit[Etat_Diff_Slash,  Sym_Anti_Slash] := Etat_Diff_Slash;

  Table_Transit[Etat_Chaine,      Sym_Apostrophe] := Etat_Fin_Chaine;
  Table_Transit[Etat_Chaine,      Sym_Slash] :=      Etat_Chaine;
  Table_Transit[Etat_Chaine,      Sym_EOL] :=        Etat_Chaine;
  Table_Transit[Etat_Chaine,      Sym_Chiffre] :=    Etat_Chaine;
  Table_Transit[Etat_Chaine,      Sym_Lettre] :=     Etat_Chaine;
  Table_Transit[Etat_Chaine,      Sym_Blanc] :=      Etat_Chaine;
  Table_Transit[Etat_Chaine,      Sym_Sep] :=        Etat_Chaine;
  Table_Transit[Etat_Chaine,      Sym_Opr] :=        Etat_Chaine;
  Table_Transit[Etat_Chaine,      Sym_Autre] :=      Etat_Chaine;
  Table_Transit[Etat_Chaine,      Sym_Slash_Chiffre] := Etat_Chaine;
  Table_Transit[Etat_Chaine,      Sym_Anti_Slash] := Etat_Chaine;
end;

procedure TTable_Trans.setSymbole(Carac: Char);
begin
  Symbole := Sym_Autre;
  if Carac = Slash then Symbole := Sym_Slash
  else if Carac = Anti_Slash then Symbole := Sym_Anti_Slash
  else if Carac = Apostrophe then Symbole :=  Sym_Apostrophe
  else if Carac in EOL then Symbole := Sym_EOL
  else if Carac in Blancs then Symbole := Sym_Blanc
  else if Carac in Lettres then Symbole :=  Sym_Lettre
  else if Carac in Chiffres then
      case Etat of
        Etat_Slash_Nbr : Symbole := Sym_Slash_Chiffre
      else
        Symbole := Sym_Chiffre
      end
  else if Carac in Separatateurs then Symbole := Sym_Sep
  else if Carac in Operateurs then Symbole :=  Sym_Opr
end;

procedure TTable_Trans.setTransition;
begin
  Etat := Table_Transit[Etat, Symbole];
end;

procedure TTable_Trans.setEtat(_Etat: TEtats);
begin
  Etat := _Etat;
end;

function TTable_Trans.getEtat:TEtats;
begin
  Result := Etat;
end;

function TTable_Trans.getSymbole:TSymboles;
begin
  Result := Symbole;
end;

function TTable_Trans.estLettre_Chiffre: boolean;
begin
  Result := (Symbole in [Sym_Lettre , Sym_Chiffre, Sym_Slash_Chiffre])
end;

function TTable_Trans.estChaine(_Etat: TEtats): boolean;
begin
  Result := (Etat = Etat_Chaine) and (_Etat = Etat_Chaine)
end;

function TTable_Trans.estSymbole(Carac: Char): boolean;
begin
  Result := Carac in Tous_Symboles;
end;

function TTable_Trans.estLettre(Carac: Char): boolean;
begin
  Result := Carac in Lettres;
end;

function TTable_Trans.estEtatFinal: boolean;
begin
  Result := Etat in TEtat_Final;
end;
end.
