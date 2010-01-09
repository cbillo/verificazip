object dtRave: TdtRave
  OldCreateOrder = False
  OnCreate = f
  Height = 390
  Width = 421
  object Principal: TSQL
    Aggregates = <>
    Params = <>
    ProviderName = 'InternalProvider'
    ASQlConnection = FPrincipal.BaseDados
    ASqlQuery.MaxBlobSize = -1
    ASqlQuery.Params = <>
    ASqlQuery.SQL.Strings = (
      
        'select OP.SEQORD, OP.CODPRO, OP.ORDCLI, OP.NUMPED,  OP.CODMAQ, O' +
        'P.UNMPED,'
      ' OP.DATENP, OP.TIPPED, '
      
        ' PRO.CODEME, PRO.INDCAL, PRO.INDENG, PRO.I_LRG_PRO, PRO.I_CMP_PR' +
        'O, '
      ' COP.INDFIN, COP.INDREP, COP.QTDTOT,'
      ' CIT.METCOL, CIT.NROFIT, CIT.CODCOM, CIT.CODMAN '
      
        ' from  COLETAOPCORPO COP, ORDEMPRODUCAOCORPO OP, CADPRODUTOS PRO' +
        ',  COLETAOPITEM CIT '
      ' WHERE COP.EMPFIL = OP.EMPFIL '
      ' AND COP.SEQORD = OP.SEQORD '
      ' AND COP.EMPFIL = CIT.EMPFIL '
      ' AND COP.SEQORD = CIT.SEQORD '
      ' AND COP.SEQCOL = CIT.SEQCOL '
      ' AND OP.SEQPRO = PRO.I_SEQ_PRO '
      ' AND COP.EMPFIL = 11'
      ' AND COP.SEQORD = 40279'
      ' AND COP.SEQCOL = 1')
    ASqlQuery.SQLConnection = FPrincipal.BaseDados
    SQL.Strings = (
      
        'select OP.SEQORD, OP.CODPRO, OP.ORDCLI, OP.NUMPED,  OP.CODMAQ, O' +
        'P.UNMPED,'
      ' OP.DATENP, OP.TIPPED, '
      
        ' PRO.CODEME, PRO.INDCAL, PRO.INDENG, PRO.I_LRG_PRO, PRO.I_CMP_PR' +
        'O, '
      ' COP.INDFIN, COP.INDREP, COP.QTDTOT,'
      ' CIT.METCOL, CIT.NROFIT, CIT.CODCOM, CIT.CODMAN '
      
        ' from  COLETAOPCORPO COP, ORDEMPRODUCAOCORPO OP, CADPRODUTOS PRO' +
        ',  COLETAOPITEM CIT '
      ' WHERE COP.EMPFIL = OP.EMPFIL '
      ' AND COP.SEQORD = OP.SEQORD '
      ' AND COP.EMPFIL = CIT.EMPFIL '
      ' AND COP.SEQORD = CIT.SEQORD '
      ' AND COP.SEQCOL = CIT.SEQCOL '
      ' AND OP.SEQPRO = PRO.I_SEQ_PRO '
      ' AND COP.EMPFIL = 11'
      ' AND COP.SEQORD = 40279'
      ' AND COP.SEQCOL = 1')
    Left = 80
    Top = 8
  end
  object rvPrincipal: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Principal
    Left = 80
    Top = 64
  end
  object Rave: TRvProject
    Engine = RvSystem1
    OnBeforeOpen = RaveBeforeOpen
    Left = 16
    Top = 8
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Opcoes de Saida'
    TitleStatus = 'Report Status'
    TitlePreview = 'Visualizador de Relatorio'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'Siscorp'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    OnBeforePrint = RvSystem1BeforePrint
    Left = 16
    Top = 64
  end
  object PedidosPendentes: TSQL
    Aggregates = <>
    Params = <>
    ProviderName = 'InternalProvider'
    ASQlConnection = FPrincipal.BaseDados
    ASqlQuery.MaxBlobSize = -1
    ASqlQuery.Params = <>
    ASqlQuery.SQL.Strings = (
      'select CLI.I_COD_CLI, CLI.C_NOM_CLI,'
      
        ' CAD.I_EMP_FIL, CAD.I_LAN_ORC, CAD.D_DAT_ORC, CAD.I_COD_TRA, CAD' +
        '.I_COD_EST, CAD.C_IND_PEN, '
      ' PRO.C_NOM_PRO, PRO.C_IND_RET,'
      'MOV.N_QTD_PRO, MOV.C_COD_UNI, MOV.C_COD_PRO, MOV.N_QTD_DEV'
      
        'FROM CADCLIENTES CLI, CADORCAMENTOS CAD, CADPRODUTOS PRO, MOVORC' +
        'AMENTOS MOV'
      'Where CLI.I_COD_CLI = CAD.I_COD_CLI'
      'AND MOV.I_SEQ_PRO = PRO.I_SEQ_PRO'
      'AND MOV.I_EMP_FIL = CAD.I_EMP_FIL'
      'AND MOV.I_LAN_ORC = CAD.I_LAN_ORC'
      'AND CAD.C_IND_PEN = '#39'S'#39
      'AND PRO.C_IND_RET = '#39'S'#39
      'AND CAD.I_EMP_FIL = 11'
      'AND CAD.D_DAT_ORC > TO_DATE('#39'01/01/2009'#39','#39'DD/MM/YYYY'#39')'
      'AND MOV.N_QTD_PRO > NVL(MOV.N_QTD_DEV,0)'
      'ORDER BY CAD.I_EMP_FIL , CAD.I_LAN_ORC')
    ASqlQuery.SQLConnection = FPrincipal.BaseDados
    SQL.Strings = (
      'select CLI.I_COD_CLI, CLI.C_NOM_CLI,'
      
        ' CAD.I_EMP_FIL, CAD.I_LAN_ORC, CAD.D_DAT_ORC, CAD.I_COD_TRA, CAD' +
        '.I_COD_EST, CAD.C_IND_PEN, '
      ' PRO.C_NOM_PRO, PRO.C_IND_RET,'
      'MOV.N_QTD_PRO, MOV.C_COD_UNI, MOV.C_COD_PRO, MOV.N_QTD_DEV'
      
        'FROM CADCLIENTES CLI, CADORCAMENTOS CAD, CADPRODUTOS PRO, MOVORC' +
        'AMENTOS MOV'
      'Where CLI.I_COD_CLI = CAD.I_COD_CLI'
      'AND MOV.I_SEQ_PRO = PRO.I_SEQ_PRO'
      'AND MOV.I_EMP_FIL = CAD.I_EMP_FIL'
      'AND MOV.I_LAN_ORC = CAD.I_LAN_ORC'
      'AND CAD.C_IND_PEN = '#39'S'#39
      'AND PRO.C_IND_RET = '#39'S'#39
      'AND CAD.I_EMP_FIL = 11'
      'AND CAD.D_DAT_ORC > TO_DATE('#39'01/01/2009'#39','#39'DD/MM/YYYY'#39')'
      'AND MOV.N_QTD_PRO > NVL(MOV.N_QTD_DEV,0)'
      'ORDER BY CAD.I_EMP_FIL , CAD.I_LAN_ORC')
    Left = 336
    Top = 8
    object PedidosPendentesI_EMP_FIL: TFMTBCDField
      FieldName = 'I_EMP_FIL'
      Required = True
      Precision = 10
      Size = 0
    end
    object PedidosPendentesD_DAT_PRE: TSQLTimeStampField
      FieldName = 'D_DAT_PRE'
    end
    object PedidosPendentesD_DAT_ORC: TSQLTimeStampField
      FieldName = 'D_DAT_ORC'
    end
    object PedidosPendentesI_LAN_ORC: TFMTBCDField
      FieldName = 'I_LAN_ORC'
      Required = True
      Precision = 10
      Size = 0
    end
    object PedidosPendentesI_COD_CLI: TFMTBCDField
      FieldName = 'I_COD_CLI'
      Precision = 10
      Size = 0
    end
    object PedidosPendentesT_HOR_ENT: TSQLTimeStampField
      FieldName = 'T_HOR_ENT'
    end
    object PedidosPendentesC_NOM_CLI: TWideStringField
      FieldName = 'C_NOM_CLI'
      Size = 50
    end
    object PedidosPendentesC_ORD_COM: TWideStringField
      FieldName = 'C_ORD_COM'
    end
    object PedidosPendentesN_QTD_PRO: TFMTBCDField
      FieldName = 'N_QTD_PRO'
      Precision = 17
      Size = 3
    end
    object PedidosPendentesQTDREAL: TFMTBCDField
      FieldName = 'QTDREAL'
      Precision = 32
    end
    object PedidosPendentesC_NOM_PRO: TWideStringField
      FieldName = 'C_NOM_PRO'
      Size = 100
    end
    object PedidosPendentesC_COD_PRO: TWideStringField
      FieldName = 'C_COD_PRO'
      Size = 50
    end
    object PedidosPendentesC_COD_UNI: TWideStringField
      FieldName = 'C_COD_UNI'
      Size = 2
    end
    object PedidosPendentesC_DES_COR: TWideStringField
      FieldName = 'C_DES_COR'
      Size = 50
    end
    object PedidosPendentesC_PRO_REF: TWideStringField
      FieldName = 'C_PRO_REF'
      Size = 50
    end
    object PedidosPendentesI_SEQ_MOV: TFMTBCDField
      FieldName = 'I_SEQ_MOV'
      Required = True
      Precision = 10
      Size = 0
    end
    object PedidosPendentesTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 32
    end
    object PedidosPendentesI_SEQ_ORD: TFMTBCDField
      FieldName = 'I_SEQ_ORD'
      Precision = 10
      Size = 0
    end
  end
  object rvPedidosPendentes: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = PedidosPendentes
    Left = 336
    Top = 64
  end
  object Item: TSQL
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'InternalProvider'
    ASQlConnection = FPrincipal.BaseDados
    ASqlQuery.MaxBlobSize = -1
    ASqlQuery.Params = <>
    ASqlQuery.SQL.Strings = (
      
        'select  MOV.C_COD_PRO, MOV.N_QTD_PRO, MOV.C_COD_UNI, MOV.N_VLR_P' +
        'RO, MOV.N_VLR_TOT, MOV.C_NOM_PRO PRODUTOCOTACAO, '
      ' MOV.C_IND_BRI, MOV.N_SAL_BRI, MOV.C_DES_COR, '
      
        ' MOV.C_DES_COR CORCOTACAO, MOV.C_PRO_REF, MOV.N_PER_DES, MOV.C_O' +
        'RD_COM, MOV.I_COD_TAM, MOV.N_ALT_PRO,'
      ' COR.COD_COR, COR.NOM_COR, '
      ' PRO.C_NOM_PRO, '
      ' TAM.NOMTAMANHO '
      ' from MOVORCAMENTOS MOV, CADPRODUTOS PRO, COR, TAMANHO TAM '
      ' where MOV.I_EMP_FIL = 11'
      ' AND MOV.I_LAN_ORC = 1'
      ' AND MOV.I_SEQ_PRO = PRO.I_SEQ_PRO'
      ' AND MOV.I_COD_COR = COR.COD_COR(+)'
      ' AND MOV.I_COD_TAM = TAM.CODTAMANHO(+)'
      ' ORDER BY MOV.I_SEQ_MOV')
    ASqlQuery.SQLConnection = FPrincipal.BaseDados
    SQL.Strings = (
      
        'select  MOV.C_COD_PRO, MOV.N_QTD_PRO, MOV.C_COD_UNI, MOV.N_VLR_P' +
        'RO, MOV.N_VLR_TOT, MOV.C_NOM_PRO PRODUTOCOTACAO, '
      ' MOV.C_IND_BRI, MOV.N_SAL_BRI, MOV.C_DES_COR, '
      
        ' MOV.C_DES_COR CORCOTACAO, MOV.C_PRO_REF, MOV.N_PER_DES, MOV.C_O' +
        'RD_COM, MOV.I_COD_TAM, MOV.N_ALT_PRO,'
      ' COR.COD_COR, COR.NOM_COR, '
      ' PRO.C_NOM_PRO, '
      ' TAM.NOMTAMANHO '
      ' from MOVORCAMENTOS MOV, CADPRODUTOS PRO, COR, TAMANHO TAM '
      ' where MOV.I_EMP_FIL = 11'
      ' AND MOV.I_LAN_ORC = 1'
      ' AND MOV.I_SEQ_PRO = PRO.I_SEQ_PRO'
      ' AND MOV.I_COD_COR = COR.COD_COR(+)'
      ' AND MOV.I_COD_TAM = TAM.CODTAMANHO(+)'
      ' ORDER BY MOV.I_SEQ_MOV')
    Left = 136
    Top = 8
  end
  object rvItem: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Item
    Left = 136
    Top = 64
  end
  object Item2: TSQL
    Aggregates = <>
    Params = <>
    ProviderName = 'InternalProvider'
    ASQlConnection = FPrincipal.BaseDados
    ASqlQuery.MaxBlobSize = -1
    ASqlQuery.Params = <>
    ASqlQuery.SQL.Strings = (
      'SELECT CAD.I_EMP_FIL , CAD.I_LAN_ORC, '
      
        '  MOV.I_COD_SER, '#39'SE'#39', MOV.N_QTD_SER, MOV.N_VLR_SER, MOV.N_VLR_T' +
        'OT,'
      '  SER.C_NOM_SER'
      
        'FROM CADORCAMENTOS CAD, MOVSERVICOORCAMENTO MOV, CADSERVICO SER,' +
        ' CADCLIENTES CLI'
      'Where CAD.I_EMP_FIL = MOV.I_EMP_FIL'
      'AND CAD.I_LAN_ORC = MOV.I_LAN_ORC'
      'AND CAD.I_COD_CLI = CLI.I_COD_CLI'
      'AND MOV.I_COD_SER = SER.I_COD_SER'
      ''
      'ORDER BY CAD.I_EMP_FIL, CAD.I_LAN_ORC')
    ASqlQuery.SQLConnection = FPrincipal.BaseDados
    SQL.Strings = (
      'SELECT CAD.I_EMP_FIL , CAD.I_LAN_ORC, '
      
        '  MOV.I_COD_SER, '#39'SE'#39', MOV.N_QTD_SER, MOV.N_VLR_SER, MOV.N_VLR_T' +
        'OT,'
      '  SER.C_NOM_SER'
      
        'FROM CADORCAMENTOS CAD, MOVSERVICOORCAMENTO MOV, CADSERVICO SER,' +
        ' CADCLIENTES CLI'
      'Where CAD.I_EMP_FIL = MOV.I_EMP_FIL'
      'AND CAD.I_LAN_ORC = MOV.I_LAN_ORC'
      'AND CAD.I_COD_CLI = CLI.I_COD_CLI'
      'AND MOV.I_COD_SER = SER.I_COD_SER'
      ''
      'ORDER BY CAD.I_EMP_FIL, CAD.I_LAN_ORC')
    Left = 200
    Top = 8
  end
  object rvItem2: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Item2
    Left = 200
    Top = 64
  end
  object Item3: TSQL
    Aggregates = <>
    Params = <>
    ProviderName = 'InternalProvider'
    ASQlConnection = FPrincipal.BaseDados
    ASqlQuery.MaxBlobSize = -1
    ASqlQuery.Params = <>
    ASqlQuery.SQL.Strings = (
      
        'SELECT MOV.C_NRO_DUP, MOV.N_VLR_PAR, MOV.D_DAT_VEN, MOV.C_NRO_AG' +
        'E, MOV.C_NRO_CON, '
      ' FRM.I_COD_FRM, FRM.C_NOM_FRM, '
      ' BAN.I_COD_BAN, BAN.C_NOM_BAN,'
      ' CON.C_NOM_CRR'
      
        ' FROM MOVCONTASARECEBER MOV, CADCONTASARECEBER CAD, CADFORMASPAG' +
        'AMENTO FRM, CADBANCOS BAN, CADCONTAS CON '
      ' WHERE CAD.I_EMP_FIL = 11'
      ' AND CAD.I_LAN_ORC = 701'
      ' AND MOV.I_COD_FRM = FRM.I_COD_FRM '
      ' AND MOV.I_EMP_FIL = CAD.I_EMP_FIL '
      ' AND MOV.I_LAN_REC = CAD.I_LAN_REC ')
    ASqlQuery.SQLConnection = FPrincipal.BaseDados
    SQL.Strings = (
      
        'SELECT MOV.C_NRO_DUP, MOV.N_VLR_PAR, MOV.D_DAT_VEN, MOV.C_NRO_AG' +
        'E, MOV.C_NRO_CON, '
      ' FRM.I_COD_FRM, FRM.C_NOM_FRM, '
      ' BAN.I_COD_BAN, BAN.C_NOM_BAN,'
      ' CON.C_NOM_CRR'
      
        ' FROM MOVCONTASARECEBER MOV, CADCONTASARECEBER CAD, CADFORMASPAG' +
        'AMENTO FRM, CADBANCOS BAN, CADCONTAS CON '
      ' WHERE CAD.I_EMP_FIL = 11'
      ' AND CAD.I_LAN_ORC = 701'
      ' AND MOV.I_COD_FRM = FRM.I_COD_FRM '
      ' AND MOV.I_EMP_FIL = CAD.I_EMP_FIL '
      ' AND MOV.I_LAN_REC = CAD.I_LAN_REC ')
    Left = 256
    Top = 8
  end
  object rvItem3: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Item3
    Left = 256
    Top = 64
  end
  object PDF: TRvRenderPDF
    DisplayName = 'Adobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    DocInfo.Creator = 'Rave Reports (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    Left = 16
    Top = 128
  end
end
