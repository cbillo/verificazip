�
 TFESTOQUEPRODUTOSATUAL 0�+  TPF0TFEstoqueProdutosAtualFEstoqueProdutosAtualLeftTop	HelpContext�BorderIconsbiSystemMenu CaptionConsulta de ProdutosClientHeightClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPanelColorPanelColor2Left Top)Width�Height�AlignalClient
BevelOuterbvNoneColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder AUsarCorFormACorFormFPrincipal.CorForm TPanelColorPanelColor5Left Top Width�HeightQAlignalTop
BevelOuterbvNoneColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder AUsarCorFormACorFormFPrincipal.CorForm TLabelLabel3LeftTop/Width]Height	AlignmenttaRightJustifyCaptionNome P&roduto :  TLabelLabel2LeftTopWidthWHeight	AlignmenttaRightJustifyCaption   Cla&ssificação :FocusControlEClassificacaoProduto  TSpeedButtonSpeedButton1Left� Top
WidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel1Left� TopWidth� HeightAutoSizeCaption               TLabelLabel24Left�TopWidth"Height	AlignmenttaRightJustifyCaptionFilial :  TSpeedButtonSpeedButton5Left�TopWidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel25LeftTopWidth� HeightCaption>                                                                TEditLocalizaEClassificacaoProdutoLeftiTop
WidthPHeightColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder ACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLabel1ABotaoSpeedButton1	ADataBaseFPrincipal.BASEDADOSACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGra	ALocalizaLocalizaASelectValida.StringsSelect * from CadNomePadraoPro Where I_Cod_Nom = @ ASelectLocaliza.Strings     APermitirVazio	ASomenteNumeros	AInfo.CampoCodigo	C_Cod_ClaAInfo.CampoNome	C_Nom_ClaAInfo.Nome1   CódigoAInfo.Nome2NomeAInfo.Tamanho1AInfo.Tamanho2(AInfo.Tamanho3 AInfo.TituloForm      Localiza Classificação   ADarFocoDepoisdoLocaliza	OnSelectEClassificacaoProdutoSelect	OnRetornoEClassificacaoProdutoRetorno  	TCheckBoxCProAtiLeft�Top#WidthHeightCaption!Ver somente produtos em atividadeChecked	State	cbCheckedTabOrderOnClickCProAtiClick  
TEditColorENomeProdutoLeftiTop*Width(HeightColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnEnterENomeProdutoEnterOnExitCProAtiClickACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro   TEditLocalizaEFilialLeft�TopWidth)HeightHelpContextjColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLabel25ABotaoSpeedButton5	ADataBaseFPrincipal.BASEDADOSACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGra	ALocalizaLocalizaASelectValida.Strings0select * from dba.CadFiliais where I_EMP_FIL = @ ASelectLocaliza.Stringsselect * from cadFiliaiswhere c_nom_fan like '@%' APermitirVazioASomenteNumeros	AInfo.CampoCodigo	I_EMP_FILAInfo.CampoNome	C_NOM_FANAInfo.Nome1   CódigoAInfo.Nome2NomeAInfo.Tamanho1AInfo.Tamanho2(AInfo.Tamanho3 AInfo.TituloFormLocaliza FilialADarFocoDepoisdoLocaliza		OnRetornoEFilialRetorno  	TCheckBoxCZeradaLeft�Top2WidthHeightCaptionIgnorar quantidade zeradasTabOrderOnClickCProAtiClick  	TCheckBoxCEstoqueNegativoLeft�TopAWidth0HeightCaption)Ver somente produtos com estoque negativoTabOrderOnClickCProAtiClick   TGridIndice	GProdutosLeft TopQWidth�HeightPAlignalClientColorclWhite
DataSourceDataCadProdutos
FixedColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit 
ParentFontTabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style ACorFocoFPrincipal.CorFocoAindiceInicial ALinhaSQLOrderBy ColumnsExpanded	FieldName	C_COD_PROTitle.Caption   CódigoWidthoVisible	 Expanded	FieldName	C_NOM_PROTitle.CaptionNomeWidthNVisible	 	AlignmenttaCenterExpanded	FieldName	C_COD_UNITitle.CaptionUni.Visible	 Expanded	FieldName	N_QTD_PROTitle.Caption	Qtd. Est.Width;Visible	 Expanded	FieldName	N_QTD_RESTitle.CaptionQtd Res.Width;Visible	 Expanded	FieldName	QdadeRealTitle.Caption	Qtd Prod.Visible	 	AlignmenttaCenterExpanded	FieldName	C_KIT_PROTitle.CaptionTWidthVisible	    TPanelColorPanelColor1Left Top�Width�Height"AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TLabelLabel4LeftTopWidth8Height	AlignmenttaRightJustifyCaption	Estoque :  TLabelLabel5LeftTopWidthJHeight	AlignmenttaRightJustifyCaptionReservado :  TLabelLabel6Left TopWidthYHeight	AlignmenttaRightJustifyCaptionEstoque Atual :  	Tnumerico	numerico1LeftPTopWidthYHeightACampoObrigatorioACorFocoFPrincipal.CorFocoANaoUsarCorNegativoColorclWhiteAMascara,0.00;Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder   	Tnumerico	numerico2Left`TopWidthYHeightACampoObrigatorioACorFocoFPrincipal.CorFocoANaoUsarCorNegativoColorclWhiteAMascara,0.00;Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder  	Tnumerico	numerico3Left`TopWidthYHeightACampoObrigatorioACorFocoFPrincipal.CorFocoANaoUsarCorNegativoColorclWhiteAMascara,0.00;Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder    TPanelColorPanelColor16Left Top�Width�Height'AlignalBottomCaption ColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TSpeedButtonBKitLeft	TopWidthxHeightCaptionProdutos do &KitEnabled
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 33333333333���33330  33333�ww?�33033 3337s33w?33333333s?���s�03   037�wwws7�030��303737ww37?333333ws��3300 3?��7w�  �wwww	��wwww	��swwwwss0	�0 037ww7w7�0  33037wws33733333333s�33?s33033 3337s��w33330  333337ww333	NumGlyphsOnClick	BKitClick  TBitBtnBFecharLeftTopWidthdHeightHelpContextCaption&OkDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrder OnClickBFecharClick   TPainelGradientePainelGradiente1Left Top Width�Height)AlignalTopCaption  Consulta de Produtos  Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderAConfiguracoesFPrincipal.CorPainelGra  TQueryCadProdutosAfterScrollCadProdutosAfterScrollDatabaseName	BaseDadosSessionNameDefaultSQL.StringsSelect <Pro.I_SEQ_PRO, Pro.C_COD_PRO, Pro.C_COD_UNI,  Pro.C_NOM_PRO,.Pro.C_ATI_PRO, Pro.C_KIT_PRO, Pro.L_DES_TEC,  Pro.N_PER_KIT, Qtd.C_Cod_Bar,,Qtd.N_QTD_MIN, QTD.N_QTD_PRO, QTD.N_QTD_PED,9(PRE.N_VLR_VEN * MOE.N_Vlr_Dia) N_VLR_VEN, QTD.N_QTD_RES,8Moe.C_Nom_Moe, (QTD.N_QTD_PRO - QTD.N_QTD_RES) QdadeReal? from CadProdutos pro, MovQdadeProduto Qtd, MovTabelaPreco Pre,  CadMoedas Moe     Left� Top TStringFieldCadProdutosC_COD_PRO	FieldName	C_COD_PROOriginCADPRODUTOS.C_COD_PRO  TStringFieldCadProdutosC_COD_UNI	FieldName	C_COD_UNIOriginCADPRODUTOS.C_COD_UNISize  TStringFieldCadProdutosC_NOM_PRO	FieldName	C_NOM_PROOriginCADPRODUTOS.C_NOM_PROSize2  TStringFieldCadProdutosC_ATI_PRO	FieldName	C_ATI_PROOriginCADPRODUTOS.C_ATI_PROSize  TStringFieldCadProdutosC_KIT_PRO	FieldName	C_KIT_PROOriginCADPRODUTOS.C_KIT_PROSize  TFloatFieldCadProdutosN_QTD_PRO	FieldName	N_QTD_PROOriginMOVQDADEPRODUTO.N_QTD_PRO  TIntegerFieldCadProdutosI_SEQ_PRO	FieldName	I_SEQ_PRO  TFloatFieldCadProdutosN_QTD_RES	FieldName	N_QTD_RES  TFloatFieldCadProdutosQdadeReal	FieldName	QdadeReal  TStringFieldCadProdutosC_Cod_Bar	FieldName	C_Cod_Bar   TConsultaPadraoLocaliza
ACadastrarAAlterarLeft�   TDataSourceDataCadProdutosAutoEditDataSetCadProdutosLeft� Top  TQuerySomaAfterScrollCadProdutosAfterScrollDatabaseName	BaseDadosSessionNameDefaultSQL.StringsSelect <Pro.I_SEQ_PRO, Pro.C_COD_PRO, Pro.C_COD_UNI,  Pro.C_NOM_PRO,.Pro.C_ATI_PRO, Pro.C_KIT_PRO, Pro.L_DES_TEC,  Pro.N_PER_KIT, Qtd.C_Cod_Bar,,Qtd.N_QTD_MIN, QTD.N_QTD_PRO, QTD.N_QTD_PED,9(PRE.N_VLR_VEN * MOE.N_Vlr_Dia) N_VLR_VEN, QTD.N_QTD_RES,8Moe.C_Nom_Moe, (QTD.N_QTD_PRO - QTD.N_QTD_RES) QdadeReal? from CadProdutos pro, MovQdadeProduto Qtd, MovTabelaPreco Pre,  CadMoedas Moe     LeftTop   