�
 TFCONSOLIDARCR 0D  TPF0TFConsolidarCRFConsolidarCRLeft4TopkCaption   Conlidação Contas a ReceberClientHeight9ClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPainelGradientePainelGradiente1Left Top WidthHeight)AlignalTop	AlignmenttaLeftJustifyCaption%      Consolidação Contas a Receber   Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGraExplicitTop  TPanelColorPanelColor1Left Top)WidthHeight� AlignalClientColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TSpeedButtonSpeedButton4Left� TopWidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel20Left� Top	Width� HeightCaption8                                                          TLabelLabel18LeftCTop	Width/Height	AlignmenttaRightJustifyCaption	Cliente :  TLabelLabel1LeftTopUWidthmHeight	AlignmenttaRightJustifyCaptionData Vencimento :  TLabelLabel2Left	TopyWidthiHeight	AlignmenttaRightJustifyCaptionPercentual Desc :  TLabelLabel3LeftTop� WidthcHeight	AlignmenttaRightJustifyCaptionValor Desconto :  TLabelLabel4Left*Top� WidthHHeight	AlignmenttaRightJustifyCaptionValor Total :  TEditLocalizaEClienteLeftuTopWidthPHeightColor�� Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder OnChangeEClienteChangeACampoObrigatorio	AIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLabel20ABotaoSpeedButton4	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGra	ALocalizaLocalizaASelectValida.Stringsselect * from CadClientes where c_ind_cli = 'S' andI_COD_CLI = @ ASelectLocaliza.Strings Select * from CadClientes where c_ind_cli = 'S' andc_nom_cli like '@%' APermitirVazio	ASomenteNumeros	AInfo.CampoCodigo	I_COD_CLIAInfo.CampoNome	C_NOM_CLIAInfo.CampoMostra3	C_CID_CLIAInfo.Nome1   CódigoAInfo.Nome2NomeAInfo.Nome3CidadeAInfo.Tamanho1AInfo.Tamanho2AInfo.Tamanho3AInfo.TituloFormLocaliza ClientesADarFocoDepoisdoLocaliza	  TCalendarioEDatVencimentoLeftuTopQWidthiHeightDate H�����@Time H�����@ColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderACorFocoFPrincipal.CorFoco  	TnumericoEPerDescontoLeftuTopuWidthiHeightACampoObrigatorioACorFocoFPrincipal.CorFocoANaoUsarCorNegativoColorclInfoBkAMascara,0.00;-,0.00Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnChangeEPerDescontoChange  	TnumericoEValDescontoLeftuTop� WidthiHeightACampoObrigatorioACorFocoFPrincipal.CorFocoANaoUsarCorNegativoColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnChangeEValDescontoChange  	Tnumerico	EValTotalLeftuTop� WidthiHeightACampoObrigatorioACorFocoFPrincipal.CorFocoANaoUsarCorNegativoColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder  TBitBtnBitBtn1LeftuTop'Width� HeightCaptionAdicionar ContasDoubleBuffered	ParentDoubleBufferedTabOrderOnClickBitBtn1Click   TPanelColorPanelColor2Left TopWidthHeight)AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TBitBtnBGravarLeft� TopWidthdHeightCaption&GravarDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrder OnClickBGravarClick  TBitBtn	BCancelarLeftTopWidthdHeightCaption	&CancelarDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  33�33333333?333333  39�33�3333��33?33  3939�338�3?��3  39��338�8��3�3  33�338�3��38�  339�333�3833�3  333�33338�33?�3  3331�33333�33833  3339�333338�3�33  333��33333833�33  33933333�33�33  33����333838�8�3  33�39333�3��3�3  33933�333��38�8�  33333393338�33���  3333333333333338�3  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrderOnClickBCancelarClick   TValidaGravacaoValidaGravacao1AComponentePanelColor1ABotaoGravarBGravarLeft@Top  TConsultaPadraoLocaliza
ACadastrarAAlterarLeft"Top   