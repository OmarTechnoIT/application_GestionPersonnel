unit Unit18;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm18 = class(TForm)
    DataSource1: TDataSource;
    Edit1: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm18.BitBtn1Click(Sender: TObject);
begin
if Edit1.Text<>'' then
begin
 DataModule2.ADOQuery5.close;
 DataModule2.ADOQuery5.Parameters.ParamByName('Ns').Value:=Edit1.Text;
 DataModule2.ADOQuery5.Active:=true;
end
else
ShowMessage('ادخل رقم الضمان الاجتماعي');
end;

end.
