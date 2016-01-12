unit UChaineRefs;

interface

uses
  UTableSybmoles;
  
Type
    TTable_Refs = record  // la chaine de refecrence
      Ref, Ligne, Col :Entier;
    end;

    TChaine_Refs = Class
      public
        Constructor Create;
        Destructor Destroy; override;
        procedure Ajout_Ref(Pos, _Ligne, _Col: Entier);
        function getIndex_Ref: Entier;
        function getRef_Index(Ref: Entier): Entier;
        procedure Initialisation;
        function getRow(Sym : Entier): Entier;
        function getCol(Sym : Entier): Entier;
        function getCourant_Ref: Entier;
        procedure SetCourant_Ref(Ref: Entier = 1);
      private
        IndexRef: Entier;              // variable d'indexation la chaine de reference
        Ref_Courant: Entier;           // la référence courante;
        Table_Refs: array of TTable_Refs;

    end;

var
  Chaine_Refs: TChaine_Refs;
  
implementation

procedure TChaine_Refs.Initialisation;
begin
  IndexRef := 0;
  Ref_Courant := 1;
  Table_Refs := nil;
  SetLength(Table_Refs, 1);
  Table_Refs[0].Ref := 0;
  Table_Refs[0].Ligne := 0;
  Table_Refs[0].Col := 0;
end;

Constructor TChaine_Refs.Create;
begin
  inherited;
  Initialisation;
end;

Destructor TChaine_Refs.Destroy;
begin
  Initialisation;
  inherited;
end;

procedure TChaine_Refs.Ajout_Ref(Pos, _Ligne, _Col: Entier);
begin
  Inc(IndexRef);
  SetLength(Table_Refs, IndexRef + 1);
  Table_Refs[IndexRef].Ref := Pos;
  Table_Refs[IndexRef].Ligne := _Ligne;
  Table_Refs[IndexRef].Col := _Col
end;

function TChaine_Refs.getIndex_Ref: Entier;
begin
  Result := IndexRef;
end;

function TChaine_Refs.getRef_Index(Ref: Entier): Entier;
begin
  Result := Table_Refs[Ref].Ref;
end;

function TChaine_Refs.getCourant_Ref: Entier;
begin
  Result := Ref_Courant;
end;

procedure TChaine_Refs.SetCourant_Ref(Ref: Entier = 1);
begin
  case Ref of
    1: Inc(Ref_Courant);
    else
      Ref_Courant := Ref;
  end;
end;

function TChaine_Refs.getRow(Sym : Entier): Entier;
begin
  Result := Table_Refs[Sym].Ligne;
end;

function TChaine_Refs.getCol(Sym : Entier): Entier;
begin
  Result := Table_Refs[Sym].Col;
end;

end.
