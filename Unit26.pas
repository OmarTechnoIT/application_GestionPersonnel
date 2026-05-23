unit Unit26;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm26 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form26: TForm26;

implementation

{$R *.dfm}

uses Unit2, Unit6;

procedure TForm26.BitBtn1Click(Sender: TObject);
begin
if  (Edit1.Text<>'') then
begin
DataModule2.ADOQuery10.close ;
DataModule2.ADOQuery10.Parameters.ParamByName('ns1').Value:=Edit1.Text;
DataModule2.ADOQuery10.active:=true;
form6.frxReport1.ShowReport();
end
else ShowMessage(' ادخل رقم الضمان الاجتماعي  ');
end;

procedure TForm26.BitBtn2Click(Sender: TObject);
begin
close;
end;

end.
