unit UCompiler;

interface

Uses
  UAnalyseLexical, UChaineRefs, UMsgs, UAnalyseSyntaxique, UAnalyseSemantique,
  UTableTransitions, UTableSybmoles;

Type
    TCompiler = class
      public
        Constructor Create;
        Destructor Destroy; override;
        procedure Initialisation;
        procedure Lancer;
        procedure Terminer;
        procedure setSource(Texte: String);
        function Erreurs: Boolean;
    end;
var
  Compiler: TCompiler;
  
implementation

Constructor TCompiler.Create;
begin
  inherited;
  Msgs := TMsgs.Create;
  Table_Trans := TTable_Trans.Create;
  TableSymbole := TTableSymbole.Create;
  Chaine_Refs := TChaine_Refs.Create;
  Lexical := TLexical.Create;
  Syntaxe := TSyntaxe.Create;
  Semantic := TSemantic.Create;
end;

procedure TCompiler.Initialisation;
begin
  Msgs.Initialisation;
  TableSymbole.Initialisation;
  Chaine_Refs.Initialisation;
  Lexical.Initialisation;
  Syntaxe.Initialisation;
  Semantic.Initialisation;
end;

procedure TCompiler.Lancer;
begin
  Lexical.Lancer; 
  if not Lexical.ExisteErreurs then
    Syntaxe.Lancer;
end;

procedure TCompiler.Terminer;
begin
  Lexical.Terminer;
  Syntaxe.Terminer;
  Semantic.Terminer;
end;

Destructor TCompiler.Destroy;
begin
  Msgs.free;
  Table_Trans.free;
  TableSymbole.free;
  Chaine_Refs.free;
  Lexical.free;
  Syntaxe.free;
  Semantic.free;
  inherited;
end;

procedure TCompiler.setSource(Texte: String);
begin
  // Recuperer le code source
  Lexical.setSource(Texte);
end;

function TCompiler.Erreurs: Boolean;
begin
  // A ce qu'il y a une erreur
  result := Lexical.ExisteErreurs or Syntaxe.ExisteErreurs or
    Semantic.ExisteErreurs
end;
end.

