unit Unit17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm17 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form17: TForm17;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm17.BitBtn1Click(Sender: TObject);
begin
if Edit1.Text<>'' then
begin
 DataModule2.ADOQuery4.close;
 DataModule2.ADOQuery4.Parameters.ParamByName('Ns').Value:=Edit1.Text;
 DataModule2.ADOQuery4.Active:=true;
end
else
ShowMessage(' ادخل رقم الضمان الاجتماعي');
end;
end.
