unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm13 = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

uses Unit2, Unit14;

procedure TForm13.BitBtn1Click(Sender: TObject);
begin
DataModule2.Absenter.Append;
end;

procedure TForm13.BitBtn2Click(Sender: TObject);
begin

if not DataModule2.Date_abs.Locate('Date_abs', DBEdit2.Text, [] ) then
begin
DataModule2.Date_abs.Insert;
DataModule2.Date_abs.FieldByName('Date_abs').Value:=DBEdit2.Text;
DataModule2.Date_abs.Post;
end;

if (DBEdit1.Text<>'') and (DBEdit2.Text<>'') and (DBEdit3.Text<>'') and (DBEdit4.Text<>'') and (DBEdit5.Text<>'') and (DBEdit6.Text<>'') then
begin
  if not DataModule2.Absenter.Locate('Nss;Date_abs', VarArrayOf([DBEdit1.Text,DBEdit2.Text]),[lopartialkey]) then
  begin
    DataModule2.Absenter.Insert;
    DataModule2.Absenter.Post;
  end
  else
  ShowMessage('سجل موجود');
end
else
ShowMessage('اكمل المعلومات');
end;
procedure TForm13.BitBtn3Click(Sender: TObject);
begin
if MessageDlg('تأكيد الحذف.',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
DataModule2.Absenter.Delete;
end;

procedure TForm13.BitBtn4Click(Sender: TObject);
begin
form14.show;
end;

end.
