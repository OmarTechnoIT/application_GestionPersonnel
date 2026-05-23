unit Unit21;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm21 = class(TForm)
    DataSource1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form21: TForm21;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm21.BitBtn2Click(Sender: TObject);
begin
if  (Edit1.Text<>'') then
begin
DataModule2.ADOQuery8.close ;
DataModule2.ADOQuery8.Parameters.ParamByName('ns').Value:=Edit1.Text;
DataModule2.ADOQuery8.active:=true;
frxReport1.ShowReport();
end
else ShowMessage(' ادخل رقم الضمان الاجتماعي  ');
end;
end.
