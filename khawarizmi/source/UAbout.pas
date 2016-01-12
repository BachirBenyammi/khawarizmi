unit UAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ShellApi;

type
  TfrmAbout = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Image1: TImage;
    Label5: TLabel;
    Label6: TLabel;
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.dfm}

procedure TfrmAbout.Label2Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', pchar('mailto:' + Label2.Caption), nil, nil, SW_SHOW)
end;

procedure TfrmAbout.Label3Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', pchar('mailto:' + Label2.Caption), nil, nil, SW_SHOW)
end;

end.
