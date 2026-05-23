unit Unit22;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Mask, Vcl.Buttons, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm22 = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form22: TForm22;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm22.BitBtn1Click(Sender: TObject);
begin
DataModule2.sanction.Append;
end;

procedure TForm22.BitBtn2Click(Sender: TObject);
begin
if (DBEdit1.Text<>'') and (DBEdit2.Text<>'') and (DBEdit3.Text<>'') and (DBMemo1.Text<>'') then
begin
  if not DataModule2.sanction.Locate('num_decis_sanct',DBEdit1.Text, []) then
  begin
    DataModule2.sanction.Insert;
    DataModule2.sanction.Post;
    ShowMessage('تم الحفظ بنجاح');
  end
  else
  ShowMessage('اختر رقم اخر');
end
else
ShowMessage('اكمل المعلومات');
end;

procedure TForm22.BitBtn3Click(Sender: TObject);
begin
if (DBEdit1.Text<>'') and (DBEdit2.Text<>'') and (DBEdit3.Text<>'') and (DBMemo1.Text<>'') then
  begin
    DataModule2.sanction.Edit;
    DataModule2.sanction.Post;
    ShowMessage('تم التغيير  بنجاح');
  end
  else
  ShowMessage('ابحث اولا');
end;




procedure TForm22.BitBtn4Click(Sender: TObject);
begin
if MessageDlg('تأكيد الحذف.',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
DataModule2.sanction.Delete;
end;

procedure TForm22.BitBtn5Click(Sender: TObject);
var rech:string;
begin
rech:=InputBox('Recherche','code_spec ','00');
if not DataModule2.sanction.Locate('num_decis_sanct', rech, []) then
begin
ShowMessage('هذا المقرر غير موجود');
end
else
BitBtn3.Enabled:=true;
end;

end.
