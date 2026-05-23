unit Unit20;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Data.DB;

type
  TForm20 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form20: TForm20;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm20.BitBtn1Click(Sender: TObject);
begin
if Edit1.Text<>'' then
begin
 DataModule2.ADOQuery7.close;
 DataModule2.ADOQuery7.Parameters.ParamByName('Ns').Value:=Edit1.Text;
 DataModule2.ADOQuery7.Active:=true;
end
else
ShowMessage('ادخل رقم الضمان الاجتماعي');
end;

end.
