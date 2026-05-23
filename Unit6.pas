unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  frxClass, frxDBSet, Vcl.Imaging.pngimage;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DateTimePicker3: TDateTimePicker;
    DBGrid1: TDBGrid;
    Image1: TImage;
    Edit2: TEdit;
    Edit4: TEdit;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    DataSource2: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
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
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
Edit1.Clear;
Edit3.Clear;
Edit2.Clear;
Edit4.Clear;
end;

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
if (Edit1.Text<>'') and (edit2.Text<>'') and (Edit3.Text<>'') then
begin
  if not DataModule2.Decisin_recrutemt.Locate('Num_decis_recrt', Edit1.Text,[]) then
  begin
    DataModule2.Decisin_recrutemt.Insert;
    DataModule2.Decisin_recrutemt.FieldByName('Num_decis_recrt').Value:=Edit1.Text;
    DataModule2.Decisin_recrutemt.FieldByName('Date_decis_recrt').Value:=DateTimePicker1.Date;
    DataModule2.Decisin_recrutemt.FieldByName('NSS').Value:=Edit3.Text;
    DataModule2.Decisin_recrutemt.FieldByName('decesi_ouvert_concou').Value:=Edit2.Text;
    DataModule2.Decisin_recrutemt.FieldByName('date_pv_result_final').Value:=DateTimePicker2.Date;
    DataModule2.Decisin_recrutemt.FieldByName('date_decesi_ouvert').Value:=DateTimePicker3.Date;
    DataModule2.Decisin_recrutemt.FieldByName('pv_result_final').Value:=Edit4.Text;
    DataModule2.Decisin_recrutemt.Post;
  end
  else
  ShowMessage('مقرر موجود');
end
else
ShowMessage('أكمل المعلومات');

end;

procedure TForm6.BitBtn3Click(Sender: TObject);
begin
if MessageDlg('تأكيد الحذف.',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
DataModule2.Decisin_recrutemt.Delete;

end;

procedure TForm6.BitBtn4Click(Sender: TObject);
var rech:string;
begin
rech:=InputBox('Recherche','مقرر التوظيف ','00');
if DataModule2.Decisin_recrutemt.Locate('Num_decis_recrt', rech, []) then
begin
  Edit1.Text:=DataModule2.service.FieldByName('Num_decis_recrt').Value;
  Edit2.Text:=DataModule2.service.FieldByName('decesi_ouvert_concou').Value;
  Edit3.Text:=DataModule2.service.FieldByName('NSS').Value;
  Edit4.Text:=DataModule2.service.FieldByName('pv_result_final').Value;
end
else
ShowMessage(' مقرر غير موجود');
end;

procedure TForm6.BitBtn5Click(Sender: TObject);
begin
if  (Edit3.Text<>'') then
begin
DataModule2.ADOQuery10.close ;
DataModule2.ADOQuery10.Parameters.ParamByName('ns1').Value:=Edit3.Text;
DataModule2.ADOQuery10.active:=true;
frxReport1.ShowReport();
end
else ShowMessage(' ادخل رقم الضمان الاجتماعي  ');
end;
end.
