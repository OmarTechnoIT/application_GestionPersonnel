unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TForm12 = class(TForm)
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
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm12.BitBtn2Click(Sender: TObject);
begin
DataModule2.Titre_conge.Append;
end;

procedure TForm12.BitBtn3Click(Sender: TObject);
begin
if (DBEdit1.Text<>'' ) and (DBEdit2.Text<>'') and (DBEdit3.Text<>'') and (DBEdit4.Text<>'') and (DBEdit5.Text<>'') and (DBEdit6.Text<>'') and (DBEdit7.Text<>'') and (DBEdit8.Text<>'')then
begin
  if not DataModule2.Titre_conge.Locate('Num_titre_conge', DBEdit1.Text, []) then
  begin
    DataModule2.Titre_conge.Insert;
    DataModule2.Titre_conge.Post;
  end
  else
  ShowMessage('مقرر عطلة موجود بهذا الرقم');
end
else
ShowMessage('أكمل المعلومات');
end;
procedure TForm12.BitBtn5Click(Sender: TObject);
begin
if MessageDlg('تأكيد الحذف.',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
DataModule2.Titre_conge.Delete;
end;

procedure TForm12.BitBtn6Click(Sender: TObject);
var rech:string;
begin
rech:=InputBox('Recherche','numero du titre congé ','00');
if not DataModule2.Titre_conge.Locate('Num_titre_conge', rech, []) then
begin
ShowMessage('مقرر عطلة غير موجود');
end
end;
end.
