�
 TFORDEMCORTEPENDENTE 0W  TPF0TFOrdemCortePendenteFOrdemCortePendenteLeft� ToplCaptionOrdem Corte PendenteClientHeight�ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoOwnerFormCenterWindowStatewsMaximizedOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPainelGradientePainelGradiente1Left Top Width�Height)AlignalTop	AlignmenttaLeftJustifyCaption  Ordem Corte PendenteFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGra  TPanelColorPanelColor1Left Top[Width�Height)AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TBitBtnBFecharLeftXTopWidthdHeightCaption&FecharDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphsParentDoubleBufferedTabOrderOnClickBFecharClick  TBitBtn	BImprimirLeftTopWidthdHeightCaption	&ImprimirDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 0      ?��������������wwwwwww�������wwwwwww        ���������������wwwwwww�������wwwwwww�������wwwwww        wwwwwww30����337���?330� 337�wss330����337��?�330�  337�swws330���3337��73330��3337�ss3330�� 33337��w33330  33337wws333	NumGlyphsParentDoubleBufferedTabOrder OnClickBImprimirClick   TGridIndiceGridIndice1Left Top)Width�Height2AlignalClientColorclInfoBk
DataSourceDataCortePendenteDrawingStyle
gdsClassic
FixedColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit 
ParentFont	PopupMenu
PopupMenu1TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlueTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style ACorFocoFPrincipal.CorFocoAindiceInicial ALinhaSQLOrderBy ColumnsExpanded	FieldName	CODFILIALTitle.CaptionFilialWidth"Visible	 Expanded	FieldNameSEQORDEMTitle.CaptionOPWidth2Visible	 Expanded	FieldName
DATENTREGATitle.CaptionEntrega PrevWidthYVisible	 Expanded	FieldNameQTDDIASTitle.CaptionQtd DiasWidth<Visible	 Expanded	FieldName	SEQFRACAOTitle.Caption   FraçãoWidth1Visible	 Expanded	FieldName
QTDPRODUTOTitle.CaptionQtd ProdutoWidthOVisible	 Expanded	FieldNameDATEMITitle.Caption   EmissãoWidthmVisible	 Expanded	FieldName	C_COD_PROTitle.Caption   CódigoWidthkVisible	 Expanded	FieldName	C_NOM_PROTitle.CaptionProdutoWidthCVisible	 Expanded	FieldName	I_COD_CLITitle.Caption   CódigoWidth1Visible	 Expanded	FieldName	C_NOM_CLITitle.CaptionClienteWidth`Visible	    TSQLCortePendente
Aggregates PacketRecordsParams ProviderNameInternalProviderOnCalcFieldsCortePendenteCalcFieldsASQlConnectionFPrincipal.BaseDadosASqlQuery.MaxBlobSize�ASqlQuery.Params ASqlQuery.SQL.StringsQselect FRA.CODFILIAL, FRA.SEQORDEM, FRA.SEQFRACAO, FRA.QTDPRODUTO,FRA.DATENTREGA, OP.DATEMI, CLI.I_COD_CLI, CLI.C_NOM_CLI,PRO.C_COD_PRO, PRO.C_NOM_PROK from FRACAOOP FRA, ORDEMPRODUCAOCORPO OP, CADCLIENTES CLI, CADPRODUTOS PROwhere FRA.DATCORTE IS NULLAND OP.EMPFIL = FRA.CODFILIALAND OP.SEQORD = FRA.SEQORDEMAND OP.CODCLI = CLI.I_COD_CLIAND OP.SEQPRO = PRO.I_SEQ_PRO(ORDER BY OP.DATEMI, OP.EMPFIL, OP.SEQORD ASqlQuery.SQLConnectionFPrincipal.BaseDadosSQL.StringsQselect FRA.CODFILIAL, FRA.SEQORDEM, FRA.SEQFRACAO, FRA.QTDPRODUTO,FRA.DATENTREGA, OP.DATEMI, CLI.I_COD_CLI, CLI.C_NOM_CLI,PRO.C_COD_PRO, PRO.C_NOM_PROK from FRACAOOP FRA, ORDEMPRODUCAOCORPO OP, CADCLIENTES CLI, CADPRODUTOS PROwhere FRA.DATCORTE IS NULLAND OP.EMPFIL = FRA.CODFILIALAND OP.SEQORD = FRA.SEQORDEMAND OP.CODCLI = CLI.I_COD_CLIAND OP.SEQPRO = PRO.I_SEQ_PRO(ORDER BY OP.DATEMI, OP.EMPFIL, OP.SEQORD Left(Top TFMTBCDFieldCortePendenteCODFILIAL	FieldName	CODFILIALRequired		Precision
Size   TFMTBCDFieldCortePendenteSEQORDEM	FieldNameSEQORDEMRequired		Precision
Size   TFMTBCDFieldCortePendenteSEQFRACAO	FieldName	SEQFRACAORequired		Precision
Size   TFMTBCDFieldCortePendenteQTDPRODUTO	FieldName
QTDPRODUTO	PrecisionSize  TSQLTimeStampFieldCortePendenteDATEMI	FieldNameDATEMI  TFMTBCDFieldCortePendenteI_COD_CLI	FieldName	I_COD_CLIRequired		Precision
Size   TWideStringFieldCortePendenteC_NOM_CLI	FieldName	C_NOM_CLISize2  TWideStringFieldCortePendenteC_NOM_PRO	FieldName	C_NOM_PROSized  TWideStringFieldCortePendenteC_COD_PRO	FieldName	C_COD_PROSize2  TIntegerFieldCortePendenteQTDDIAS	FieldKindfkCalculated	FieldNameQTDDIAS
Calculated	  TSQLTimeStampFieldCortePendenteDATENTREGA	FieldName
DATENTREGA   TDataSourceDataCortePendenteDataSetCortePendenteLeftXTop  
TPopupMenu
PopupMenu1Left� Top 	TMenuItemBaixar1CaptionBaixarOnClickBaixar1Click    