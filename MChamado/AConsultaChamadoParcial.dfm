�
 TFCONSULTACHAMADOPARCIAL 0�  TPF0TFConsultaChamadoParcialFConsultaChamadoParcialLeft:Top� CaptionChamado ParcialClientHeight�ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoOwnerFormCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSplitter	Splitter1Left Top� Width�HeightCursorcrVSplitAlignalTop  TPainelGradientePainelGradiente1Left Top Width�Height)AlignalTop	AlignmenttaLeftJustifyCaption   Chamado Parcial   Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGra  TPanelColorPanelColor2Left Top�Width�Height)AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TBitBtnBFecharLeftkTopWidthdHeightCaption&FecharDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphsParentDoubleBufferedTabOrderOnClickBFecharClick  TBitBtn
BSeparacaoLeftnTopWidthuHeightCaption   &SeparaçãoDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 0      ?��������������wwwwwww�������wwwwwww        ���������������wwwwwww�������wwwwwww�������wwwwww        wwwwwww30����337���?330� 337�wss330����337��?�330�  337�swws330���3337��73330��3337�ss3330�� 33337��w33330  33337wws333	NumGlyphsParentDoubleBufferedTabOrder OnClickBSeparacaoClick  TBitBtnBRetornoLeft�TopWidthuHeightCaption&RetornoDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 0      ?��������������wwwwwww�������wwwwwww        ���������������wwwwwww�������wwwwwww�������wwwwww        wwwwwww30����337���?330� 337�wss330����337��?�330�  337�swws330���3337��73330��3337�ss3330�� 33337��w33330  33337wws333	NumGlyphsParentDoubleBufferedTabOrderOnClickBRetornoClick   TGridIndiceGridIndice1Left Top)Width�Height� AlignalTopColorclInfoBk
DataSourceDataChamadoParcialCorpo
FixedColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit 
ParentFontTabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlueTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style ACorFocoFPrincipal.CorFocoAindiceInicial ALinhaSQLOrderBy ColumnsExpanded	FieldName
SEQPARCIALTitle.CaptionItemWidth$Visible	 Expanded	FieldName
DATPARCIALTitle.CaptionDataVisible	 	AlignmenttaCenterExpanded	FieldNameINDFATURADOTitle.CaptionFatur.Width'Visible	 Expanded	FieldName
NOMTECNICOTitle.Caption   TécnicoWidthIVisible	 Expanded	FieldName	C_NOM_USUTitle.Caption   UsuárioWidth4Visible	    TGridIndiceoLeft Top� Width�Height� AlignalClientColorclInfoBk
DataSourceDataPARCIALPRODUTO
FixedColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit 
ParentFontTabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlueTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style ACorFocoFPrincipal.CorFocoAindiceInicial ALinhaSQLOrderBy ColumnsExpanded	FieldName	C_COD_PROTitle.Caption   CódigoWidth|Visible	 Expanded	FieldName	C_NOM_PROTitle.CaptionProdutoVisible	 Expanded	FieldName
QTDPRODUTOTitle.Caption
QuantidadeVisible	 Expanded	FieldNameDESUMTitle.CaptionUMVisible	 	AlignmenttaCenterExpanded	FieldNameINDPRODUTOEXTRATitle.CaptionExtraVisible	 Expanded	FieldNameINDFATURADOTitle.CaptionFatur.Visible	    TSQLChamadoParcialCorpo
Aggregates Params ProviderNameInternalProviderAfterScrollChamadoParcialCorpoAfterScrollASQlConnectionFPrincipal.BaseDadosASqlQuery.MaxBlobSize�ASqlQuery.Params ASqlQuery.SQLConnectionFPrincipal.BaseDadosSQL.StringsVselect CPC.CODFILIAL, CPC.NUMCHAMADO, CPC.SEQPARCIAL, CPC.DATPARCIAL, CPC.INDFATURADO, USU.C_NOM_USU, TEC.CODTECNICO, TEC.NOMTECNICO    :from CHAMADOPARCIALCORPO CPC, CADUSUARIOS USU, TECNICO TEC$WHERE CPC.CODUSUARIO = USU.I_COD_USU#AND CPC.CODTECNICO = TEC.CODTECNICO Left�Top` TFMTBCDFieldChamadoParcialCorpoCODFILIAL	FieldName	CODFILIALOrigin'BASEDADOS.CHAMADOPARCIALCORPO.CODFILIAL  TFMTBCDFieldChamadoParcialCorpoNUMCHAMADO	FieldName
NUMCHAMADOOrigin(BASEDADOS.CHAMADOPARCIALCORPO.NUMCHAMADO  TFMTBCDFieldChamadoParcialCorpoSEQPARCIAL	FieldName
SEQPARCIALOrigin(BASEDADOS.CHAMADOPARCIALCORPO.SEQPARCIAL  TSQLTimeStampFieldChamadoParcialCorpoDATPARCIAL	FieldName
DATPARCIALOrigin(BASEDADOS.CHAMADOPARCIALCORPO.DATPARCIAL  TWideStringFieldChamadoParcialCorpoINDFATURADO	FieldNameINDFATURADOOrigin)BASEDADOS.CHAMADOPARCIALCORPO.INDFATURADOSize  TWideStringFieldChamadoParcialCorpoC_NOM_USU	FieldName	C_NOM_USUOriginBASEDADOS.CADUSUARIOS.C_NOM_USUSize<  TFMTBCDFieldChamadoParcialCorpoCODTECNICO	FieldName
CODTECNICOOriginBASEDADOS.TECNICO.CODTECNICO  TWideStringFieldChamadoParcialCorpoNOMTECNICO	FieldName
NOMTECNICOOriginBASEDADOS.TECNICO.NOMTECNICOSize2   TDataSourceDataChamadoParcialCorpoDataSetChamadoParcialCorpoLeft�Top`  TSQLPARCIALPRODUTO
Aggregates Params ProviderNameInternalProviderASQlConnectionFPrincipal.BaseDadosASqlQuery.MaxBlobSize�ASqlQuery.Params ASqlQuery.SQLConnectionFPrincipal.BaseDadosSQL.Stringsvselect CPP.CODFILIAL, CPP.NUMCHAMADO, CPP.SEQPARCIAL, CPP.QTDPRODUTO, CPP.DESUM, CPP.INDPRODUTOEXTRA, CPP.INDFATURADO,PRO.C_COD_PRO, PRO.C_NOM_PRO    /from CHAMADOPARCIALPRODUTO CPP, CADPRODUTOS PRO$Where CPP.SEQPRODUTO = PRO.I_SEQ_PRO Left(Top` TFMTBCDFieldPARCIALPRODUTOCODFILIAL	FieldName	CODFILIALOrigin)BASEDADOS.CHAMADOPARCIALPRODUTO.CODFILIAL  TFMTBCDFieldPARCIALPRODUTONUMCHAMADO	FieldName
NUMCHAMADOOrigin*BASEDADOS.CHAMADOPARCIALPRODUTO.NUMCHAMADO  TFMTBCDFieldPARCIALPRODUTOSEQPARCIAL	FieldName
SEQPARCIALOrigin*BASEDADOS.CHAMADOPARCIALPRODUTO.SEQPARCIAL  TFMTBCDFieldPARCIALPRODUTOQTDPRODUTO	FieldName
QTDPRODUTOOrigin*BASEDADOS.CHAMADOPARCIALPRODUTO.QTDPRODUTO  TWideStringFieldPARCIALPRODUTODESUM	FieldNameDESUMOrigin%BASEDADOS.CHAMADOPARCIALPRODUTO.DESUMSize  TWideStringFieldPARCIALPRODUTOINDPRODUTOEXTRA	FieldNameINDPRODUTOEXTRAOrigin/BASEDADOS.CHAMADOPARCIALPRODUTO.INDPRODUTOEXTRASize  TWideStringFieldPARCIALPRODUTOINDFATURADO	FieldNameINDFATURADOOrigin+BASEDADOS.CHAMADOPARCIALPRODUTO.INDFATURADOSize  TWideStringFieldPARCIALPRODUTOC_COD_PRO	FieldName	C_COD_PROOriginBASEDADOS.CADPRODUTOS.C_COD_PROSize2  TWideStringFieldPARCIALPRODUTOC_NOM_PRO	FieldName	C_NOM_PROOriginBASEDADOS.CADPRODUTOS.C_NOM_PROSize2   TDataSourceDataPARCIALPRODUTODataSetPARCIALPRODUTOLeftPTop`   