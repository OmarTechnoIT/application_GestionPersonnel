unit Unit16;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.DB, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm16 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    DataSource2: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Image1: TImage;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm16.BitBtn2Click(Sender: TObject);
begin
if DBLookupComboBox1.Text<>'' then
begin
 DataModule2.ADOQuery3.close;
 DataModule2.ADOQuery3.Parameters.ParamByName('Nms').Value:=DBLookupComboBox1.Text;
 DataModule2.ADOQuery3.Active:=true;
end
else
ShowMessage('اختر اسم المصلحة ');
end;
end.
