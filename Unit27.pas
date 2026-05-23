unit Unit27;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm27 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form27: TForm27;

implementation

{$R *.dfm}

uses Unit2, Unit8;

procedure TForm27.BitBtn1Click(Sender: TObject);
begin
if  (Edit1.Text<>'') then
  begin
  if DataModule2.employe.Locate('NSS', Edit1.Text,[]) then
    begin
    if (DataModule2.employe.FieldByName('Categorie_post').Value= 'الاعوان الاداريين') then
      begin
      DataModule2.ADOQuery12.close ;
      DataModule2.ADOQuery12.Parameters.ParamByName('ns2').Value:=Edit1.Text;
      DataModule2.ADOQuery12.active:=true;
      form8.frxReport1.ShowReport();
      end
      else
      begin
      DataModule2.ADOQuery13.close ;
      DataModule2.ADOQuery13.Parameters.ParamByName('ns2').Value:=Edit1.Text;
      DataModule2.ADOQuery13.active:=true;
      form8.frxReport2.ShowReport();
      end;
  end
  else
  ShowMessage('موظف غير موجود بهذا الرقم');
end
else ShowMessage(' ادخل رقم الضمان الاجتماعي  ');
end;
end.
