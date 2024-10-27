unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    PanelDolny: TPanel;
    EditKurs: TEdit;
    EditCena: TEdit;
    ButtonOblicz: TButton;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    LCena: TLabel;
    procedure ButtonObliczClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EditKursKeyPress(Sender: TObject; var Key: Char);
    procedure EditKursChange(Sender: TObject);
    procedure EditCenaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonObliczClick(Sender: TObject);
var
IhaveMoney: Real;
MyMoney: Real;
Suma: Real;
begin
  IhaveMoney := StrToFloat(EditKurs.Text);
  MyMoney  := StrToFloat(EditCena.Text);
  Suma := IhaveMoney * MyMoney;
  LCena.Caption := FloatToStr(Suma) + ' Z³';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
EditKurs.Text := '';
EditCena.Text := '';
end;

procedure TForm1.EditCenaChange(Sender: TObject);
begin
  If (Length(EditKurs.Text) = 0) or  (Length(EditCena.Text) = 0)
    then ButtonOblicz.Enabled := False
  else
   ButtonOblicz.Enabled := True;
end;

procedure TForm1.EditKursChange(Sender: TObject);
begin
  If (Length(EditKurs.Text) = 0) or  (Length(EditCena.Text) = 0)
    then ButtonOblicz.Enabled := False
  else
   ButtonOblicz.Enabled := True;
end;

procedure TForm1.EditKursKeyPress(Sender: TObject; var Key: Char);
begin
  Case Key of
  '0'..'9', #8:;  //Liczby i bakspace
  ','..'.':
  begin
    Key := FormatSettings.DecimalSeparator ;
    if pos(FormatSettings.DecimalSeparator,EditKurs.Text) <>0 then
    Key := #0;
  end;
  #13 : EditCena.SetFocus;
  else Key  := #0;
  End;
end;

end.
