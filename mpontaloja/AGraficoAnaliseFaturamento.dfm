�
 TFGRAFICOANALISEFATURAMENTO 0�"  TPF0TFGraficoAnaliseFaturamentoFGraficoAnaliseFaturamentoLeft� Top� CaptionAnalise Faturamento X PedidoClientHeightClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrder	PositionpoOwnerFormCenterOnClose	FormCloseOnCreate
FormCreate	OnKeyDownFormKeyDownPixelsPerInch`
TextHeight TPainelGradientePainelGradiente1Left Top Width�Height)AlignalTop	AlignmenttaLeftJustifyCaption"   Analise Faturamento X Pedido   Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGra  TPanelColorPanelColor1Left Top)Width�Height� AlignalClientColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TLabelLabel1LeftTop$WidthIHeightCaption   Período de :  TLabelLabel2Left� Top$WidthHeightCaption   até :  TLabelLabel4LeftTopHWidthMHeight	AlignmenttaRightJustifyCaptionAgrupar por :  TLabelLabel24Left8TopWidth"Height	AlignmenttaRightJustifyCaptionFilial :  TSpeedButtonSpeedButton5Left� TopWidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLFilialLeft� TopWidth� HeightCaption8                                                          TCalendario
EDatInicioLeft`Top WidthiHeightDate �q���@Time �q���@ColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderACorFocoFPrincipal.CorFoco  TCalendarioEDatFimLeft� Top WidthiHeightDate X���@Time X���@ColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderACorFocoFPrincipal.CorFoco  TRadioGroupCAgruparporLeft`Top9WidthIHeight)ColumnsItems.StringsDiaMesAno TabOrder  TPanelColor	PVendedorLeftTop� Width�Height<AlignalBottom
BevelOuterbvNoneColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TLabelLabel11LeftTopWidthBHeight	AlignmenttaRightJustifyCaption
Vendedor :  TSpeedButtonSpeedButton4Left� TopWidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLNomVendedorLeft� TopWidth9HeightCaption                     TLabelLabel3Left5Top"Width$Height	AlignmenttaRightJustifyCaptionMeta :  TLabelLabel5Left� Top"WidthHeight	AlignmenttaRightJustifyCaption%  TEditLocaliza	EVendedorLeft^TopWidth;HeightColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder ACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLNomVendedorABotaoSpeedButton4	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGra	ALocalizaLocalizaASelectValida.StringsSelect * from CadVendedoresWhere I_Cod_Ven = @ ASelectLocaliza.StringsSelect * from CadVendedoresWhere C_Nom_Ven like '@%'order by c_Nom_Ven APermitirVazio	ASomenteNumeros	AInfo.CampoCodigo	I_Cod_VenAInfo.CampoNome	C_Nom_VenAInfo.Nome1   CódigoAInfo.Nome2NomeAInfo.Tamanho1AInfo.Tamanho2(AInfo.Tamanho3 AInfo.TituloForm   Localiza Vendedor   ADarFocoDepoisdoLocaliza	  TSpinEditColorEPerMetaLeft_TopWidth<HeightColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style MaxValue MinValue 
ParentFontTabOrderValueACorFocoFPrincipal.CorFoco   TEditLocalizaEFilialLeft`TopWidthDHeightColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder ACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLFilialABotaoSpeedButton5	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGra	ALocalizaLocalizaASelectValida.Strings,select * from CadFiliais where I_EMP_FIL = @ ASelectLocaliza.StringsSelect * from CADFILIAISWhere C_NOM_FAN like '@%' APermitirVazio	ASomenteNumeros	AInfo.CampoCodigo	I_EMP_FILAInfo.CampoNome	C_NOM_FANAInfo.Nome1   CódigoAInfo.Nome2NomeAInfo.Tamanho1AInfo.Tamanho2(AInfo.Tamanho3 AInfo.TituloFormLocaliza FilialADarFocoDepoisdoLocaliza	  TPanelColorPMetaLeftTophWidth�Height AlignalBottom
BevelOuterbvNoneColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TLabelLabel6Left4TopWidth$Height	AlignmenttaRightJustifyCaptionMeta :  	TnumericoEMetaLeft^TopWidthWHeightACampoObrigatorioACorFocoFPrincipal.CorFocoANaoUsarCorNegativoColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder AValor      P�@    TPanelColorPanelColor2Left Top� Width�Height)AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TSpeedButtonBMostrarContaLeftTopWidthHeight
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 33333333333���33330  33333�ww?�330�w 3337s?�w?33� w33s?w�s�0���p37�w37��0��  �p3773ws7�? �w77377�			s33s	��s33s	�	s�3ss ��xs�7��7�s0��  ��37�3ws77�0����37?w37s733� �33s�ws?s330�� 3337s��w33330  333337ww333	NumGlyphsVisibleOnClickBMostrarContaClick  TBitBtnBGerarLeftTopWidthdHeightCaption&GerarDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   /            (  �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 33333333333333333333333033333333333333333333333033333333333333333333333033sssssssss333030        3�wwwwwwww303p3333333333ws33333333303033333�3333�s3333333303p33333�3333ws3333w�3330303333993333�s3337��33303p333393�3�3ws3337�33030�933�3�<33�w��337�303p<��3�39<33ww337�s30309�93�33�33�w7�333303p9<3�333�33ww��w�3333030�3�93��933�37�ww�s303p33<3<33933ws37�7�37s3030333�<333�3�s337�33w�03p333<�33333ws337333330303333333333�s33333333303p3333333333ws33333333303033333333337s3333333330333333333333333333333330333333333333333333333330	NumGlyphsParentDoubleBufferedTabOrder OnClickBGerarClick  TBitBtnBFecharLeftXTopWidthdHeightCaption&FecharDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphsParentDoubleBufferedTabOrderOnClickBFecharClick   TRBGraDinamicoGraficoAInfo.TituloGrafico       Produção Anual em Metros   AInfo.TituloFormulario   Produção Anual em MetrosAInfo.TituloYMetrosAInfo.TituloXMesesAConfiguracoesFPrincipal.CorPainelGraLeftXTop  	TSQLQueryTabelaMaxBlobSize�Params SQLConnectionFPrincipal.BaseDadosLeftx  TConsultaPadraoLocaliza
ACadastrarAAlterarLeft  	TSQLQueryAuxMaxBlobSize�Params SQLConnectionFPrincipal.BaseDadosLeftP   