object Form19: TForm19
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = #1602#1575#1574#1605#1577' '#1575#1604#1578#1585#1602#1610#1575#1578' '#1601#1610' '#1575#1604#1585#1578#1576#1577' '#1604#1604#1605#1608#1592#1601
  ClientHeight = 314
  ClientWidth = 1020
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 634
    Top = 10
    Width = 119
    Height = 19
    Caption = #1585#1602#1605' '#1575#1604#1590#1605#1575#1606' '#1575#1604#1575#1580#1578#1605#1575#1593#1610
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 38
    Width = 1004
    Height = 211
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'employe.grade'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'employe.Num_ident'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Num_decis_grd'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'date_decis_grd'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'num_pv_grd'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'date_pv_grd'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Decision_promot.grade'
        Width = 161
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Decision_promot.Num_ident'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Decision_promot.NSS'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 416
    Top = 255
    Width = 145
    Height = 51
    Caption = '&'#1582#1585#1608#1580
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 464
    Top = 8
    Width = 161
    Height = 27
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 352
    Top = 7
    Width = 106
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
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object DataSource1: TDataSource
    DataSet = DataModule2.ADOQuery6
    Left = 104
    Top = 8
  end
end
