unit USplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, jpeg, ExtCtrls, StdCtrls;

type
  TfrmSplash = class(TForm)
    Image1: TImage;
    Gauge1: TGauge;
    Timer1: TTimer;
    Label5: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

procedure TfrmSplash.FormActivate(Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
  if Gauge1.Progress = 100 then
    begin
      Timer1.Enabled := false;
      Close;
      Exit;
    end;
  Gauge1.AddProgress(1);
end;

end.
