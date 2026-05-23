unit Unit23;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm23 = class(TForm)
    ProgressBar1: TProgressBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Timer1: TTimer;
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form23: TForm23;

implementation

{$R *.dfm}

uses Unit2, Unit1;

procedure TForm23.BitBtn1Click(Sender: TObject);
begin
if (Edit1.Text='admin') then
begin
   if Edit2.Text='123456' then
  begin
    Timer1.Enabled:=True;
  end
  else
  ShowMessage('الرقم السري خاطئ');
end
else
ShowMessage('اسم المستخدم خاطئ');
  

end;

procedure TForm23.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TForm23.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Position:=ProgressBar1.Position+1;
if ProgressBar1.Position = ProgressBar1.Max then
begin
form1.show;
Timer1.Enabled:= False;
end;

end;

end.
