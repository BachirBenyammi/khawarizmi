unit UMsgs;

interface

Uses
  Classes;

Type
    TMsgs = class
      public
        Constructor Create;
        Destructor Destroy; override;
        procedure Initialisation;
        procedure Enregister_Liste_Messages(Filename: String);
        procedure Ajout_Msg_Erreur (Erreur: String);
        procedure Ajout_Msg_Exe (Exe: String);
        function get_Msgs_Erreurs: String;
        function get_Msgs_Exe: String;
      private
        ListeMessages_Erreurs : TStringList;
        ListeMessages_Exe: String;
    end;
var
  Msgs: TMsgs;
  
implementation

Constructor TMsgs.Create;
begin
  inherited;
  ListeMessages_Erreurs := TStringList.Create;
  ListeMessages_Exe := '';
end;

Destructor TMsgs.Destroy;
begin
  ListeMessages_Erreurs.Free;
  inherited;
end;

procedure TMsgs.Enregister_Liste_Messages(Filename: String);
var
  StrList :TStringList;
begin
  StrList := TStringList.Create;
  try
    StrList.Add('Erreurs: ');
    StrList.Add(ListeMessages_Erreurs.Text);
    StrList.Add('Execution: ');    
    StrList.Add(ListeMessages_Exe);
    StrList.SaveToFile(Filename);
  finally
    StrList.Free;
  end;
end;

procedure TMsgs.Ajout_Msg_Erreur (Erreur: String);
begin
  ListeMessages_Erreurs.Add(Erreur);
end;

procedure TMsgs.Ajout_Msg_Exe (Exe: String);
begin
  ListeMessages_Exe := ListeMessages_Exe + Exe;
end;

procedure TMsgs.Initialisation;
begin
  ListeMessages_Erreurs.Clear;
  ListeMessages_Exe := '';
end;

function TMsgs.get_Msgs_Erreurs: String;
begin
  Result := ListeMessages_Erreurs.Text;
end;

function TMsgs.get_Msgs_Exe: String;
begin
  Result := ListeMessages_Exe;
end;

end.
