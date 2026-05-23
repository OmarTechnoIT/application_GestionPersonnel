unit Unit19;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TForm19 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form19: TForm19;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm19.BitBtn2Click(Sender: TObject);
begin
if Edit1.Text<>'' then
begin
 DataModule2.ADOQuery6.close;
 DataModule2.ADOQuery6.Parameters.ParamByName('Ns').Value:=Edit1.Text;
 DataModule2.ADOQuery6.Active:=true;
end
else
ShowMessage('ادخل رقم الضمان الاجتماعي');
end;

end.
