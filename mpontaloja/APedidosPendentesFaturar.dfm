�
 TFPEDIDOSPENDENTESFATURAR 0�  TPF0TFPedidosPendentesFaturarFPedidosPendentesFaturarLeftpTop� CaptionPedidos Pendentes FaturarClientHeightvClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPainelGradientePainelGradiente1Left Top Width�Height)AlignalTop	AlignmenttaLeftJustifyCaption!   Pedidos Pendentes a Faturar   Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGra  TPanelColorPanelColor1Left Top)Width�Height"AlignalTopColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TLabelLabel1LeftTop	Width/Height	AlignmenttaRightJustifyCaption	Cliente :  TSpeedButtonSpeedButton1Left� TopWidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel2Left� Top	Width� HeightAutoSizeCaption                     TEditLocalizaEClienteLeftMTopWidth;HeightColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder ACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLabel2ABotaoSpeedButton1	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGraASelectValida.StringsSelect * from CadClientes Where I_Cod_cli = @ ASelectLocaliza.StringsSelect * from CadClientes Where C_Nom_Cli like '@%'order by c_Nom_Cli  APermitirVazio	ASomenteNumeros	AInfo.CampoCodigo	I_Cod_cliAInfo.CampoNome	C_Nom_CliAInfo.Nome1   CódigoAInfo.Nome2NomeAInfo.Tamanho1AInfo.Tamanho2(AInfo.Tamanho3 AInfo.TituloForm   Localiza Cliente   ADarFocoDepoisdoLocaliza	   TPanelColorPanelColor2Left TopOWidth�Height'AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TBitBtnBitBtn1Left8TopWidthdHeightCaption&FecharDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphsParentDoubleBufferedTabOrder OnClickBitBtn1Click   TGridIndiceGridIndice1Left TopKWidth�HeightAlignalClientColorclInfoBk
DataSourceDataPedidosPendentesDrawingStyle
gdsClassic
FixedColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgConfirmDeletedgCancelOnExit 
ParentFontTabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlueTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style ACorFocoFPrincipal.CorFocoAColunasOrdem AindiceInicial ALinhaSQLOrderBy ColumnsExpanded	FieldName	I_EMP_FILTitle.CaptionFilialWidth'Visible	 Expanded	FieldName	I_LAN_ORCTitle.Caption	   CotaçãoVisible	 Expanded	FieldName	D_DAT_ORCTitle.Caption   EmissãoWidtheVisible	 Expanded	FieldName	C_NOM_CLITitle.CaptionClienteWidth�Visible	    TSQLPedidosPendentes
Aggregates Params ProviderNameInternalProviderASQlConnectionFPrincipal.BaseDadosASqlQuery.MaxBlobSize�ASqlQuery.Params ASqlQuery.SQLConnectionFPrincipal.BaseDadosSQL.Strings4select ORC.I_EMP_FIL , ORC.I_LAN_ORC, ORC.D_DAT_ORC,           CLI.C_NOM_CLI) from  CADCLIENTES CLI, CADORCAMENTOS ORC#WHERE ORC.I_COD_CLI = CLI.I_COD_CLIAND ORC.I_TIP_ORC = 5AND ORC.C_IND_PRO = 'N'  TFMTBCDFieldPedidosPendentesI_EMP_FIL	FieldName	I_EMP_FILOrigin!BASEDADOS.CADORCAMENTOS.I_EMP_FIL  TFMTBCDFieldPedidosPendentesI_LAN_ORC	FieldName	I_LAN_ORCOrigin!BASEDADOS.CADORCAMENTOS.I_LAN_ORC  TSQLTimeStampFieldPedidosPendentesD_DAT_ORC	FieldName	D_DAT_ORCOrigin!BASEDADOS.CADORCAMENTOS.D_DAT_ORC  TWideStringFieldPedidosPendentesC_NOM_CLI	FieldName	C_NOM_CLIOriginBASEDADOS.CADCLIENTES.C_NOM_CLISize2   TDataSourceDataPedidosPendentesDataSetPedidosPendentesLeft@   