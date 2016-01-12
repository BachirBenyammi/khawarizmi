unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, RichEdit, Grids, ExtCtrls, ActnList, Menus,
  ShellAPi, ImgList, ToolWin, Buttons;

type

  TKhwMainForm = class(TForm)
    StatusBar: TStatusBar;
    pnl_left: TPanel;
    Tableau: TStringGrid;
    pcInfos: TPageControl;
    tsTableSymboles: TTabSheet;
    tsChaineRef: TTabSheet;
    tsMosReserves: TTabSheet;
    tsOperateurs: TTabSheet;
    tsSperateurs: TTabSheet;
    tsIdentif: TTabSheet;
    tsContantes: TTabSheet;
    pnlEditeur: TPanel;
    pcEditeur: TPageControl;
    tsEditeur: TTabSheet;
    pnlBas: TPanel;
    Splitter1: TSplitter;
    pnlInfos_: TPanel;
    GroupBox1: TGroupBox;
    Splitter2: TSplitter;
    ActionList1: TActionList;
    ActionNew: TAction;
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    New1: TMenuItem;
    N1: TMenuItem;
    ActionQuit: TAction;
    Quitter1: TMenuItem;
    Editor: TRichEdit;
    ActionOpen: TAction;
    OD: TOpenDialog;
    SD: TSaveDialog;
    ActionSave: TAction;
    Ouvrir1: TMenuItem;
    Enregister1: TMenuItem;
    ActionSaveAs: TAction;
    Messagesderreur1: TMenuItem;
    Aide1: TMenuItem;
    N1Edition1: TMenuItem;
    Compiler1: TMenuItem;
    Compiler2: TMenuItem;
    ActionAbout: TAction;
    ActionShortCuts: TAction;
    ActionPresent: TAction;
    ActionRapport: TAction;
    Apropos1: TMenuItem;
    Prsentation1: TMenuItem;
    Rapport1: TMenuItem;
    Racourcis1: TMenuItem;
    ActionSaveMsg: TAction;
    ActionClear: TAction;
    Enregister2: TMenuItem;
    Effacer1: TMenuItem;
    ActionCompile: TAction;
    ActionInfos: TAction;
    ActionCancel: TAction;
    ActionCopy: TAction;
    ActionPaste: TAction;
    ActionCut: TAction;
    ActionFont: TAction;
    ActionSelectAll: TAction;
    FD: TFontDialog;
    N4: TMenuItem;
    ActionPrint: TAction;
    PD: TPrintDialog;
    Enregistersous1: TMenuItem;
    Imprimer1: TMenuItem;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton23: TToolButton;
    PopupMenu1: TPopupMenu;
    Couper2: TMenuItem;
    Copier2: TMenuItem;
    Coller2: TMenuItem;
    SelectionnerTout2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Annuler2: TMenuItem;
    N7: TMenuItem;
    ActionCode: TAction;
    Codesource1: TMenuItem;
    Panel1: TPanel;
    Motsrservs1: TMenuItem;
    Oprateurs1: TMenuItem;
    Sparateurs1: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    objectBitBtn19TBitBtn1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    Font2: TMenuItem;
    N54: TMenuItem;
    Annuler1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N55: TMenuItem;
    Couper1: TMenuItem;
    Copier1: TMenuItem;
    Coller1: TMenuItem;
    SelectionnerTout1: TMenuItem;
    Font1: TMenuItem;
    Motsrservs2: TMenuItem;
    Sparateurs2: TMenuItem;
    Oprateurs2: TMenuItem;
    cbInfos: TComboBox;
    sgCommon: TStringGrid;
    cbASCII: TComboBox;
    ToolButton7: TToolButton;
    FindD: TFindDialog;
    ActionSearch: TAction;
    Recherche1: TMenuItem;
    Couper3: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    ToolButton13: TToolButton;
    N66: TMenuItem;
    N67: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
    N70: TMenuItem;
    N71: TMenuItem;
    N72: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    N76: TMenuItem;
    N77: TMenuItem;
    N78: TMenuItem;
    N79: TMenuItem;
    N80: TMenuItem;
    N81: TMenuItem;
    N82: TMenuItem;
    N83: TMenuItem;
    N84: TMenuItem;
    N85: TMenuItem;
    N86: TMenuItem;
    N87: TMenuItem;
    N88: TMenuItem;
    N89: TMenuItem;
    I1: TMenuItem;
    N90: TMenuItem;
    N91: TMenuItem;
    N92: TMenuItem;
    N93: TMenuItem;
    N94: TMenuItem;
    N95: TMenuItem;
    N96: TMenuItem;
    N97: TMenuItem;
    N98: TMenuItem;
    N99: TMenuItem;
    N100: TMenuItem;
    N101: TMenuItem;
    tsVars: TTabSheet;
    tsFixes: TTabSheet;
    Informations1: TMenuItem;
    pcMsg: TPageControl;
    tsErreurs: TTabSheet;
    tsExecution: TTabSheet;
    Memo_Execution: TMemo;
    N102: TMenuItem;
    N103: TMenuItem;
    N104: TMenuItem;
    N105: TMenuItem;
    N106: TMenuItem;
    N107: TMenuItem;
    N108: TMenuItem;
    N109: TMenuItem;
    ActionInitialise: TAction;
    Intialise1: TMenuItem;
    ActionDemos: TAction;
    Exemples1: TMenuItem;
    ActionLexicale: TAction;
    ActionSyntaxe: TAction;
    AnalyseLexicale1: TMenuItem;
    AnalyseSyntaxiqueetSmantique1: TMenuItem;
    lb_Erreurs: TListBox;

    procedure FormCreate(Sender: TObject);
    procedure EditorSelectionChange(Sender: TObject);
    procedure pcInfosChange(Sender: TObject);
    procedure ActionNewExecute(Sender: TObject);
    procedure ActionOpenExecute(Sender: TObject);
    procedure ActionSaveExecute(Sender: TObject);
    procedure ActionSaveAsExecute(Sender: TObject);
    procedure ActionAboutExecute(Sender: TObject);
    procedure ActionShortCutsExecute(Sender: TObject);
    procedure ActionPresentExecute(Sender: TObject);
    procedure ActionRapportExecute(Sender: TObject);
    procedure ActionSaveMsgExecute(Sender: TObject);
    procedure ActionClearExecute(Sender: TObject);
    procedure ActionCompileExecute(Sender: TObject);
    procedure ActionInfosExecute(Sender: TObject);
    procedure ActionQuitExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ActionCancelExecute(Sender: TObject);
    procedure ActionCopyExecute(Sender: TObject);
    procedure ActionFontExecute(Sender: TObject);
    procedure ActionSelectAllExecute(Sender: TObject);
    procedure ActionCutExecute(Sender: TObject);
    procedure ActionPasteExecute(Sender: TObject);
    procedure ActionPrintExecute(Sender: TObject);
    procedure EditorChange(Sender: TObject);
    procedure ActionCodeExecute(Sender: TObject);
    procedure EditorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N30Click(Sender: TObject);
    procedure cbInfosChange(Sender: TObject);
    procedure sgCommonClick(Sender: TObject);
    procedure cbASCIICloseUp(Sender: TObject);
    procedure FindDFind(Sender: TObject);
    procedure ActionSearchExecute(Sender: TObject);
    procedure AcceptFiles( var msg : TMessage ); message WM_DROPFILES;

    procedure HighLight;
    function CheckList(InString: string): boolean;
    procedure Ininial_Symboles_Insertion;
    procedure Initial_ASCII;
    procedure Initialisation;
    procedure Enregister_Fichier;
    procedure UpdateCursorPos;
    function Chemin_Application: String;
    procedure SetModified(Value: Boolean);
    procedure Effacer_Tableau;
    procedure Remplir_TableSymboles;
    procedure Remplir_ChaineRefs;
    procedure Remplir_ListeMotsReserves;
    procedure Remplir_ListeOperateurs;
    procedure Remplir_ListeSeparateurs;
    procedure Remplir_ListeIdents;
    procedure Remplir_ListeVars;
    procedure Remplir_ListeFixes;
    procedure Remplir_ListeConsts;
    procedure ActionInitialiseExecute(Sender: TObject);
    procedure ActionDemosExecute(Sender: TObject);
    procedure ActionLexicaleExecute(Sender: TObject);
    procedure ActionSyntaxeExecute(Sender: TObject);
    procedure lb_ErreursClick(Sender: TObject);
    procedure WMCopyData(var msg:TWMCopyData); message WM_COPYDATA;
  end;

var
  KhwMainForm: TKhwMainForm;
  SourceFile : String = 'anonyme.khw';

implementation

uses
  UChaineRefs, UMsgs, UTableTransitions, UTableSybmoles, UAbout, USplash,
  UCompiler, UAnalyseLexical, UAnalyseSyntaxique, UAnalyseSemantique;
  
{$R *.dfm}

// Recuperer le fichier passer en paramËtre du l'autre instance et l'ouvrir
procedure TKhwMainForm.WMCopyData(var msg: TWMCopyData);
begin
  Application.BringToFront;

  if Editor.Modified then
    case MessageDlg('Voulez-vous enregister les modifications ?', mtWarning,
      [mbYes, mbNo, mbCancel], 0) of
      mrYes: ActionSaveAsExecute(nil);
      mrNo: Editor.Clear;
      mrCancel: Exit;
    end;

  // Ouvrir le fichier passer en paramËtre de l'instance qui ‡ ÈtÈ fermÈe
  SourceFile := PChar(msg.CopyDataStruct.lpData);
  Editor.Lines.LoadFromFile(SourceFile);
  HighLight;
  Initialisation;
end;  

// RÈcuperer le chemin de l'application
function TKhwMainForm.Chemin_Application: String;
var
  str: string;
begin                
  str := ExtractFileDir(Application.ExeName);
  if str[length(str)] <> '\' then
    str := str + '\';
  Result := str;
end;

// Mise ‡ jour de la position du curseur
procedure TKhwMainForm.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  with Editor do
    with CharPos do
      begin
        Y := SendMessage(Handle, EM_EXLINEFROMCHAR, 0, SelStart);
        X := (SelStart - SendMessage(Handle, EM_LINEINDEX, Y, 0));
        Inc(Y); Inc(X);
        StatusBar.Panels[0].Text := Format('Ligne: %3d   Col: %3d', [Y, X]);
      end;
end;

// Initialisation de l'application
procedure TKhwMainForm.Initialisation;
begin
  pcInfos.Enabled := False;
  cbInfos.Enabled := False;
  Editor.Modified := False;
  SetModified(False);
  tsEditeur.Caption := ExtractFileName(SourceFile);
  Effacer_Tableau;
  lb_Erreurs.Clear;
  Memo_Execution.Clear;
end;

// Remplir les sÈparateurs et les opÈrateurs
procedure TKhwMainForm.Ininial_Symboles_Insertion;
begin
  with sgCommon do
    begin
      Cells[0,0] := '}';
      Cells[0,1] := '{';
      Cells[0,2] := ')';
      Cells[0,3] := '(';
      Cells[0,4] := '∫';
      Cells[0,5] := '°';
      Cells[0,6] := '.';
      Cells[0,7] := '+';
      Cells[0,8] := '-';
      Cells[0,9] := '*';
      Cells[0,10] := '˜';
      Cells[0,11] := '%';
      Cells[0,12] := '&';
      Cells[0,13] := '|';
      Cells[0,14] := '!';
      Cells[0,15] := '~';
      Cells[0,16] := '#';
      Cells[0,17] := '<';
      Cells[0,18] := '>';
      Cells[0,19] := '´';
      Cells[0,20] := 'ª';
      Cells[0,21] := '/';
      Cells[0,22] := '\';
    end;
end;

// Remplir le table du code ASCII
procedure TKhwMainForm.Initial_ASCII;
var
  i: byte;
begin
  for i:= 32 to 255 do
    cbASCII.items.add(chr(i));
end;

// Indication de la modification du texte dans la bare d'Ètat
procedure TKhwMainForm.SetModified(Value: Boolean);
begin
  if Value then StatusBar.Panels[1].Text := 'Modifier'
  else StatusBar.Panels[1].Text := '';
end;

// RecupÈration et enregistrement du code source dans un fichier
procedure TKhwMainForm.Enregister_Fichier;
var
  str: TStringList;
begin
  str := TStringList.Create;
  str.Text := Editor.Text; //Lexical.getSource;
  str.SaveToFile(SourceFile);
  str.Free;
end;

// Effacer la table d'information
procedure TKhwMainForm.Effacer_Tableau;
var
  i, j : Entier;
begin               
  with Tableau do
    for i:= 0 to ColCount -1 do
      for j:= 1 to RowCount -1 do
        Cells[i,j] := '';
end;

// Remplir la chaÓne de rÈfÈrence
procedure TKhwMainForm.Remplir_ChaineRefs;
var
  i: Entier;
begin
  with Tableau do
    begin
      ColCount := 5;
      Cells[0, 0] := 'N∞';
      Cells[1, 0] := 'Sym';
      Cells[2, 0] := 'Nom';
      Cells[3, 0] := 'Intituler';
      Cells[4, 0] := 'Position';
    end;

  with Chaine_Refs do
  for i:= 1 to getIndex_Ref do
    with Tableau do
      with TableSymbole.Table_symbole[getRef_Index(i)] do
        begin
          Cells[0, i] := IntToStr(i);
          Cells[1, i] := IntToStr(getRef_Index(i));
          Cells[2, i] := Nom;
          Cells[3, i] := Intituler;
          Cells[4, i] := '[' + IntToStr(getRow(i)) + ', ' + IntToStr(getCol(i)) + ']';
        end;
end;

// Remplir la liste d'indentificateurs
procedure TKhwMainForm.Remplir_ListeIdents;
var
  Entre: Entres; i:Entier;
begin
  with Tableau do
    begin
      ColCount := 5;
      Cells[0, 0] := 'N∞';
      Cells[1, 0] := 'Nom';
      Cells[2, 0] := 'Intituler';
      Cells[3, 0] := 'Type';
      Cells[4, 0] := 'UnitÈ';
    end;

  i := 1;
  with TableSymbole do
    for Entre := getIndex_Mots_Predifinis to getIndex do
      with Tableau do
        with Table_symbole[Entre] do
          if Unite in [Identificateur, Variable, Fixe] then
          begin
            Cells[0, i] := inttostr(i);
            Cells[1, i] := Nom;
            Cells[2, i] := Intituler;
            Cells[3, i] := Types[_Type];
            Cells[4, i] := Unites[Unite];
            Inc(i);
          end;
end;

// Remplir la liste des variables
procedure TKhwMainForm.Remplir_ListeVars;
var
  Entre: Entres; i:Entier;
begin
  with Tableau do
    begin
      ColCount := 5;
      Cells[0, 0] := 'N∞';
      Cells[1, 0] := 'Nom';
      Cells[2, 0] := 'Intituler';
      Cells[3, 0] := 'Valeur';
      Cells[4, 0] := 'Type';
    end;

  i := 1;
  with TableSymbole do
    for Entre := getIndex_Mots_Predifinis to getIndex do
      with Tableau do
        with Table_symbole[Entre] do
          if Unite = Variable then
          begin
            Cells[0, i] := inttostr(i);
            Cells[1, i] := Nom;
            Cells[2, i] := Intituler;
            Cells[3, i] := __Valeur;;
            Cells[4, i] := Types[_Type];
            Inc(i);
          end;
end;

// Remplir la liste des fixes
procedure TKhwMainForm.Remplir_ListeFixes;
var
  Entre: Entres; i:Entier;
begin
  with Tableau do
    begin
      ColCount := 5;
      Cells[0, 0] := 'N∞';
      Cells[1, 0] := 'Nom';
      Cells[2, 0] := 'Intituler';
      Cells[3, 0] := 'Valeur';
      Cells[4, 0] := 'Type'
    end;

  i := 1;
  with TableSymbole do
    for Entre := getIndex_Mots_Predifinis to getIndex do
      with Tableau do
        with Table_symbole[Entre] do
          if Unite = Fixe then
          begin
            Cells[0, i] := inttostr(i);
            Cells[1, i] := Nom;
            Cells[2, i] := Intituler;
            Cells[3, i] := __Valeur;
            Cells[4, i] := Types[_Type];
            Inc(i);
          end;
end;

// Remplir la liste des constantes
procedure TKhwMainForm.Remplir_ListeConsts;
var
  Entre: Entres; i:Entier;
begin
  with Tableau do
    begin
      ColCount := 4;
      Cells[0, 0] := 'N∞';
      Cells[1, 0] := 'Nom';
      Cells[2, 0] := 'Intituler';
      Cells[3, 0] := 'Type';
    end;
  i:= 1;
  with TableSymbole do
    for Entre:= getIndex_Mots_Predifinis to getIndex do
      with Tableau do
        with Table_symbole[Entre] do
          if Unite = Constante then
            begin
              Cells[0, i] := Copy(Nom, pos('_', Nom) + 1, Length(Nom));
              Cells[1, i] := Nom;
              Cells[2, i] := __Valeur;
              Cells[3, i] := Types[_Type];
              Inc(i);
            end;
end;

// Remplir la table de symboles
procedure TKhwMainForm.Remplir_TableSymboles;
var
  i: Entres;
begin
  with Tableau do
    begin
      ColCount := 6;
      Cells[0, 0] := 'N∞';
      Cells[1, 0] := 'Nom';
      Cells[2, 0] := 'Intituler';
      Cells[3, 0] := 'Valeur';
      Cells[4, 0] := 'UnitÈ';
      Cells[5, 0] := 'Type';
    end;

  with TableSymbole do
    for i:= 1 to getIndex do
      with Table_symbole[i] do
        with Tableau do
          begin
            Cells[0, i] := IntToStr(i);
            Cells[1, i] := Nom;
            Cells[2, i] := Intituler;
            Cells[3, i] := __Valeur;
            Cells[4, i] := Unites[Unite];
            Cells[5, i] := Types[_Type];
          end;
end;

// Remplir la liste des mots rÈservÈs
procedure TKhwMainForm.Remplir_ListeMotsReserves;
var
  Entre: Entres;
begin
  with Tableau do
    begin
      ColCount := 3;
      Cells[0, 0] := 'N∞';
      Cells[1, 0] := 'Nom';
      Cells[2, 0] := 'Intituler';
    end;

  with TableSymbole do
    for Entre:= 1 to getIndex_Mots_Predifinis do
      with Tableau do
        with Table_symbole[Entre] do
          if Unite = Mot_Reserve then
            begin
              Cells[0, Entre] := IntToStr(Entre);
              Cells[1, Entre] := Nom;
              Cells[2, Entre] := Intituler;
            end;
end;

// Remplir la liste des opÈrateurs
procedure TKhwMainForm.Remplir_ListeOperateurs;
var
  Entre: Entres; i: Entier;
begin
  with Tableau do
    begin
      ColCount := 3;
      Cells[0, 0] := 'N∞';
      Cells[1, 0] := 'Nom';
      Cells[2, 0] := 'Intituler';
    end;

  i := 1;
  with TableSymbole do
    for Entre:= 0 to getIndex_Mots_Predifinis do
      with Tableau do
        with Table_symbole[Entre] do
          if Unite = Operateur then
            begin
              Cells[0, i] := IntToStr(i);
              Cells[1, i] := Nom;
              Cells[2, i] := Intituler;
              Inc(i);
            end;
end;

// Remplir la liste des sÈparateurs
procedure TKhwMainForm.Remplir_ListeSeparateurs;
var
  Entre: Entres; i: Entier;
begin
  with Tableau do
    begin
      ColCount := 3;
      Cells[0, 0] := 'N∞';
      Cells[1, 0] := 'Nom';
      Cells[2, 0] := 'Intituler';
    end;

  i := 1;
  with TableSymbole do
    for Entre:= 0 to getIndex_Mots_Predifinis do
      with Tableau do
        with Table_symbole[Entre] do
          if Unite = Separateur then
            begin
              Cells[0, i] := IntToStr(i);
              Cells[1, i] := Nom;
              Cells[2, i] := Intituler;
              Inc(i);
            end;
end;

// aquisition des fichiers de l'extÈrieur glisser-dÈposer
procedure TKhwMainForm.AcceptFiles(var msg: TMessage);
var
  nCount     : integer;
  FileName : array [0..255] of char;
begin
  // find out how many files we're accepting
  nCount := DragQueryFile( msg.WParam, $FFFFFFFF, FileName, 255);

  // query Windows one at a time for the file name
    DragQueryFile(msg.WParam, nCount-1, FileName, 255);

  if Editor.Modified then
    case MessageDlg('Voulez-vous enregister les modifications ?', mtWarning,
        [mbYes, mbNo, mbCancel], 0) of
      mrYes: ActionSaveAsExecute(nil);
      mrNo: Editor.Clear;
      mrCancel: Exit;
    end;

  SourceFile := FileName;
  Editor.Lines.LoadFromFile(SourceFile);
  HighLight;
  Initialisation;

  DragFinish( msg.WParam );
end;

procedure TKhwMainForm.FormCreate(Sender: TObject);
begin
  // affichage de la Splash Screen
  frmSplash := TfrmSplash.Create(Application);
  try
    frmSplash.ShowModal
  finally
    frmSplash.Free
  end; 

  // Initialisations
  Initial_ASCII;
  Ininial_Symboles_Insertion;

  // s'il existe un fichier comme paramËtre
  if ParamCount > 0 then
  begin
    SourceFile := ParamStr(1);              // RÈcupÈration du nom de fichier
    Editor.Lines.LoadFromFile(SourceFile);  // Ouverture du fichier
    HighLight;                              // Coloration syntaxique
  end;
  Initialisation;

  DragAcceptFiles(Handle, True);
end;

procedure TKhwMainForm.EditorSelectionChange(Sender: TObject);
begin
  // mise ‡ jour de la position du curseur
  UpdateCursorPos;
end;

// Affichage des # infos
procedure TKhwMainForm.pcInfosChange(Sender: TObject);
begin
  cbInfos.ItemIndex := pcInfos.ActivePageIndex;
  Effacer_Tableau;
  case pcInfos.ActivePageIndex of
    0: Remplir_TableSymboles;
    1: Remplir_ChaineRefs;
    2: Remplir_ListeMotsReserves;
    3: Remplir_ListeOperateurs;
    4: Remplir_ListeSeparateurs;
    5: Remplir_ListeIdents;
    6: Remplir_ListeVars;
    7: Remplir_ListeFixes;
    8: Remplir_ListeConsts;
  end;
end;

procedure TKhwMainForm.ActionNewExecute(Sender: TObject);
begin
  if Editor.Modified then
    case MessageDlg('Voulez-vous enregister les modifications ?', mtWarning,
        [mbYes, mbNo, mbCancel], 0) of
      mrYes: ActionSaveAsExecute(nil);
      mrNo: Editor.Clear;
      mrCancel: Exit;
    end
  else
    Editor.Clear;
  SourceFile := 'anonyme.khw';
  Initialisation;
end;

procedure TKhwMainForm.ActionOpenExecute(Sender: TObject);
begin
  if Editor.Modified then
    case MessageDlg('Voulez-vous enregister les modifications ?', mtWarning,
        [mbYes, mbNo, mbCancel], 0) of
      mrYes: ActionSaveAsExecute(nil);
      mrNo: Editor.Clear;
      mrCancel: Exit;
    end;

  if OD.Execute then
    begin
      SourceFile := OD.FileName;
      Editor.Lines.LoadFromFile(OD.FileName);
      HighLight;
      Initialisation;
    end;
end;

procedure TKhwMainForm.ActionSaveExecute(Sender: TObject);
begin
  if FileExists(SourceFile) then
    Enregister_Fichier
  else
    ActionSaveAsExecute(nil)
end;

procedure TKhwMainForm.ActionSaveAsExecute(Sender: TObject);
begin
  SD.FilterIndex := 1;
  SD.FileName := SourceFile;
  if SD.Execute then
    begin
      Enregister_Fichier;
      SourceFile := SD.FileName;
      Initialisation;
    end;
end;

procedure TKhwMainForm.ActionAboutExecute(Sender: TObject);
begin
  frmAbout := TfrmAbout.Create(Application);
  try
    frmAbout.ShowModal
  finally
    frmAbout.Free
  end;
end;

procedure TKhwMainForm.ActionShortCutsExecute(Sender: TObject);
begin
  MessageDlg('Racourcis:' + #13 + #13 +
  'Ouvrir             Ctrl + O' + #13 +
  'Nouveau            Ctrl + N' + #13 +
  'Enrregister        Ctrl + S' + #13 +
  'Impremer           Ctrl + P' + #13 +
  'Quitter            Ctrl + Q' + #13 + #13 +
  'Annuler            Ctrl + Z' + #13 +
  'Couper             Ctrl + X' + #13 +
  'Copier             Ctrl + C' + #13 +
  'Coller             Ctrl + V' + #13 +
  'Selectionner Tout  Ctrl + A' + #13 +
  'Font               Ctrl + T' + #13 +
  'Recherche          Ctrl + F' + #13 + #13 +
  'Complier           F9' + #13 +
  'Informations       F10' + #13 + #13 +
  'A propos de        F1' + #13 +
  'Racourcis          F2' + #13 +
  'PrÈsentation       F3' + #13 +
  'Rapport            F4' + #13 +
  'Code source        F5', mtInformation, [mbOK],0);

end;

procedure TKhwMainForm.ActionPresentExecute(Sender: TObject);
begin
  ShellExecute(Handle, 'open', pchar(Chemin_Application + 'docs\presentation.ppt'),
    nil, nil, sw_show);
end;

procedure TKhwMainForm.ActionRapportExecute(Sender: TObject);
begin
  ShellExecute(Handle, 'open', pchar(Chemin_Application + 'docs\rapport.pdf'),
    nil, nil, sw_show);
end;

procedure TKhwMainForm.ActionSaveMsgExecute(Sender: TObject);
begin
  SD.FilterIndex := 2;
  SD.FileName := 'RÈsultat.txt';
  if SD.Execute then
    Msgs.Enregister_Liste_Messages(SD.FileName);
end;

procedure TKhwMainForm.ActionClearExecute(Sender: TObject);
begin
  Msgs.Initialisation;
  lb_Erreurs.Clear;
  Memo_Execution.Clear;
end;

procedure TKhwMainForm.ActionCompileExecute(Sender: TObject);
begin
  Initialisation;
  Enregister_Fichier;

  Compiler := TCompiler.Create;
  Compiler.Initialisation;
  Compiler.setSource(TrimRight(Editor.Text));
  Compiler.Lancer;
  //Compiler.Terminer;
  if Compiler.Erreurs then
    pcMsg.ActivePageIndex := 1
  else
    pcMsg.ActivePageIndex := 0;

  Remplir_TableSymboles;
  lb_Erreurs.Items.Text := Msgs.get_Msgs_Erreurs;
  Memo_Execution.Lines.Text := Msgs.get_Msgs_Exe;
  pcInfos.Enabled := True;
  cbInfos.Enabled := True;
  ActionInitialise.Enabled := True;
end;

// Renvoi la taille d'un fichier
Function GetFileSize(FileName: String): LongInt;
var
  Search: TSearchRec;
begin
  If FindFirst(ExpandFileName(FileName), faAnyFile, Search) = 0 Then
  Result := Search.Size else result := 0
end;

// Renvoi la derniere date de modification
function LastWritten(FileName: String) : TDateTime;
var
  LTime : TFileTime;
  Systemtime : TSystemtime;
  Search: TSearchRec;
begin
  result := Now;
  If FindFirst(ExpandFileName(FileName), faAnyFile, Search) = 0 Then
    begin
      FileTimeToLocalFileTime(Search.FindData.ftLastWriteTime, LTime);
      FileTimeToSystemTime( LTime, SystemTime );
      result := SystemTimeToDateTime( SystemTime);
    end;
end;

procedure TKhwMainForm.ActionInfosExecute(Sender: TObject);
var
  Infos: String;
begin
  if FileExists(SourceFile) then
      begin
        Infos := 'Programme :   ' + ExtractFileName(SourceFile);
        Infos := Infos + #13 + #13 + 'Taille :  ' + IntToStr(GetFileSize(SourceFile)) + '   octes';
        Infos := Infos + #13 + 'Lignes :  ' + IntToStr(Lexical.getRowCourant) + '   lignes';
        Infos := Infos + #13 + 'Date :  ' + DateTimeToStr(LastWritten(SourceFile));
        Infos := Infos + #13 + #13 + 'Erreurs lexicales :  ' + IntToStr(Lexical.getNbrErreurs);
        Infos := Infos + #13 + 'Erreurs syntaxiques :  ' + IntToStr(Syntaxe.getNbrErreurs);
        Infos := Infos + #13 + 'Erreurs sÈmantiques :  ' + IntToStr(Semantic.getNbrErreurs);
        Infos := Infos + #13 + 'Nombre d''erreurs total :  ' +
          IntToStr(Lexical.getNbrErreurs + Syntaxe.getNbrErreurs + Semantic.getNbrErreurs);
        MessageDlg(Infos , mtInformation, [MbOk], 0);
      end;
end;

procedure TKhwMainForm.ActionQuitExecute(Sender: TObject);
begin
  Close;
end;

procedure TKhwMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Editor.Modified then
    case MessageDlg('Voulez-vous enregister les modifications ?', mtWarning,
        [mbYes, mbNo, mbCancel], 0) of
      mrYes: ActionSaveAsExecute(nil);
      mrNo: Editor.Clear;
      mrCancel: CanClose := False;
    end;
end;

procedure TKhwMainForm.ActionCancelExecute(Sender: TObject);
begin
  with Editor do
    if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure TKhwMainForm.ActionCopyExecute(Sender: TObject);
begin
  Editor.CopyToClipboard;
end;

procedure TKhwMainForm.ActionFontExecute(Sender: TObject);
begin
  if FD.Execute then
    Editor.SelAttributes.Assign(FD.Font);
end;

procedure TKhwMainForm.ActionSelectAllExecute(Sender: TObject);
begin
  Editor.SelectAll;
end;

procedure TKhwMainForm.ActionCutExecute(Sender: TObject);
begin
  Editor.CutToClipboard;
end;

procedure TKhwMainForm.ActionPasteExecute(Sender: TObject);
begin
  Editor.PasteFromClipboard;
  HighLight;
end;

procedure TKhwMainForm.ActionPrintExecute(Sender: TObject);
begin
  if PD.Execute then
    Editor.Print(SourceFile);
end;

procedure TKhwMainForm.EditorChange(Sender: TObject);
begin
  SetModified(Editor.Modified);
end;

procedure TKhwMainForm.ActionCodeExecute(Sender: TObject);
begin
 ShellExecute(Handle, 'open', pchar(Chemin_Application + 'code\'), nil, nil, sw_show);
end;

function TKhwMainForm.CheckList(InString: string): boolean;
const
  TheList: array[1..17] of string = ('»—‰«„Ã', 'À«» ', '„ €Ì—','„‰ÿﬁÌ', '’ÕÌÕ',
    'ÿ»Ì⁄Ì', '”·”·…', '—„“', '»Ì‰„«', 'ﬁ„', '«–«', '›«‰', 'Ê«·«', '‰⁄„', '·«',
    '«ﬁ—«','«ÿ»⁄');
var
  X: Entier;
begin
  Result := false;
  X := 1;
  InString := StringReplace(InString, ' ', '',[rfReplaceAll]);
  InString := StringReplace(InString, #$A, '',[rfReplaceAll]);
  InString := StringReplace(InString, #$D, '',[rfReplaceAll]);
  while X < High(TheList) + 1 do
  if TheList[X] = InString then
    begin
      Result := true;
      X := High(TheList) + 1;
    end
  else
    inc(X);
end;

// Coloration syntaxique
procedure TKhwMainForm.HighLight;
var
  WStart, WEnd, WEnd2: Entier;
begin
  WStart := 0;
  WEnd := 1;
  with Editor do
  begin
    Text := Text + #$A;
    while WEnd > - 1 do
    begin
      WEnd := FindText(' ', WStart, length(Text) - WStart, []);
      WEnd2 := FindText(#$A, WStart, Length(Text) - WStart, []);
      if WEnd2 < WEnd then WEnd := WEnd2;
      begin
        SelStart := WStart;
        SelLength := WEnd - WStart;
        if CheckList(SelText) then
          SelAttributes.Style := [fsBold]
        else
          SelAttributes.Style := [];
        WStart := WEnd + 1;
      end;
    end;
    SelStart := length(Text) - 1;
    SelLength := 1;
    SelText := '';
  end;
end;

procedure TKhwMainForm.EditorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  WEnd, WStart, BCount: Entier;
  Mark: string;
begin
  with Editor do
    begin
      if (Key = VK_Return) or (Key = VK_Back) or (Key = VK_Space) then
      begin
        if SelStart > 1 then
        begin
          WStart := 0;
          WEnd := SelStart;
          BCount := WEnd - 1;
          while BCount <> 0 do
          begin
            Mark := copy(Text, BCount, 1);
            if (Mark = ' ') or (Mark = #$A) then
            begin
              WStart := BCount;
              BCount := 1;
            end;
            dec(BCount);
          end;
          SelStart := WEnd - (WEnd - WStart);
          SelLength := WEnd - WStart;
          if CheckList(SelText) then
            SelAttributes.Style := [fsBold]
          else
            SelAttributes.Style := [];
          SelStart := WEnd;
          SelAttributes.Style := [];
        end;
      end;
    end;
end;

procedure TKhwMainForm.N30Click(Sender: TObject);
begin
  // InsÈrer le texte sÈlectionner ‡ l'Èditeur
  Editor.SetSelTextBuf(Pchar(TMenuItem(Sender as TObject).Caption));
end;

procedure TKhwMainForm.cbInfosChange(Sender: TObject);
begin
  if cbInfos.ItemIndex <> pcInfos.ActivePageIndex then
    begin
      pcInfos.ActivePageIndex := cbInfos.ItemIndex;
      pcInfosChange(nil);
    end;
end;

procedure TKhwMainForm.sgCommonClick(Sender: TObject);
begin
  // InsÈrer le symbole sÈlectionner ‡ l'Èditeur
  with sgCommon do
    Editor.SetSelTextBuf(Pchar(Cells[Col, Row]));
  Editor.SetFocus;
end;

procedure TKhwMainForm.cbASCIICloseUp(Sender: TObject);
begin
  // InsÈrer le caractËre sÈlectionner dans l'Èditeur
  Editor.SetSelTextBuf(Pchar(cbASCII.Items[cbASCII.ItemIndex]));
  Editor.SetFocus;
end;

procedure TKhwMainForm.ActionSearchExecute(Sender: TObject);
begin
  // Mettre le dialogue de la recherche ‡ la position du curseur
  with Editor do
    FindD.Position := Point(Left + Width, Top);
  FindD.Execute;
end;

procedure TKhwMainForm.FindDFind(Sender: TObject);
var
  FoundAt: LongInt;
  StartPos, ToEnd: Entier;
begin
  with Editor do
    begin
      // Texte de dÈbut de la recherche
      if SelLength <> 0 then
        StartPos := SelStart + SelLength
      else
        StartPos := 0;

      // Texte de fin de la recherche
      ToEnd := Length(Text) - StartPos;

      // Trouvrer le mot
      FoundAt := FindText(FindD.FindText, StartPos, ToEnd, [stMatchCase]);

      // SÈlectionner le mot cherchÈ
      if FoundAt <> -1 then
        begin
          SetFocus;
          SelStart := FoundAt;
          SelLength := Length(FindD.FindText);
        end;
    end;
end;

procedure TKhwMainForm.ActionInitialiseExecute(Sender: TObject);
begin
  Lexical.Destroy;
  Syntaxe.Destroy;
  Semantic.Destroy;
  Msgs.Destroy;
  Chaine_Refs.Destroy;
  Table_Trans.Destroy;
  TableSymbole.Destroy;
  Initialisation;
  ActionSyntaxe.Enabled := False;
  ActionInitialise.Enabled := False;
end;

procedure TKhwMainForm.ActionDemosExecute(Sender: TObject);
begin
  ShellExecute(Handle, 'open', pchar(Chemin_Application + 'Exemples\'),
    nil, nil, sw_show);
end;

procedure TKhwMainForm.ActionLexicaleExecute(Sender: TObject);
begin
  Initialisation;
  Enregister_Fichier;

  Compiler := TCompiler.Create;
  Compiler.Initialisation;
  Compiler.setSource(TrimRight(Editor.Text));
  Lexical.Lancer;
  if Compiler.Erreurs then
      pcMsg.ActivePageIndex := 1
  else
    begin
      pcMsg.ActivePageIndex := 0;
      ActionSyntaxe.Enabled := True;
    end;

  Remplir_TableSymboles;
  lb_Erreurs.Items.Text := Msgs.get_Msgs_Erreurs;
  Memo_Execution.Lines.Text := Msgs.get_Msgs_Exe;
  pcInfos.Enabled := True;
  cbInfos.Enabled := True;
  ActionInitialise.Enabled := True;
end;

procedure TKhwMainForm.ActionSyntaxeExecute(Sender: TObject);
begin
  Syntaxe.Lancer;
  if Compiler.Erreurs then
    pcMsg.ActivePageIndex := 1
  else
    pcMsg.ActivePageIndex := 0;

  Remplir_TableSymboles;
  lb_Erreurs.Items.Text := Msgs.get_Msgs_Erreurs;
  Memo_Execution.Lines.Text := Msgs.get_Msgs_Exe;
  pcInfos.Enabled := True;
  ActionInitialise.Enabled := True;  
end;

procedure TKhwMainForm.lb_ErreursClick(Sender: TObject);
var
  index: integer;
  msg: string;

  found, ligne, Col, ligneNbr{, ColNbr}, i: integer;
  StrLigne, StrCol :string;
begin
  index := lb_Erreurs.ItemIndex;
  if index = -1 then Exit;
  msg := lb_Erreurs.Items[index];
  ligne := pos('[Ligne:', msg);
  Col := pos(', Colonne:', msg);
  if ligne = -1 then Exit;
  if Col = -1 then Exit;

  StrLigne := '';
  for i:= ligne + 1 to   Col -1 do
    if (msg[i] in ['0'..'9']) then
      StrLigne := StrLigne + msg[i];
  if length(StrLigne) < 1 then Exit;
  ligneNbr := StrToInt(StrLigne);

    StrCol := '';
  for i:= Col + 1 to length(msg) -1 do
    if (msg[i] in ['0'..'9']) then
      StrCol := StrCol + msg[i];
  if length(StrCol) < 1 then Exit;
 // ColNbr := StrToInt(StrCol);
  Editor.SetFocus;

  with Editor do found := FindText(Lines[ligneNbr-1], 0, Length(Lines.Text), [stMatchCase]);
  with Editor do
    if found <> -1 then
      begin
        SelStart := found;
        SelLength := length(Lines[ligneNbr-1]);
      end;
end;

end.

