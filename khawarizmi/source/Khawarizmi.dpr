program Khawarizmi;

uses
  Forms, Windows, Messages, SysUtils, dialogs,
  UMain in 'UMain.pas' {KhwMainForm},
  UTableSybmoles in 'UTableSybmoles.pas',
  UTableTransitions in 'UTableTransitions.pas',
  UAnalyseLexical in 'UAnalyseLexical.pas',
  UChaineRefs in 'UChaineRefs.pas',
  UAnalyseSyntaxique in 'UAnalyseSyntaxique.pas',
  UAbout in 'UAbout.pas' {frmAbout},
  UAnalyseSemantique in 'UAnalyseSemantique.pas',
  UCompiler in 'UCompiler.pas',
  USplash in 'USplash.pas' {frmSplash};

{$R *.res}

var
  handle, fMutex: THandle;
  cds: TCopyDataStruct;
  str: String;

begin
  // Une seule instance est autorisée
  fMutex := CreateMutex(nil,false,'Khawarizmi');
  if ( GetLastError() = ERROR_ALREADY_EXISTS ) or
     ( WaitForSingleObject(fMutex,100) = WAIT_TIMEOUT ) or
     ( fMutex = 0 ) then
    begin
      // Recuperer et envoyer le fichier passer en paramètre à l'autre instance
      handle := FindWindow('TKhwMainForm',nil);
      if handle <> 0 then
        begin
          str := ParamStr(1) + #0;
          with cds do
            begin
              dwData := 0;
              cbData := length(str);
              lpData := PChar(str);
            end;
          SendMessage(handle, WM_COPYDATA, Application.Handle, integer(@cds));
          Exit;
        end;
    end;
  Application.Initialize;
  Application.Title := 'Khawarizmi';
  Application.CreateForm(TKhwMainForm, KhwMainForm);
  Application.Run;
end.
