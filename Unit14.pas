unit Unit14;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm14 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
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
  Form14: TForm14;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm14.BitBtn2Click(Sender: TObject);
begin
if Edit1.Text<>'' then
begin
 DataModule2.ADOQuery1.close;
 DataModule2.ADOQuery1.Parameters.ParamByName('NS').Value:=Edit1.Text;
 DataModule2.ADOQuery1.Active:=true;
end
else
ShowMessage(' ادخل رقم الضمان الاجتاعي');
end;

end.
