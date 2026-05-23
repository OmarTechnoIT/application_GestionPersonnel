object Form20: TForm20
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = #1578#1585#1602#1610#1575#1578' '#1575#1604#1605#1608#1592#1601' '#1601#1610' '#1575#1604#1583#1585#1580#1577
  ClientHeight = 220
  ClientWidth = 1020
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 17
  object Label1: TLabel
    Left = 519
    Top = 25
    Width = 112
    Height = 17
    Caption = #1585#1602#1605' '#1575#1604#1590#1605#1575#1606' '#1575#1604#1575#1580#1578#1605#1575#1593#1610
  end
  object Edit1: TEdit
    Left = 392
    Top = 22
    Width = 121
    Height = 25
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 53
    Width = 1004
    Height = 120
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nom'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'prenom'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Grade'
        Width = 180
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Date_install'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Num_ident'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Num_decis_prom_ech'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'date_decis_prom_ech'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'num_pv_prom'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'date_pv_prom'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 256
    Top = 22
    Width = 107
    Height = 25
    Caption = #1593#1585#1590
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
      333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
      C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
      F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
      F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
      00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
      3333333373FF7333333333333000333333333333377733333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 424
    Top = 179
    Width = 121
    Height = 33
    Caption = '&'#1582#1585#1608#1580
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = DataModule2.ADOQuery7
    Left = 176
    Top = 8
  end
end
