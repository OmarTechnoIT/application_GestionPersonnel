object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 361
  Width = 484
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;User ID=Admin;Data Source=C:\a' +
      'pplication GestionPersonnel CEM\BDGestpersonnel.accdb;Mode=Share' +
      ' Deny None;Persist Security Info=False;Jet OLEDB:System database' +
      '="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Je' +
      't OLEDB:Engine Type=6;Jet OLEDB:Database Locking Mode=1;Jet OLED' +
      'B:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1' +
      ';Jet OLEDB:New Database Password="";Jet OLEDB:Create System Data' +
      'base=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy' +
      ' Locale on Compact=False;Jet OLEDB:Compact Without Replica Repai' +
      'r=False;Jet OLEDB:SFP=False;Jet OLEDB:Support Complex Data=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 104
    Top = 16
  end
  object employe: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'employe'
    Left = 136
    Top = 120
    object employeNSS: TIntegerField
      DisplayWidth = 12
      FieldName = 'NSS'
    end
    object employenom: TWideStringField
      DisplayWidth = 17
      FieldName = 'nom'
      Size = 15
    end
    object employeprenom: TWideStringField
      DisplayWidth = 17
      FieldName = 'prenom'
      Size = 15
    end
    object employeDate_naiss: TDateTimeField
      DisplayWidth = 21
      FieldName = 'Date_naiss'
    end
    object employeLieu_naiss: TWideStringField
      DisplayWidth = 23
      FieldName = 'Lieu_naiss'
      Size = 30
    end
    object employeGrade: TWideStringField
      DisplayWidth = 34
      FieldName = 'Grade'
      Size = 30
    end
    object employeType_contrat: TWideStringField
      DisplayWidth = 34
      FieldName = 'Type_contrat'
      Size = 30
    end
    object employeDate_install: TDateTimeField
      DisplayWidth = 21
      FieldName = 'Date_install'
    end
    object employeCategorie_post: TWideStringField
      DisplayWidth = 46
      FieldName = 'Categorie_post'
      Size = 40
    end
    object employeNum_cert_succ: TWideStringField
      DisplayWidth = 15
      FieldName = 'Num_cert_succ'
      Size = 10
    end
    object employeDate_cert_succ: TDateTimeField
      DisplayWidth = 21
      FieldName = 'Date_cert_succ'
    end
    object employeEtabliss_cert: TWideStringField
      DisplayWidth = 46
      FieldName = 'Etabliss_cert'
      Size = 40
    end
    object employeNum_situat_serv_nati: TWideStringField
      DisplayWidth = 21
      FieldName = 'Num_situat_serv_nati'
      Size = 10
    end
    object employeDate_situat_serv_nati: TDateTimeField
      DisplayWidth = 21
      FieldName = 'Date_situat_serv_nati'
    end
    object employeNum_ident: TIntegerField
      DisplayWidth = 12
      FieldName = 'Num_ident'
    end
    object employenom_service: TWideStringField
      DisplayWidth = 46
      FieldName = 'nom_service'
      Size = 40
    end
    object employeadress_etabliss: TWideStringField
      FieldName = 'adress_etabliss'
      Size = 40
    end
    object employespcialite: TWideStringField
      FieldName = 'spcialite'
      Size = 80
    end
    object employeclass: TIntegerField
      FieldName = 'class'
    end
  end
  object service: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'service'
    Left = 64
    Top = 136
    object servicenom_service: TWideStringField
      FieldName = 'nom_service'
      Size = 40
    end
    object serviceChef_service: TWideStringField
      FieldName = 'Chef_service'
      Size = 30
    end
  end
  object pv_install: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'pv_install'
    Left = 192
    Top = 64
    object pv_installNum_pv_install: TWideStringField
      FieldName = 'Num_pv_install'
      Size = 8
    end
    object pv_installDate_pv_install: TDateTimeField
      FieldName = 'Date_pv_install'
    end
    object pv_installJour_install: TWideStringField
      FieldName = 'Jour_install'
      Size = 10
    end
    object pv_installMois_install: TWideStringField
      FieldName = 'Mois_install'
      Size = 10
    end
    object pv_installAnnee_install: TWideStringField
      FieldName = 'Annee_install'
      Size = 10
    end
    object pv_installNSS: TIntegerField
      FieldName = 'NSS'
    end
  end
  object Decisin_recrutemt: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Decisin_recrutemt'
    Left = 32
    Top = 72
    object Decisin_recrutemtNum_decis_recrt: TWideStringField
      FieldName = 'Num_decis_recrt'
      Size = 8
    end
    object Decisin_recrutemtDate_decis_recrt: TDateTimeField
      FieldName = 'Date_decis_recrt'
    end
    object Decisin_recrutemtdecesi_ouvert_concou: TWideStringField
      FieldName = 'decesi_ouvert_concou'
      Size = 10
    end
    object Decisin_recrutemtdate_decesi_ouvert: TDateTimeField
      FieldName = 'date_decesi_ouvert'
    end
    object Decisin_recrutemtpv_result_final: TWideStringField
      FieldName = 'pv_result_final'
      Size = 10
    end
    object Decisin_recrutemtdate_pv_result_final: TDateTimeField
      FieldName = 'date_pv_result_final'
    end
    object Decisin_recrutemtNSS: TIntegerField
      FieldName = 'NSS'
    end
  end
  object Decis_promo_echl: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Decis_promo_echl'
    Left = 208
    Top = 136
    object Decis_promo_echlNum_decis_prom_ech: TWideStringField
      FieldName = 'Num_decis_prom_ech'
      Size = 8
    end
    object Decis_promo_echldate_decis_prom_ech: TDateTimeField
      FieldName = 'date_decis_prom_ech'
    end
    object Decis_promo_echlnum_pv_prom: TWideStringField
      FieldName = 'num_pv_prom'
      Size = 8
    end
    object Decis_promo_echldate_pv_prom: TDateTimeField
      FieldName = 'date_pv_prom'
    end
    object Decis_promo_echlNSS: TIntegerField
      FieldName = 'NSS'
    end
  end
  object Decision_nominat: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Decision_nominat'
    Left = 208
    Top = 8
    object Decision_nominatNum_decis_nomina: TWideStringField
      FieldName = 'Num_decis_nomina'
      Size = 8
    end
    object Decision_nominatDate_decis_nomina: TDateTimeField
      FieldName = 'Date_decis_nomina'
    end
    object Decision_nominatnum_pv_nomina: TWideStringField
      FieldName = 'num_pv_nomina'
      Size = 8
    end
    object Decision_nominatdat_pv_nomina: TDateTimeField
      FieldName = 'dat_pv_nomina'
    end
    object Decision_nominatNSS: TIntegerField
      FieldName = 'NSS'
    end
    object Decision_nominatnum_pv_comp: TWideStringField
      FieldName = 'num_pv_comp'
      Size = 8
    end
    object Decision_nominatdate_pv_comp: TDateTimeField
      FieldName = 'date_pv_comp'
    end
  end
  object Decision_promot: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Decision_promot'
    Left = 288
    Top = 120
    object Decision_promotNum_decis_grd: TWideStringField
      FieldName = 'Num_decis_grd'
      Size = 8
    end
    object Decision_promotdate_decis_grd: TDateTimeField
      FieldName = 'date_decis_grd'
    end
    object Decision_promotnum_pv_grd: TWideStringField
      FieldName = 'num_pv_grd'
      Size = 8
    end
    object Decision_promotdate_pv_grd: TDateTimeField
      FieldName = 'date_pv_grd'
    end
    object Decision_promotgrade: TWideStringField
      FieldName = 'grade'
      Size = 30
    end
    object Decision_promotNum_ident: TIntegerField
      FieldName = 'Num_ident'
    end
    object Decision_promotNSS: TIntegerField
      FieldName = 'NSS'
    end
  end
  object Decision_demiss: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Decision_demiss'
    Left = 152
    Top = 200
    object Decision_demissNum_decis_demiss: TWideStringField
      FieldName = 'Num_decis_demiss'
      Size = 8
    end
    object Decision_demissdate_decis_demiss: TDateTimeField
      FieldName = 'date_decis_demiss'
    end
    object Decision_demissDat_demiss: TDateTimeField
      FieldName = 'Dat_demiss'
    end
    object Decision_demissNSS: TIntegerField
      FieldName = 'NSS'
    end
  end
  object Decision_retrait: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Decision_retrait'
    Left = 72
    Top = 192
    object Decision_retraitnum_decis_retr: TWideStringField
      FieldName = 'num_decis_retr'
      Size = 8
    end
    object Decision_retraitDate_decis_retr: TDateTimeField
      FieldName = 'Date_decis_retr'
    end
    object Decision_retraitNum_visa_cnr: TIntegerField
      FieldName = 'Num_visa_cnr'
    end
    object Decision_retraitNSS: TIntegerField
      FieldName = 'NSS'
    end
  end
  object Titre_conge: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Titre_conge'
    Left = 256
    Top = 200
    object Titre_congeNum_titre_conge: TWideStringField
      FieldName = 'Num_titre_conge'
      Size = 8
    end
    object Titre_congeCause_conge: TWideStringField
      FieldName = 'Cause_conge'
      Size = 50
    end
    object Titre_congeDate_sort: TDateTimeField
      FieldName = 'Date_sort'
    end
    object Titre_congeDate_entree: TDateTimeField
      FieldName = 'Date_entree'
    end
    object Titre_congeAdres_pend_conge: TWideStringField
      FieldName = 'Adres_pend_conge'
      Size = 30
    end
    object Titre_congeDate_dem_conge: TDateTimeField
      FieldName = 'Date_dem_conge'
    end
    object Titre_congeNom_pren_remplac: TWideStringField
      FieldName = 'Nom_pren_remplac'
      Size = 30
    end
    object Titre_congeNSS: TIntegerField
      FieldName = 'NSS'
    end
  end
  object Absenter: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Absenter'
    Left = 320
    Top = 192
    object AbsenterNss: TIntegerField
      FieldName = 'Nss'
    end
    object AbsenterDate_abs: TDateTimeField
      FieldName = 'Date_abs'
    end
    object AbsenterMois_abs: TWideStringField
      FieldName = 'Mois_abs'
      Size = 10
    end
    object AbsenterH_entr: TWideStringField
      FieldName = 'H_entr'
      Size = 10
    end
    object AbsenterH_sort: TWideStringField
      FieldName = 'H_sort'
      Size = 10
    end
    object AbsenterAnnee_abs: TIntegerField
      FieldName = 'Annee_abs'
    end
  end
  object Date_abs: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Date_abs'
    Left = 368
    Top = 144
    object Date_absDate_abs: TDateTimeField
      FieldName = 'Date_abs'
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NS'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select*'
      'from absenter'
      'where Nss =:NS')
    Left = 320
    Top = 48
    object ADOQuery1Nss: TIntegerField
      FieldName = 'Nss'
    end
    object ADOQuery1Date_abs: TDateTimeField
      FieldName = 'Date_abs'
    end
    object ADOQuery1Mois_abs: TWideStringField
      FieldName = 'Mois_abs'
      Size = 10
    end
    object ADOQuery1H_entr: TWideStringField
      FieldName = 'H_entr'
      Size = 10
    end
    object ADOQuery1H_sort: TWideStringField
      FieldName = 'H_sort'
      Size = 10
    end
    object ADOQuery1Annee_abs: TIntegerField
      FieldName = 'Annee_abs'
    end
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Gr'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select*'
      'from employe'
      'where Grade =:Gr')
    Left = 392
    Top = 72
    object ADOQuery2NSS: TIntegerField
      FieldName = 'NSS'
    end
    object ADOQuery2nom: TWideStringField
      FieldName = 'nom'
      Size = 15
    end
    object ADOQuery2prenom: TWideStringField
      FieldName = 'prenom'
      Size = 15
    end
    object ADOQuery2Date_naiss: TDateTimeField
      FieldName = 'Date_naiss'
    end
    object ADOQuery2Lieu_naiss: TWideStringField
      FieldName = 'Lieu_naiss'
      Size = 30
    end
    object ADOQuery2Grade: TWideStringField
      FieldName = 'Grade'
      Size = 30
    end
    object ADOQuery2Type_contrat: TWideStringField
      FieldName = 'Type_contrat'
      Size = 30
    end
    object ADOQuery2Date_install: TDateTimeField
      FieldName = 'Date_install'
    end
    object ADOQuery2Categorie_post: TWideStringField
      FieldName = 'Categorie_post'
      Size = 40
    end
    object ADOQuery2Num_cert_succ: TWideStringField
      FieldName = 'Num_cert_succ'
      Size = 10
    end
    object ADOQuery2Date_cert_succ: TDateTimeField
      FieldName = 'Date_cert_succ'
    end
    object ADOQuery2Etabliss_cert: TWideStringField
      FieldName = 'Etabliss_cert'
      Size = 40
    end
    object ADOQuery2Num_situat_serv_nati: TWideStringField
      FieldName = 'Num_situat_serv_nati'
      Size = 10
    end
    object ADOQuery2Date_situat_serv_nati: TDateTimeField
      FieldName = 'Date_situat_serv_nati'
    end
    object ADOQuery2Num_ident: TIntegerField
      FieldName = 'Num_ident'
    end
    object ADOQuery2nom_service: TWideStringField
      FieldName = 'nom_service'
      Size = 40
    end
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Nms'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select*'
      'from employe'
      'where nom_service =:Nms')
    Left = 392
    Top = 24
  end
  object ADOQuery4: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Ns'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select*'
      'from employe'
      'where Nss =:Ns')
    Left = 280
  end
  object ADOQuery5: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Ns'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select*'
      'from employe, pv_install'
      'where  (employe.nss = pv_install.nss) and (employe.nss =:Ns)'
      '')
    Left = 368
    Top = 240
    object ADOQuery5employeNSS: TIntegerField
      FieldName = 'employe.NSS'
    end
    object ADOQuery5nom: TWideStringField
      FieldName = 'nom'
      Size = 15
    end
    object ADOQuery5prenom: TWideStringField
      FieldName = 'prenom'
      Size = 15
    end
    object ADOQuery5Date_naiss: TDateTimeField
      FieldName = 'Date_naiss'
    end
    object ADOQuery5Lieu_naiss: TWideStringField
      FieldName = 'Lieu_naiss'
      Size = 30
    end
    object ADOQuery5Grade: TWideStringField
      FieldName = 'Grade'
      Size = 30
    end
    object ADOQuery5Type_contrat: TWideStringField
      FieldName = 'Type_contrat'
      Size = 30
    end
    object ADOQuery5Date_install: TDateTimeField
      FieldName = 'Date_install'
    end
    object ADOQuery5Categorie_post: TWideStringField
      FieldName = 'Categorie_post'
      Size = 40
    end
    object ADOQuery5Num_cert_succ: TWideStringField
      FieldName = 'Num_cert_succ'
      Size = 10
    end
    object ADOQuery5Date_cert_succ: TDateTimeField
      FieldName = 'Date_cert_succ'
    end
    object ADOQuery5Etabliss_cert: TWideStringField
      FieldName = 'Etabliss_cert'
      Size = 40
    end
    object ADOQuery5Num_situat_serv_nati: TWideStringField
      FieldName = 'Num_situat_serv_nati'
      Size = 10
    end
    object ADOQuery5Date_situat_serv_nati: TDateTimeField
      FieldName = 'Date_situat_serv_nati'
    end
    object ADOQuery5Num_ident: TIntegerField
      FieldName = 'Num_ident'
    end
    object ADOQuery5nom_service: TWideStringField
      FieldName = 'nom_service'
      Size = 40
    end
    object ADOQuery5Num_pv_install: TWideStringField
      FieldName = 'Num_pv_install'
      Size = 8
    end
    object ADOQuery5Date_pv_install: TDateTimeField
      FieldName = 'Date_pv_install'
    end
    object ADOQuery5Jour_install: TWideStringField
      FieldName = 'Jour_install'
    end
    object ADOQuery5Mois_install: TWideStringField
      FieldName = 'Mois_install'
    end
    object ADOQuery5Annee_install: TWideStringField
      FieldName = 'Annee_install'
    end
    object ADOQuery5pv_installNSS: TIntegerField
      FieldName = 'pv_install.NSS'
    end
  end
  object ADOQuery6: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Ns'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select*'
      'from employe, Decision_promot '
      
        'where  (employe.nss = Decision_promot.nss) and (employe.nss =:Ns' +
        ')'
      '')
    Left = 248
    Top = 256
    object ADOQuery6employeNSS: TIntegerField
      FieldName = 'employe.NSS'
    end
    object ADOQuery6nom: TWideStringField
      FieldName = 'nom'
      Size = 15
    end
    object ADOQuery6prenom: TWideStringField
      FieldName = 'prenom'
      Size = 15
    end
    object ADOQuery6Date_naiss: TDateTimeField
      FieldName = 'Date_naiss'
    end
    object ADOQuery6Lieu_naiss: TWideStringField
      FieldName = 'Lieu_naiss'
      Size = 30
    end
    object ADOQuery6employegrade: TWideStringField
      FieldName = 'employe.grade'
      Size = 30
    end
    object ADOQuery6Type_contrat: TWideStringField
      FieldName = 'Type_contrat'
      Size = 30
    end
    object ADOQuery6Date_install: TDateTimeField
      FieldName = 'Date_install'
    end
    object ADOQuery6Categorie_post: TWideStringField
      FieldName = 'Categorie_post'
      Size = 40
    end
    object ADOQuery6Num_cert_succ: TWideStringField
      FieldName = 'Num_cert_succ'
      Size = 10
    end
    object ADOQuery6Date_cert_succ: TDateTimeField
      FieldName = 'Date_cert_succ'
    end
    object ADOQuery6Etabliss_cert: TWideStringField
      FieldName = 'Etabliss_cert'
      Size = 40
    end
    object ADOQuery6Num_situat_serv_nati: TWideStringField
      FieldName = 'Num_situat_serv_nati'
      Size = 10
    end
    object ADOQuery6Date_situat_serv_nati: TDateTimeField
      FieldName = 'Date_situat_serv_nati'
    end
    object ADOQuery6employeNum_ident: TIntegerField
      FieldName = 'employe.Num_ident'
    end
    object ADOQuery6nom_service: TWideStringField
      FieldName = 'nom_service'
      Size = 40
    end
    object ADOQuery6Num_decis_grd: TWideStringField
      FieldName = 'Num_decis_grd'
      Size = 8
    end
    object ADOQuery6date_decis_grd: TDateTimeField
      FieldName = 'date_decis_grd'
    end
    object ADOQuery6num_pv_grd: TWideStringField
      FieldName = 'num_pv_grd'
      Size = 8
    end
    object ADOQuery6date_pv_grd: TDateTimeField
      FieldName = 'date_pv_grd'
    end
    object ADOQuery6Decision_promotgrade: TWideStringField
      FieldName = 'Decision_promot.grade'
      Size = 30
    end
    object ADOQuery6Decision_promotNum_ident: TIntegerField
      FieldName = 'Decision_promot.Num_ident'
    end
    object ADOQuery6Decision_promotNSS: TIntegerField
      FieldName = 'Decision_promot.NSS'
    end
  end
  object ADOQuery7: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Ns'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select*'
      'from employe, Decis_promo_echl '
      
        'where  (employe.nss = Decis_promo_echl.nss) and (employe.nss =:N' +
        's)'
      '')
    Left = 120
    Top = 256
    object ADOQuery7employeNSS: TIntegerField
      FieldName = 'employe.NSS'
    end
    object ADOQuery7nom: TWideStringField
      FieldName = 'nom'
      Size = 15
    end
    object ADOQuery7prenom: TWideStringField
      FieldName = 'prenom'
      Size = 15
    end
    object ADOQuery7Date_naiss: TDateTimeField
      FieldName = 'Date_naiss'
    end
    object ADOQuery7Lieu_naiss: TWideStringField
      FieldName = 'Lieu_naiss'
      Size = 30
    end
    object ADOQuery7Grade: TWideStringField
      FieldName = 'Grade'
      Size = 30
    end
    object ADOQuery7Type_contrat: TWideStringField
      FieldName = 'Type_contrat'
      Size = 30
    end
    object ADOQuery7Date_install: TDateTimeField
      FieldName = 'Date_install'
    end
    object ADOQuery7Categorie_post: TWideStringField
      FieldName = 'Categorie_post'
      Size = 40
    end
    object ADOQuery7Num_cert_succ: TWideStringField
      FieldName = 'Num_cert_succ'
      Size = 10
    end
    object ADOQuery7Date_cert_succ: TDateTimeField
      FieldName = 'Date_cert_succ'
    end
    object ADOQuery7Etabliss_cert: TWideStringField
      FieldName = 'Etabliss_cert'
      Size = 40
    end
    object ADOQuery7Num_situat_serv_nati: TWideStringField
      FieldName = 'Num_situat_serv_nati'
      Size = 10
    end
    object ADOQuery7Date_situat_serv_nati: TDateTimeField
      FieldName = 'Date_situat_serv_nati'
    end
    object ADOQuery7Num_ident: TIntegerField
      FieldName = 'Num_ident'
    end
    object ADOQuery7nom_service: TWideStringField
      FieldName = 'nom_service'
      Size = 40
    end
    object ADOQuery7Num_decis_prom_ech: TWideStringField
      FieldName = 'Num_decis_prom_ech'
      Size = 8
    end
    object ADOQuery7date_decis_prom_ech: TDateTimeField
      FieldName = 'date_decis_prom_ech'
    end
    object ADOQuery7num_pv_prom: TWideStringField
      FieldName = 'num_pv_prom'
      Size = 8
    end
    object ADOQuery7date_pv_prom: TDateTimeField
      FieldName = 'date_pv_prom'
    end
    object ADOQuery7Decis_promo_echlNSS: TIntegerField
      FieldName = 'Decis_promo_echl.NSS'
    end
  end
  object ADOQuery8: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ns'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select*'
      'from employe'
      'where nss =:ns')
    Left = 48
    Top = 248
    object ADOQuery8NSS: TIntegerField
      FieldName = 'NSS'
    end
    object ADOQuery8nom: TWideStringField
      FieldName = 'nom'
      Size = 15
    end
    object ADOQuery8prenom: TWideStringField
      FieldName = 'prenom'
      Size = 15
    end
    object ADOQuery8Date_naiss: TDateTimeField
      FieldName = 'Date_naiss'
    end
    object ADOQuery8Lieu_naiss: TWideStringField
      FieldName = 'Lieu_naiss'
      Size = 30
    end
    object ADOQuery8Grade: TWideStringField
      FieldName = 'Grade'
      Size = 30
    end
    object ADOQuery8Type_contrat: TWideStringField
      FieldName = 'Type_contrat'
      Size = 30
    end
    object ADOQuery8Date_install: TDateTimeField
      FieldName = 'Date_install'
    end
    object ADOQuery8Categorie_post: TWideStringField
      FieldName = 'Categorie_post'
      Size = 40
    end
    object ADOQuery8Num_cert_succ: TWideStringField
      FieldName = 'Num_cert_succ'
      Size = 10
    end
    object ADOQuery8Date_cert_succ: TDateTimeField
      FieldName = 'Date_cert_succ'
    end
    object ADOQuery8Etabliss_cert: TWideStringField
      FieldName = 'Etabliss_cert'
      Size = 40
    end
    object ADOQuery8Num_situat_serv_nati: TWideStringField
      FieldName = 'Num_situat_serv_nati'
      Size = 10
    end
    object ADOQuery8Date_situat_serv_nati: TDateTimeField
      FieldName = 'Date_situat_serv_nati'
    end
    object ADOQuery8Num_ident: TIntegerField
      FieldName = 'Num_ident'
    end
    object ADOQuery8nom_service: TWideStringField
      FieldName = 'nom_service'
      Size = 40
    end
  end
  object sanction: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'sanction'
    Left = 120
    Top = 64
    object sanctionnum_decis_sanct: TWideStringField
      FieldName = 'num_decis_sanct'
      Size = 10
    end
    object sanctiondate_sanct: TDateTimeField
      FieldName = 'date_sanct'
    end
    object sanctioncause_sanct: TWideMemoField
      FieldName = 'cause_sanct'
      BlobType = ftWideMemo
    end
    object sanctionNSS: TIntegerField
      FieldName = 'NSS'
    end
  end
  object CategoriePoste: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'CategoriePoste'
    Left = 16
    Top = 160
    object CategoriePosteCategorie_post: TWideStringField
      FieldName = 'Categorie_post'
      Size = 40
    end
  end
  object GradeP: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'GradeP'
    Left = 40
    Top = 24
    object GradePGrade: TWideStringField
      FieldName = 'Grade'
      Size = 60
    end
  end
  object ADOQuery9: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NS'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select*'
      'from employe, pv_install'
      'where (employe.NSS = pv_install.NSS)  and (pv_install.NSS=:NS)')
    Left = 416
    Top = 184
    object ADOQuery9employeNSS: TIntegerField
      FieldName = 'employe.NSS'
    end
    object ADOQuery9nom: TWideStringField
      FieldName = 'nom'
      Size = 15
    end
    object ADOQuery9prenom: TWideStringField
      FieldName = 'prenom'
      Size = 15
    end
    object ADOQuery9Date_naiss: TDateTimeField
      FieldName = 'Date_naiss'
    end
    object ADOQuery9Lieu_naiss: TWideStringField
      FieldName = 'Lieu_naiss'
      Size = 30
    end
    object ADOQuery9Grade: TWideStringField
      FieldName = 'Grade'
      Size = 60
    end
    object ADOQuery9Type_contrat: TWideStringField
      FieldName = 'Type_contrat'
      Size = 30
    end
    object ADOQuery9Date_install: TDateTimeField
      FieldName = 'Date_install'
    end
    object ADOQuery9Categorie_post: TWideStringField
      FieldName = 'Categorie_post'
      Size = 40
    end
    object ADOQuery9Num_cert_succ: TWideStringField
      FieldName = 'Num_cert_succ'
      Size = 10
    end
    object ADOQuery9Date_cert_succ: TDateTimeField
      FieldName = 'Date_cert_succ'
    end
    object ADOQuery9Etabliss_cert: TWideStringField
      FieldName = 'Etabliss_cert'
      Size = 40
    end
    object ADOQuery9Num_situat_serv_nati: TWideStringField
      FieldName = 'Num_situat_serv_nati'
      Size = 10
    end
    object ADOQuery9Date_situat_serv_nati: TDateTimeField
      FieldName = 'Date_situat_serv_nati'
    end
    object ADOQuery9Num_ident: TIntegerField
      FieldName = 'Num_ident'
    end
    object ADOQuery9nom_service: TWideStringField
      FieldName = 'nom_service'
      Size = 40
    end
    object ADOQuery9adress_etabliss: TWideStringField
      FieldName = 'adress_etabliss'
      Size = 40
    end
    object ADOQuery9spcialite: TWideStringField
      FieldName = 'spcialite'
      Size = 80
    end
    object ADOQuery9class: TIntegerField
      FieldName = 'class'
    end
    object ADOQuery9Num_pv_install: TWideStringField
      FieldName = 'Num_pv_install'
      Size = 8
    end
    object ADOQuery9Date_pv_install: TDateTimeField
      FieldName = 'Date_pv_install'
    end
    object ADOQuery9Jour_install: TWideStringField
      FieldName = 'Jour_install'
    end
    object ADOQuery9Mois_install: TWideStringField
      FieldName = 'Mois_install'
    end
    object ADOQuery9Annee_install: TWideStringField
      FieldName = 'Annee_install'
    end
    object ADOQuery9pv_installNSS: TIntegerField
      FieldName = 'pv_install.NSS'
    end
  end
  object ADOQuery10: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ns1'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select*'
      'from employe, Decisin_recrutemt, pv_install'
      
        'where (employe.NSS = Decisin_recrutemt.NSS) and  (employe.NSS = ' +
        'pv_install.NSS) and (Decisin_recrutemt.NSS =:ns1)')
    Left = 432
    Top = 240
    object ADOQuery10employeNSS: TIntegerField
      FieldName = 'employe.NSS'
    end
    object ADOQuery10nom: TWideStringField
      FieldName = 'nom'
      Size = 15
    end
    object ADOQuery10prenom: TWideStringField
      FieldName = 'prenom'
      Size = 15
    end
    object ADOQuery10Date_naiss: TDateTimeField
      FieldName = 'Date_naiss'
    end
    object ADOQuery10Lieu_naiss: TWideStringField
      FieldName = 'Lieu_naiss'
      Size = 30
    end
    object ADOQuery10Grade: TWideStringField
      FieldName = 'Grade'
      Size = 60
    end
    object ADOQuery10Type_contrat: TWideStringField
      FieldName = 'Type_contrat'
      Size = 30
    end
    object ADOQuery10Date_install: TDateTimeField
      FieldName = 'Date_install'
    end
    object ADOQuery10Categorie_post: TWideStringField
      FieldName = 'Categorie_post'
      Size = 40
    end
    object ADOQuery10Num_cert_succ: TWideStringField
      FieldName = 'Num_cert_succ'
      Size = 10
    end
    object ADOQuery10Date_cert_succ: TDateTimeField
      FieldName = 'Date_cert_succ'
    end
    object ADOQuery10Etabliss_cert: TWideStringField
      FieldName = 'Etabliss_cert'
      Size = 40
    end
    object ADOQuery10Num_situat_serv_nati: TWideStringField
      FieldName = 'Num_situat_serv_nati'
      Size = 10
    end
    object ADOQuery10Date_situat_serv_nati: TDateTimeField
      FieldName = 'Date_situat_serv_nati'
    end
    object ADOQuery10Num_ident: TIntegerField
      FieldName = 'Num_ident'
    end
    object ADOQuery10nom_service: TWideStringField
      FieldName = 'nom_service'
      Size = 40
    end
    object ADOQuery10adress_etabliss: TWideStringField
      FieldName = 'adress_etabliss'
      Size = 40
    end
    object ADOQuery10spcialite: TWideStringField
      FieldName = 'spcialite'
      Size = 80
    end
    object ADOQuery10class: TIntegerField
      FieldName = 'class'
    end
    object ADOQuery10Num_decis_recrt: TWideStringField
      FieldName = 'Num_decis_recrt'
      Size = 8
    end
    object ADOQuery10Date_decis_recrt: TDateTimeField
      FieldName = 'Date_decis_recrt'
    end
    object ADOQuery10decesi_ouvert_concou: TWideStringField
      FieldName = 'decesi_ouvert_concou'
      Size = 10
    end
    object ADOQuery10date_decesi_ouvert: TDateTimeField
      FieldName = 'date_decesi_ouvert'
    end
    object ADOQuery10pv_result_final: TWideStringField
      FieldName = 'pv_result_final'
      Size = 10
    end
    object ADOQuery10date_pv_result_final: TDateTimeField
      FieldName = 'date_pv_result_final'
    end
    object ADOQuery10Decisin_recrutemtNSS: TIntegerField
      FieldName = 'Decisin_recrutemt.NSS'
    end
    object ADOQuery10Num_pv_install: TWideStringField
      FieldName = 'Num_pv_install'
      Size = 8
    end
    object ADOQuery10Date_pv_install: TDateTimeField
      FieldName = 'Date_pv_install'
    end
    object ADOQuery10Jour_install: TWideStringField
      FieldName = 'Jour_install'
    end
    object ADOQuery10Mois_install: TWideStringField
      FieldName = 'Mois_install'
    end
    object ADOQuery10Annee_install: TWideStringField
      FieldName = 'Annee_install'
    end
    object ADOQuery10pv_installNSS: TIntegerField
      FieldName = 'pv_install.NSS'
    end
  end
  object ADOQuery11: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nomE'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'prenE'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select*'
      'from employe, pv_install, Decisin_recrutemt'
      
        'where (employe.NSS = pv_install.NSS) and (employe.NSS = Decisin_' +
        'recrutemt.NSS) and (employe.nom =:nomE) and (employe.prenom =:pr' +
        'enE)')
    Left = 328
    Top = 288
    object ADOQuery11employeNSS: TIntegerField
      FieldName = 'employe.NSS'
    end
    object ADOQuery11nom: TWideStringField
      FieldName = 'nom'
      Size = 15
    end
    object ADOQuery11prenom: TWideStringField
      FieldName = 'prenom'
      Size = 15
    end
    object ADOQuery11Date_naiss: TDateTimeField
      FieldName = 'Date_naiss'
    end
    object ADOQuery11Lieu_naiss: TWideStringField
      FieldName = 'Lieu_naiss'
      Size = 30
    end
    object ADOQuery11Grade: TWideStringField
      FieldName = 'Grade'
      Size = 60
    end
    object ADOQuery11Type_contrat: TWideStringField
      FieldName = 'Type_contrat'
      Size = 30
    end
    object ADOQuery11Date_install: TDateTimeField
      FieldName = 'Date_install'
    end
    object ADOQuery11Categorie_post: TWideStringField
      FieldName = 'Categorie_post'
      Size = 40
    end
    object ADOQuery11Num_cert_succ: TWideStringField
      FieldName = 'Num_cert_succ'
      Size = 10
    end
    object ADOQuery11Date_cert_succ: TDateTimeField
      FieldName = 'Date_cert_succ'
    end
    object ADOQuery11Etabliss_cert: TWideStringField
      FieldName = 'Etabliss_cert'
      Size = 40
    end
    object ADOQuery11Num_situat_serv_nati: TWideStringField
      FieldName = 'Num_situat_serv_nati'
      Size = 10
    end
    object ADOQuery11Date_situat_serv_nati: TDateTimeField
      FieldName = 'Date_situat_serv_nati'
    end
    object ADOQuery11Num_ident: TIntegerField
      FieldName = 'Num_ident'
    end
    object ADOQuery11nom_service: TWideStringField
      FieldName = 'nom_service'
      Size = 40
    end
    object ADOQuery11adress_etabliss: TWideStringField
      FieldName = 'adress_etabliss'
      Size = 40
    end
    object ADOQuery11spcialite: TWideStringField
      FieldName = 'spcialite'
      Size = 80
    end
    object ADOQuery11class: TIntegerField
      FieldName = 'class'
    end
    object ADOQuery11Num_pv_install: TWideStringField
      FieldName = 'Num_pv_install'
      Size = 8
    end
    object ADOQuery11Date_pv_install: TDateTimeField
      FieldName = 'Date_pv_install'
    end
    object ADOQuery11Jour_install: TWideStringField
      FieldName = 'Jour_install'
    end
    object ADOQuery11Mois_install: TWideStringField
      FieldName = 'Mois_install'
    end
    object ADOQuery11Annee_install: TWideStringField
      FieldName = 'Annee_install'
    end
    object ADOQuery11pv_installNSS: TIntegerField
      FieldName = 'pv_install.NSS'
    end
    object ADOQuery11Num_decis_recrt: TWideStringField
      FieldName = 'Num_decis_recrt'
      Size = 8
    end
    object ADOQuery11Date_decis_recrt: TDateTimeField
      FieldName = 'Date_decis_recrt'
    end
    object ADOQuery11decesi_ouvert_concou: TWideStringField
      FieldName = 'decesi_ouvert_concou'
      Size = 10
    end
    object ADOQuery11date_decesi_ouvert: TDateTimeField
      FieldName = 'date_decesi_ouvert'
    end
    object ADOQuery11pv_result_final: TWideStringField
      FieldName = 'pv_result_final'
      Size = 10
    end
    object ADOQuery11date_pv_result_final: TDateTimeField
      FieldName = 'date_pv_result_final'
    end
    object ADOQuery11Decisin_recrutemtNSS: TIntegerField
      FieldName = 'Decisin_recrutemt.NSS'
    end
  end
  object ADOQuery12: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ns2'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select*'
      'from employe, pv_install, Decisin_recrutemt, Decision_nominat'
      
        'where (employe.NSS = pv_install.NSS) and (employe.NSS = Decisin_' +
        'recrutemt.NSS) and (employe.NSS = Decision_nominat.NSS) and (emp' +
        'loye.NSS =:ns2)')
    Left = 248
    Top = 312
    object ADOQuery12employeNSS: TIntegerField
      FieldName = 'employe.NSS'
    end
    object ADOQuery12nom: TWideStringField
      FieldName = 'nom'
      Size = 15
    end
    object ADOQuery12prenom: TWideStringField
      FieldName = 'prenom'
      Size = 15
    end
    object ADOQuery12Date_naiss: TDateTimeField
      FieldName = 'Date_naiss'
    end
    object ADOQuery12Lieu_naiss: TWideStringField
      FieldName = 'Lieu_naiss'
      Size = 30
    end
    object ADOQuery12Grade: TWideStringField
      FieldName = 'Grade'
      Size = 60
    end
    object ADOQuery12Type_contrat: TWideStringField
      FieldName = 'Type_contrat'
      Size = 30
    end
    object ADOQuery12Date_install: TDateTimeField
      FieldName = 'Date_install'
    end
    object ADOQuery12Categorie_post: TWideStringField
      FieldName = 'Categorie_post'
      Size = 40
    end
    object ADOQuery12Num_cert_succ: TWideStringField
      FieldName = 'Num_cert_succ'
      Size = 10
    end
    object ADOQuery12Date_cert_succ: TDateTimeField
      FieldName = 'Date_cert_succ'
    end
    object ADOQuery12Etabliss_cert: TWideStringField
      FieldName = 'Etabliss_cert'
      Size = 40
    end
    object ADOQuery12Num_situat_serv_nati: TWideStringField
      FieldName = 'Num_situat_serv_nati'
      Size = 10
    end
    object ADOQuery12Date_situat_serv_nati: TDateTimeField
      FieldName = 'Date_situat_serv_nati'
    end
    object ADOQuery12Num_ident: TIntegerField
      FieldName = 'Num_ident'
    end
    object ADOQuery12nom_service: TWideStringField
      FieldName = 'nom_service'
      Size = 40
    end
    object ADOQuery12adress_etabliss: TWideStringField
      FieldName = 'adress_etabliss'
      Size = 40
    end
    object ADOQuery12spcialite: TWideStringField
      FieldName = 'spcialite'
      Size = 80
    end
    object ADOQuery12class: TIntegerField
      FieldName = 'class'
    end
    object ADOQuery12Num_pv_install: TWideStringField
      FieldName = 'Num_pv_install'
      Size = 8
    end
    object ADOQuery12Date_pv_install: TDateTimeField
      FieldName = 'Date_pv_install'
    end
    object ADOQuery12Jour_install: TWideStringField
      FieldName = 'Jour_install'
    end
    object ADOQuery12Mois_install: TWideStringField
      FieldName = 'Mois_install'
    end
    object ADOQuery12Annee_install: TWideStringField
      FieldName = 'Annee_install'
    end
    object ADOQuery12pv_installNSS: TIntegerField
      FieldName = 'pv_install.NSS'
    end
    object ADOQuery12Num_decis_recrt: TWideStringField
      FieldName = 'Num_decis_recrt'
      Size = 8
    end
    object ADOQuery12Date_decis_recrt: TDateTimeField
      FieldName = 'Date_decis_recrt'
    end
    object ADOQuery12decesi_ouvert_concou: TWideStringField
      FieldName = 'decesi_ouvert_concou'
      Size = 10
    end
    object ADOQuery12date_decesi_ouvert: TDateTimeField
      FieldName = 'date_decesi_ouvert'
    end
    object ADOQuery12pv_result_final: TWideStringField
      FieldName = 'pv_result_final'
      Size = 10
    end
    object ADOQuery12date_pv_result_final: TDateTimeField
      FieldName = 'date_pv_result_final'
    end
    object ADOQuery12Decisin_recrutemtNSS: TIntegerField
      FieldName = 'Decisin_recrutemt.NSS'
    end
    object ADOQuery12Num_decis_nomina: TWideStringField
      FieldName = 'Num_decis_nomina'
      Size = 8
    end
    object ADOQuery12Date_decis_nomina: TDateTimeField
      FieldName = 'Date_decis_nomina'
    end
    object ADOQuery12num_pv_nomina: TWideStringField
      FieldName = 'num_pv_nomina'
      Size = 8
    end
    object ADOQuery12dat_pv_nomina: TDateTimeField
      FieldName = 'dat_pv_nomina'
    end
    object ADOQuery12Decision_nominatNSS: TIntegerField
      FieldName = 'Decision_nominat.NSS'
    end
    object ADOQuery12num_pv_comp: TWideStringField
      FieldName = 'num_pv_comp'
      Size = 8
    end
    object ADOQuery12date_pv_comp: TDateTimeField
      FieldName = 'date_pv_comp'
    end
  end
  object ADOQuery13: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ns2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select*'
      'from employe, pv_install, Decisin_recrutemt, Decision_nominat'
      
        'where (employe.NSS = pv_install.NSS) and (employe.NSS = Decisin_' +
        'recrutemt.NSS) and (employe.NSS = Decision_nominat.NSS) and (emp' +
        'loye.NSS =:ns2)')
    Left = 160
    Top = 304
  end
end
