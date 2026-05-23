unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TForm11 = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Image1: TImage;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm11.BitBtn2Click(Sender: TObject);
begin
DataModule2.Decision_retrait.Append;
end;

procedure TForm11.BitBtn3Click(Sender: TObject);
begin
if (DBEdit1.Text<>'') and (DBEdit2.Text<>'') and (DBEdit3.Text<>'') and (DBEdit4.Text<>'') then
begin
  if not DataModule2.Decision_retrait.Locate('num_decis_retr',DBEdit1.Text, []) then
  begin
    DataModule2.Decision_retrait.Insert;
    DataModule2.Decision_retrait.Post;
    ShowMessage('تم الحفظ بنجاح');
  end
  else
  ShowMessage('اختر رقم اخر');
end
else
ShowMessage('اكمل المعلومات');
end;

procedure TForm11.BitBtn4Click(Sender: TObject);
begin
if (DBEdit1.Text<>'') and (DBEdit2.Text<>'') and (DBEdit3.Text<>'') and (DBEdit4.Text<>'') then
begin
  if  DataModule2.Decision_retrait.Locate('num_decis_retr',DBEdit1.Text, []) then
  begin
    DataModule2.Decision_retrait.Edit;
    DataModule2.Decision_retrait.Post;
    ShowMessage(' تم التغير بنجاح ');
  end
  else
  ShowMessage(' غير موجود');
end
else
ShowMessage('اكمل المعلومات');
end;

procedure TForm11.BitBtn5Click(Sender: TObject);
begin

if MessageDlg('تأكيد الحذف.',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
DataModule2.Decision_retrait.Delete;
end;

end.
