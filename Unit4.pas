unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
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
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') then
begin
  if not DataModule2.service.Locate('nom_service', Edit1.Text,[]) then
  begin
    DataModule2.service.Insert;
    DataModule2.service.FieldByName('nom_service').Value:=Edit1.Text;
    DataModule2.service.FieldByName('Chef_service').Value:=Edit2.Text;
    DataModule2.service.Post;
  end
  else
  ShowMessage('مصلحة موجودة بهذا الاسم');
end
else
ShowMessage('أكمل المعلومات');
end;

procedure TForm4.BitBtn3Click(Sender: TObject);
begin
if MessageDlg('تأكيد الحذف.',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
DataModule2.service.Delete;

end;

procedure TForm4.BitBtn4Click(Sender: TObject);
var rech:string;
begin
rech:=InputBox('Recherche','nom_service ','00');
if DataModule2.service.Locate('nom_service', rech, []) then
begin
  Edit1.Text:=DataModule2.service.FieldByName('nom_service').Value;
  Edit2.Text:=DataModule2.service.FieldByName('Chef_service').Value;
end
else
ShowMessage('مصلحة غير موجودة');
end;

end.
