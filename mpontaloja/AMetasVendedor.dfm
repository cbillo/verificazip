�
 TFMETASVENDEDOR 0�  TPF0TFMetasVendedorFMetasVendedorLeft� TopyCaptionMetas VendedorClientHeight�ClientWidthZColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPainelGradientePainelGradiente1Left Top WidthZHeight)AlignalTop	AlignmenttaLeftJustifyCaption   Metas Vendedor   Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGra  TPanelColorPanelColor1Left Top)WidthZHeight8AlignalTopColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TLabelLabel1LeftTopWidthBHeight	AlignmenttaRightJustifyCaption
Vendedor :  TLabelLabel2Left� TopWidthEHeightCaption                         TSpeedButtonSpeedButton1Left� TopWidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel3Left>Top WidthHeight	AlignmenttaRightJustifyCaptionAno :  TRBEditLocaliza	EVendedorLeft`TopWidthAHeightColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder ACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ABotaoSpeedButton1	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGraASelectValida.StringsSelect I_COD_VEN, C_NOM_VEN  from CADVENDEDORES  Where I_COD_VEN = @ AND C_IND_ATI = 'S' ASelectLocaliza.StringsSelect I_COD_VEN, C_NOM_VEN  from CADVENDEDORES  Where C_IND_ATI = 'S' APermitirVazio	AColunasATituloColuna   CódigoATamanhoColunaACampoFiltro
ANomeCampo	I_COD_VENAMostrarNaGrade	AOrdemInicial ATituloColunaNomeATamanhoColuna(ACampoFiltro	
ANomeCampo	C_NOM_VENAMostrarNaGrade	AOrdemInicial	  ALocalizaPadrao
LpVendedorATituloFormulario   Localiza Vendedor     TSpinEditColorEAnoLeft`TopWidthEHeightColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style MaxValue MinValue 
ParentFontTabOrderValue ACorFocoFPrincipal.CorFoco   TPanelColorPanelColor2Left TopnWidthZHeight)AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TBitBtnBFecharLeft� TopWidthdHeightCaption&FecharDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphsParentDoubleBufferedTabOrder OnClickBFecharClick   TGridIndiceGridIndice1Left TopaWidthZHeightAlignalClientColorclInfoBk
DataSourceDataMetaVendedor
FixedColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlueTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 	OnKeyDownGridIndice1KeyDownACorFocoFPrincipal.CorFocoAindiceInicial ALinhaSQLOrderBy ColumnsExpanded	FieldNameMESMETATitle.CaptionMesWidth2Visible	 Expanded	FieldNameANOMETATitle.CaptionAnoWidthCVisible	 Expanded	FieldNameVALMETATitle.CaptionMetaWidth� Visible	    TSQLMetaVendedor
Aggregates Params ProviderNameInternalProviderAfterInsertMetaVendedorAfterInsert	AfterPostMetaVendedorAfterPostASQlConnectionFPrincipal.BaseDadosASqlQuery.MaxBlobSize�ASqlQuery.Params ASqlQuery.SQLConnectionFPrincipal.BaseDadosSQL.Stringsselect * from METAVENDEDOR  TFMTBCDFieldMetaVendedorCODVENDEDOR	FieldNameCODVENDEDOROrigin"BASEDADOS.METAVENDEDOR.CODVENDEDOR  TFMTBCDFieldMetaVendedorMESMETA	FieldNameMESMETAOriginBASEDADOS.METAVENDEDOR.MESMETA  TFMTBCDFieldMetaVendedorANOMETA	FieldNameANOMETAOriginBASEDADOS.METAVENDEDOR.ANOMETA  TFMTBCDFieldMetaVendedorVALMETA	FieldNameVALMETAOriginBASEDADOS.METAVENDEDOR.VALMETAcurrency	   TDataSourceDataMetaVendedorDataSetMetaVendedorLeft    