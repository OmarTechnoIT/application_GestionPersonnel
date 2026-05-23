unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, frxClass, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, frxDBSet;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    DBGrid1: TDBGrid;
    Image1: TImage;
    frxReport1: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    DataSource2: TDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
Edit1.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
end;

procedure TForm5.BitBtn3Click(Sender: TObject);
begin
if (Edit1.Text<>'') and (Edit3.Text<>'') and (Edit4.Text<>'') and (Edit5.Text<>'') and (Edit6.Text<>'') then
begin
  if not DataModule2.pv_install.Locate('Num_pv_install', Edit1.Text,[]) then
  begin
    DataModule2.pv_install.Insert;
    DataModule2.pv_install.FieldByName('Num_pv_install').Value:=Edit1.Text;
    DataModule2.pv_install.FieldByName('Date_pv_install').Value:=DateTimePicker1.date;
    DataModule2.pv_install.FieldByName('Jour_install').Value:=Edit3.Text;
    DataModule2.pv_install.FieldByName('Mois_install').Value:=Edit4.Text;
    DataModule2.pv_install.FieldByName('Annee_install').Value:=Edit5.Text;
    DataModule2.pv_install.FieldByName('NSS').Value:=Edit6.Text;
    DataModule2.pv_install.Post;
  end
  else
  ShowMessage('محضر موجود بهذا الرقم');
end
else
ShowMessage('أكمل المعلومات');
end;

procedure TForm5.BitBtn4Click(Sender: TObject);
begin
if MessageDlg('تأكيد الحذف.',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
DataModule2.pv_install.Delete;
end;

procedure TForm5.BitBtn6Click(Sender: TObject);
begin
if  (Edit6.Text<>'') then
begin
DataModule2.ADOQuery9.close ;
DataModule2.ADOQuery9.Parameters.ParamByName('ns').Value:=Edit6.Text;
DataModule2.ADOQuery9.active:=true;
frxReport1.ShowReport();
end
else ShowMessage(' ادخل رقم الضمان الاجتماعي  ');
end;
end.
