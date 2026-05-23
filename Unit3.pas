unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    DateTimePicker1: TDateTimePicker;
    Edit9: TEdit;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    Edit4: TEdit;
    Edit10: TEdit;
    DateTimePicker4: TDateTimePicker;
    Edit11: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DataSource2: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edit6: TEdit;
    Edit8: TEdit;
    Edit12: TEdit;
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
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit5.Clear;
Edit7.Clear;
Edit9.Clear;
Edit4.Clear;
Edit10.Clear;
Edit11.Clear;
end;

procedure TForm3.BitBtn3Click(Sender: TObject);
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') and (Edit3.Text<>'') and (Edit5.Text<>'') and (DBLookupComboBox2.Text<>'') and (Edit7.Text<>'') and (DBLookupComboBox3.Text<>'') and (Edit9.Text<>'') and (Edit4.Text<>'') and (Edit10.Text<>'') and (Edit11.Text<>'') then

begin
  if not DataModule2.employe.Locate('NSS', Edit1.Text, []) then
  begin
    DataModule2.employe.Insert;
    DataModule2.employe.FieldByName('NSS').Value:=Edit1.Text;
    DataModule2.employe.FieldByName('nom').Value:=Edit2.Text;
    DataModule2.employe.FieldByName('prenom').Value:=Edit3.Text;
    DataModule2.employe.FieldByName('date_naiss').Value:=DateTimePicker3.Date;
    DataModule2.employe.FieldByName('Lieu_naiss').Value:=Edit5.Text;
    DataModule2.employe.FieldByName('Grade').Value:=DBLookupComboBox2.Text;
    DataModule2.employe.FieldByName('Type_contrat').Value:=Edit7.Text;
    DataModule2.employe.FieldByName('Date_install').Value:=DateTimePicker1.Date;
    DataModule2.employe.FieldByName('Categorie_post').Value:=DBLookupComboBox3.Text;
    DataModule2.employe.FieldByName('Num_cert_succ').Value:=Edit9.Text;
    DataModule2.employe.FieldByName('Date_cert_succ').Value:=DateTimePicker2.Date;
    DataModule2.employe.FieldByName('Etabliss_cert').Value:=Edit4.Text;
    DataModule2.employe.FieldByName('Num_situat_serv_nati').Value:=Edit10.Text;
    DataModule2.employe.FieldByName('Date_situat_serv_nati').Value:=DateTimePicker4.Date;
    DataModule2.employe.FieldByName('Num_ident').Value:=Edit11.Text;
    DataModule2.employe.FieldByName('nom_service').Value:=DBLookupComboBox1.Text;
    DataModule2.employe.FieldByName('adress_etabliss').Value:=Edit6.Text;
    DataModule2.employe.FieldByName('spcialite').Value:=Edit8.Text;
    DataModule2.employe.FieldByName('class').Value:=Edit12.Text;
    DataModule2.employe.Post;
  end
  else
  ShowMessage('موظف موجود بهذا الرقم');
end
else
ShowMessage('أكمل المعلومات');
end;

procedure TForm3.BitBtn4Click(Sender: TObject);
begin
if MessageDlg('تأكيد الحذف.',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
DataModule2.employe.Delete;

end;

procedure TForm3.BitBtn5Click(Sender: TObject);
var rech:string;
begin
rech:=InputBox('بحث','رقم الضمان الاجتماعي ','00');
if DataModule2.employe.Locate('NSS', rech, []) then
begin
  Edit1.Text:=DataModule2.employe.FieldByName('NSS').Value;
  Edit2.Text:=DataModule2.employe.FieldByName('nom').Value;
  Edit3.Text:=DataModule2.employe.FieldByName('prenom').Value;
  Edit5.Text:=DataModule2.employe.FieldByName('lieu_naiss').Value;
  Edit7.Text:=DataModule2.employe.FieldByName('Type_contrat').Value;
  Edit9.Text:=DataModule2.employe.FieldByName('Num_cert_succ').Value;
  Edit4.Text:=DataModule2.employe.FieldByName('Etabliss_cert').Value;
  Edit10.Text:=DataModule2.employe.FieldByName('Num_situat_serv_nati').Value;
  Edit11.Text:=DataModule2.employe.FieldByName('Num_ident').Value;
  Edit6.Text:=DataModule2.employe.FieldByName('adress_etabliss').Value;
  Edit8.Text:=DataModule2.employe.FieldByName('spcialite').Value;
  Edit12.Text:=DataModule2.employe.FieldByName('class').Value;
end
else
ShowMessage(' موظف غير موجود بهذا الرقم');
end;


end.
