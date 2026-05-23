unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Image1: TImage;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm9.BitBtn2Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
end;

procedure TForm9.BitBtn3Click(Sender: TObject);
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') and (Edit3.Text<>'') and (Edit4.Text<>'') and (Edit5.Text<>'') then
begin
  if not DataModule2.Decision_promot.Locate('Num_decis_grd', Edit1.Text, []) then
  begin
    DataModule2.Decision_promot.Insert;
    DataModule2.Decision_promot.FieldByName('Num_decis_grd').Value:=Edit1.Text;
    DataModule2.Decision_promot.FieldByName('date_decis_grd').Value:=DateTimePicker1.Date;
    DataModule2.Decision_promot.FieldByName('num_pv_grd').Value:=Edit2.Text;
    DataModule2.Decision_promot.FieldByName('date_pv_grd').Value:=DateTimePicker2.Date;
    DataModule2.Decision_promot.FieldByName('grade').Value:=Edit3.Text;
    DataModule2.Decision_promot.FieldByName('Num_ident').Value:=Edit4.Text;
    DataModule2.Decision_promot.FieldByName('NSS').Value:=Edit5.Text;
    DataModule2.Decision_promot.Post;
  end
  else
  ShowMessage('اختر رقم اخر');

end
else ShowMessage('ادخل كل المعلومات');
end;
procedure TForm9.BitBtn4Click(Sender: TObject);
begin
if MessageDlg('تأكيد الحذف.',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
DataModule2.Decision_promot.Delete;

end;

end.
