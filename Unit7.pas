unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Data.DB, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    Edit2: TEdit;
    DateTimePicker2: TDateTimePicker;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Bevel1: TBevel;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm7.BitBtn1Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
end;

procedure TForm7.BitBtn2Click(Sender: TObject);
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') and (Edit3.Text<>'') then
begin
if not DataModule2.Decis_promo_echl.Locate('Num_decis_prom_ech', Edit1.Text,[]) then
begin
  DataModule2.Decis_promo_echl.Insert;
  DataModule2.Decis_promo_echl.FieldByName('Num_decis_prom_ech').Value:=Edit1.Text;
  DataModule2.Decis_promo_echl.FieldByName('date_decis_prom_ech').Value:=DateTimePicker1.date;
  DataModule2.Decis_promo_echl.FieldByName('num_pv_prom').Value:=Edit2.Text;
  DataModule2.Decis_promo_echl.FieldByName('date_pv_prom').Value:=DateTimePicker2.date;
  DataModule2.Decis_promo_echl.FieldByName('NSS').Value:=Edit3.Text;
  DataModule2.Decis_promo_echl.Post;
end
else
ShowMessage('مقرر ترقية موجود بهذا الرقم');
end
else
ShowMessage('أكمل المعلومات');
end;
procedure TForm7.BitBtn3Click(Sender: TObject);
begin
if MessageDlg('تأكيد الحذف.',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
DataModule2.Decis_promo_echl.Delete;

end;

end.
