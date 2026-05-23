unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ImgList,
  Vcl.Menus, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.MPlayer,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Employ1: TMenuItem;
    Service1: TMenuItem;
    PVdinstallation1: TMenuItem;
    Decisiondurecrutement1: TMenuItem;
    Affichage1: TMenuItem;
    Recherche1: TMenuItem;
    Imprimer1: TMenuItem;
    Employ2: TMenuItem;
    PVdinstallation2: TMenuItem;
    Decisiondepromotionechlons1: TMenuItem;
    Decisiondepromotion2: TMenuItem;
    Decisiondedmission2: TMenuItem;
    itreCong1: TMenuItem;
    Abscences1: TMenuItem;
    Certeficatdutravail1: TMenuItem;
    ListeEmploys1: TMenuItem;
    ParGrade1: TMenuItem;
    ParService1: TMenuItem;
    Decisiondenomination1: TMenuItem;
    listedabscences1: TMenuItem;
    listedespromotions1: TMenuItem;
    Pargrade2: TMenuItem;
    Parechlons1: TMenuItem;
    N1: TMenuItem;
    Image1: TImage;
    ImageList2: TImageList;
    Timer1: TTimer;
    Label1: TLabel;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    procedure Employ1Click(Sender: TObject);
    procedure Service1Click(Sender: TObject);
    procedure PVdinstallation1Click(Sender: TObject);
    procedure Decisiondurecrutement1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure Decisiondepromotionechlons1Click(Sender: TObject);
    procedure Decisiondenomination1Click(Sender: TObject);
    procedure Decisiondepromotion2Click(Sender: TObject);
    procedure Decisiondedmission2Click(Sender: TObject);
    procedure itreCong1Click(Sender: TObject);
    procedure Abscences1Click(Sender: TObject);
    procedure listedabscences1Click(Sender: TObject);
    procedure ParGrade1Click(Sender: TObject);
    procedure ParService1Click(Sender: TObject);
    procedure PVdinstallation2Click(Sender: TObject);
    procedure Pargrade2Click(Sender: TObject);
    procedure Parechlons1Click(Sender: TObject);
    procedure Certeficatdutravail1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, Unit12, Unit13,
  Unit14, Unit15, Unit16, Unit17, Unit18, Unit19, Unit20, Unit21, Unit22,
  Unit24, Unit25, Unit26, Unit27;

procedure TForm1.Abscences1Click(Sender: TObject);
begin
form13.show;
end;

procedure TForm1.Certeficatdutravail1Click(Sender: TObject);
begin
form21.show;
end;

procedure TForm1.Decisiondedmission2Click(Sender: TObject);
begin
form10.show;
end;

procedure TForm1.Decisiondenomination1Click(Sender: TObject);
begin
form8.show;
end;

procedure TForm1.Decisiondepromotion2Click(Sender: TObject);
begin
form9.show;
end;

procedure TForm1.Decisiondepromotionechlons1Click(Sender: TObject);
begin
Form7.show;
end;

procedure TForm1.Decisiondurecrutement1Click(Sender: TObject);
begin
form6.show;
end;

procedure TForm1.Employ1Click(Sender: TObject);
begin
Form3.show;
end;

procedure TForm1.itreCong1Click(Sender: TObject);
begin
form12.show;
end;

procedure TForm1.listedabscences1Click(Sender: TObject);
begin
form14.show;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
form22.show;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
form25.show;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
form26.show;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
form27.Show;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
form24.show;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
form17.show;
end;

procedure TForm1.Parechlons1Click(Sender: TObject);
begin
form20.show;
end;

procedure TForm1.ParGrade1Click(Sender: TObject);
begin
form15.show;
end;

procedure TForm1.Pargrade2Click(Sender: TObject);
begin
form19.show;
end;

procedure TForm1.ParService1Click(Sender: TObject);
begin
form16.show;
end;

procedure TForm1.PVdinstallation1Click(Sender: TObject);
begin
form5.show;
end;

procedure TForm1.PVdinstallation2Click(Sender: TObject);
begin
form18.show;
end;

procedure TForm1.Service1Click(Sender: TObject);
begin
Form4.show;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Label1.Caption:=DateTimeToStr(now);
end;

procedure TForm1.ToolButton13Click(Sender: TObject);
begin
form6.show;
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
Form4.show;
end;

procedure TForm1.ToolButton5Click(Sender: TObject);
begin
form3.Show;
end;

procedure TForm1.ToolButton9Click(Sender: TObject);
begin
form5.show;
end;

end.
