unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TForm10 = class(TForm)
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
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm10.BitBtn1Click(Sender: TObject);
begin
DataModule2.Decision_demiss.Append;
end;

procedure TForm10.BitBtn2Click(Sender: TObject);
begin
if (DBEdit1.Text<>'') and (DBEdit2.Text<>'') and (DBEdit3.Text<>'') and (DBEdit4.Text<>'') then
begin
  if not DataModule2.Decision_demiss.Locate('Num_decis_demiss', DBEdit1.Text, []) then
  begin
    DataModule2.Decision_demiss.Insert;
    DataModule2.Decision_demiss.Post;
  end
  else
  ShowMessage('اختر رقم مقرر اخر');

end
else
ShowMessage('اكمل المعلومات');

end;
end.
