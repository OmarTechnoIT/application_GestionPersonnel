unit Unit15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm15 = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    DataSource2: TDataSource;
    Image1: TImage;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm15.BitBtn2Click(Sender: TObject);
begin
if DBLookupComboBox1.Text<>'' then
begin
 DataModule2.ADOQuery2.close;
 DataModule2.ADOQuery2.Parameters.ParamByName('Gr').Value:=DBLookupComboBox1.Text;
 DataModule2.ADOQuery2.Active:=true;
end
else
ShowMessage('اختر الرتبة ');
end;
end.
