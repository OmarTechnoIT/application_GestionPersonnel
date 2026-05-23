unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, frxClass, frxDBSet;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    Image1: TImage;
    frxReport1: TfrxReport;
    DataSource2: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    frxDBDataset1: TfrxDBDataset;
    DataSource3: TDataSource;
    frxReport2: TfrxReport;
    DBGrid1: TDBGrid;
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
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm8.BitBtn1Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
end;

procedure TForm8.BitBtn2Click(Sender: TObject);
begin
if (Edit1.Text<>'')  and (Edit2.Text<>'') and (Edit3.Text<>'')then
begin
  if not DataModule2.Decision_nominat.Locate('Num_decis_nomina', Edit1.Text,[]) then
  begin
    DataModule2.Decision_nominat.Insert;
    DataModule2.Decision_nominat.FieldByName('Num_decis_nomina').Value:=Edit1.Text;
    DataModule2.Decision_nominat.FieldByName('Date_decis_nomina').Value:=DateTimePicker1.Date;
    DataModule2.Decision_nominat.FieldByName('num_pv_nomina').Value:=Edit2.Text;
    DataModule2.Decision_nominat.FieldByName('dat_pv_nomina').Value:=DateTimePicker2.Date;
    DataModule2.Decision_nominat.FieldByName('NSS').Value:=Edit3.Text;
    DataModule2.Decision_nominat.Post;
  end
  else
  ShowMessage('مقرر ترسيم موجود بهذا الرقم');

end
else
ShowMessage('أكمل المعلومات');
end;

procedure TForm8.BitBtn3Click(Sender: TObject);
begin
if MessageDlg('تأكيد الحذف.',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
DataModule2.Decision_nominat.Delete;

end;

procedure TForm8.BitBtn4Click(Sender: TObject);
begin
if  (Edit3.Text<>'') then
  begin
  if DataModule2.employe.Locate('NSS', Edit3.Text,[]) then
    begin
    if (DataModule2.employe.FieldByName('Categorie_post').Value= 'الاعوان الاداريين') then
      begin
      DataModule2.ADOQuery12.close ;
      DataModule2.ADOQuery12.Parameters.ParamByName('ns2').Value:=Edit3.Text;
      DataModule2.ADOQuery12.active:=true;
      frxReport1.ShowReport();
      end
      else
      begin
      DataModule2.ADOQuery13.close ;
      DataModule2.ADOQuery13.Parameters.ParamByName('ns2').Value:=Edit3.Text;
      DataModule2.ADOQuery13.active:=true;
      frxReport2.ShowReport();
      end;
  end
  else
  ShowMessage('موظف غير موجود بهذا الرقم');
end
else ShowMessage(' ادخل رقم الضمان الاجتماعي  ');
end;
end.
