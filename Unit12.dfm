object Form12: TForm12
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = #1578#1587#1580#1610#1604' '#1605#1602#1585#1585#1575#1578' '#1575#1604#1593#1591#1604
  ClientHeight = 450
  ClientWidth = 778
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
    Left = 615
    Top = 17
    Width = 85
    Height = 19
    Caption = #1585#1602#1605' '#1605#1602#1585#1585' '#1575#1604#1593#1591#1604#1577
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 617
    Top = 48
    Width = 69
    Height = 19
    Caption = #1575#1587#1576#1575#1576' '#1575#1604#1593#1591#1604#1577
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 617
    Top = 71
    Width = 71
    Height = 19
    Caption = #1578#1575#1585#1610#1582' '#1575#1604#1582#1585#1608#1580
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 615
    Top = 102
    Width = 82
    Height = 19
    Caption = #1578#1575#1585#1610#1582' '#1575#1604#1575#1587#1578#1574#1606#1575#1601
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 615
    Top = 133
    Width = 103
    Height = 19
    Caption = #1575#1604#1593#1606#1608#1575#1606' '#1575#1579#1606#1575#1569' '#1575#1604#1593#1591#1604#1577
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 613
    Top = 162
    Width = 91
    Height = 19
    Caption = #1578#1575#1585#1610#1582' '#1591#1604#1576' '#1575#1604#1593#1591#1604#1577
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 615
    Top = 188
    Width = 91
    Height = 19
    Caption = #1604#1602#1576' '#1608#1575#1587#1605' '#1575#1604#1605#1603#1604#1601
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 612
    Top = 215
    Width = 123
    Height = 19
    Caption = #1585#1602#1605' '#1575#1604#1590#1605#1575#1606' '#1575#1604#1575#1580#1578#1605#1575#1593#1610' '
    FocusControl = DBEdit8
  end
  object DBEdit1: TDBEdit
    Left = 501
    Top = 12
    Width = 108
    Height = 27
    DataField = 'Num_titre_conge'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 277
    Top = 40
    Width = 332
    Height = 27
    DataField = 'Cause_conge'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 371
    Top = 69
    Width = 238
    Height = 27
    DataField = 'Date_sort'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 371
    Top = 98
    Width = 238
    Height = 27
    DataField = 'Date_entree'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 277
    Top = 128
    Width = 332
    Height = 27
    DataField = 'Adres_pend_conge'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 369
    Top = 157
    Width = 238
    Height = 27
    DataField = 'Date_dem_conge'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 371
    Top = 185
    Width = 236
    Height = 27
    DataField = 'Nom_pren_remplac'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 475
    Top = 215
    Width = 134
    Height = 27
    DataField = 'NSS'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 248
    Width = 762
    Height = 154
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 8
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Num_titre_conge'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Cause_conge'
        Width = 205
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Date_sort'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Date_entree'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Adres_pend_conge'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Date_dem_conge'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Nom_pren_remplac'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NSS'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 328
    Top = 408
    Width = 113
    Height = 34
    Caption = '&'#1582#1585#1608#1580
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 9
  end
  object BitBtn2: TBitBtn
    Left = 48
    Top = 10
    Width = 113
    Height = 38
    Caption = #1580#1583#1610#1583
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
      333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
      0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
      0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
      33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
      B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
      3BB33773333773333773B333333B3333333B7333333733333337}
    NumGlyphs = 2
    TabOrder = 10
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 48
    Top = 49
    Width = 113
    Height = 35
    Caption = #1581#1601#1592
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333FF33333333FF333993333333300033377F3333333777333993333333
      300033F77FFF3333377739999993333333333777777F3333333F399999933333
      33003777777333333377333993333333330033377F3333333377333993333333
      3333333773333333333F333333333333330033333333F33333773333333C3333
      330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
      993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
      333333333337733333FF3333333C333330003333333733333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
    TabOrder = 11
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 48
    Top = 87
    Width = 113
    Height = 34
    Caption = #1578#1594#1610#1610#1585
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
    TabOrder = 12
  end
  object BitBtn5: TBitBtn
    Left = 48
    Top = 122
    Width = 113
    Height = 34
    Caption = #1581#1584#1601
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      300033FFFFFF3333377739999993333333333777777F3333333F399999933333
      3300377777733333337733333333333333003333333333333377333333333333
      3333333333333333333F333333333333330033333F33333333773333C3333333
      330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
      993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
      333333377F33333333FF3333C333333330003333733333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
    TabOrder = 13
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 48
    Top = 160
    Width = 113
    Height = 33
    Caption = #1576#1581#1579
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
    TabOrder = 14
    OnClick = BitBtn6Click
  end
  object DataSource1: TDataSource
    DataSet = DataModule2.Titre_conge
    Left = 216
    Top = 48
  end
end
