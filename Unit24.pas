unit Unit24;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm24 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
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
  Form24: TForm24;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm24.BitBtn2Click(Sender: TObject);
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') then
begin
  DataModule2.ADOQuery11.Close;
  DataModule2.ADOQuery11.Parameters.ParamByName('nomE').Value :=Edit1.Text;
  DataModule2.ADOQuery11.Parameters.ParamByName('prenE').Value :=Edit2.Text;
  DataModule2.ADOQuery11.Active:=True;
end
else
ShowMessage('اسم ولقب الموظف');
end;

end.
