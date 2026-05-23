unit Unit25;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm25 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form25: TForm25;

implementation

{$R *.dfm}

uses Unit5, Unit2;

procedure TForm25.BitBtn1Click(Sender: TObject);
begin
if  (Edit1.Text<>'') then
begin
DataModule2.ADOQuery9.close;
DataModule2.ADOQuery9.Parameters.ParamByName('ns').Value:=Edit1.Text;
DataModule2.ADOQuery9.active:=true;
form5.frxReport1.ShowReport();
end
else ShowMessage(' ادخل رقم الضمان الاجتماعي  ');
end;
procedure TForm25.BitBtn2Click(Sender: TObject);
begin
Close;
end;

end.
