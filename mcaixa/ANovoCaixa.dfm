�
 TFNOVOCAIXA 0*'  TPF0TFNovoCaixa
FNovoCaixaLeft�TopjCaptionAbertura de CaixaClientHeight�ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPainelGradientePainelGradiente1Left Top Width�Height)AlignalTop	AlignmenttaLeftJustifyCaption   Abertura de CaixaFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGra  TPanelColorPanelColor1Left Top)Width�HeightxAlignalTopColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TLabelLabel3LeftJTop'WidthJHeight	AlignmenttaRightJustifyCaption   Sequêncial :  TLabelLabel4Left;TopBWidthYHeight	AlignmenttaRightJustifyCaptionData Abertura :  TLabelLabel1LeftGTopWidthNHeight	AlignmenttaRightJustifyCaptionConta Caixa :  TSpeedButtonSpeedButton1Left� TopWidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel2LeftTopWidth<HeightCaption                      TLabelLabel5Left`Top]Width5Height	AlignmenttaRightJustifyCaption
   Usuário :  TSpeedButtonSpeedButton2Left� TopYWidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel6LeftTop]Width0HeightCaption                  TEditLocalizaEContaCaixaLeft� TopWidthYHeightColor�� Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder OnChangeEContaCaixaChangeACampoObrigatorio	AIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLabel2ABotaoSpeedButton1	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGra	ALocalizaLocalizaASelectValida.StringsCSelect CON.C_NRO_CON, CON.C_NOM_CRR,  CON.I_ULT_CAI, CON.I_SEQ_CAI,   BAN.C_NOM_BAN!From CADCONTAS CON, CADBANCOS BAN#Where CON.I_COD_BAN = BAN.I_COD_BANand CON.C_NRO_CON = '@'and CON.C_IND_ATI = 'T' ASelectLocaliza.StringsCSelect CON.C_NRO_CON, CON.C_NOM_CRR,  CON.I_SEQ_CAI, CON.I_ULT_CAI,          BAN.C_NOM_BAN        !From CADCONTAS CON, CADBANCOS BAN#Where CON.I_COD_BAN = BAN.I_COD_BANand CON.C_NOM_CRR LIKE '@%'and CON.C_IND_ATI = 'T'order by CON.C_NOM_CRR APermitirVazio	AInfo.CampoCodigo	C_NRO_CONAInfo.CampoNome	C_NOM_CRRAInfo.CampoMostra3	C_NOM_BANAInfo.Nome1ContaAInfo.Nome2CorrentistaAInfo.Nome3BancoAInfo.Tamanho1AInfo.Tamanho2(AInfo.Tamanho3AInfo.TituloForm   Localiza Conta Caixa   AInfo.RetornoExtra1	I_ULT_CAIAInfo.RetornoExtra2	I_SEQ_CAIADarFocoDepoisdoLocaliza		OnRetornoEContaCaixaRetorno  	Tnumerico	ESeqCaixaLeft� Top!WidthYHeightTabStopACampoObrigatorioACorFocoFPrincipal.CorFocoANaoUsarCorNegativoColorclInfoBkAMascara ,0;- ,0Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder  
TEditColorEDatAberturaLeft� Top>WidthqHeightTabStopColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro   TEditLocalizaEUsuarioLeft� TopYWidthYHeightTabStopColor�� Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontReadOnly	TabOrderACampoObrigatorio	AIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLabel6ABotaoSpeedButton2	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGraASelectValida.StringsSelect * from CADUSUARIOSWhere I_COD_USU = @ ASelectLocaliza.StringsSelect * from CADUSUARIOSWHERE C_NOM_USU like '@%' APermitirVazio	ASomenteNumeros	AInfo.CampoCodigo	I_COD_USUAInfo.CampoNome	C_NOM_USUAInfo.Nome1   CódigoAInfo.Nome2NomeAInfo.Tamanho1AInfo.Tamanho2(AInfo.Tamanho3 AInfo.TituloForm      Localiza Usuário   ADarFocoDepoisdoLocaliza	   TPanelColorPanelColor3Left Top9Width�HeightJAlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TPanelColorPanelColor4LeftTopWidth�HeightAlignalClientColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrder AUsarCorFormACorFormFPrincipal.CorForm TLabelLabel7Left0TopWidthKHeight	AlignmenttaRightJustifyCaptionValor Inicial :  TLabelLabel8LeftTopWidth� Height	AlignmenttaRightJustifyCaptionValor Inicial Cheques :  	TnumericoEValInicialLeftTopWidthyHeightACampoObrigatorioACorFocoFPrincipal.CorFocoANaoUsarCorNegativoColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder   	TnumericoEValChequesLeft� TopWidthyHeightACampoObrigatorioACorFocoFPrincipal.CorFocoANaoUsarCorNegativoColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder   TPanelColorPanelColor2LeftTop Width�Height)AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TBitBtnBGravarLeft� TopWidthdHeightCaption&GravarDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrder OnClickBGravarClick  TBitBtn	BCancelarLeftTopWidthdHeightCaption	&CancelarDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  33�33333333?333333  39�33�3333��33?33  3939�338�3?��3  39��338�8��3�3  33�338�3��38�  339�333�3833�3  333�33338�33?�3  3331�33333�33833  3339�333338�3�33  333��33333833�33  33933333�33�33  33����333838�8�3  33�39333�3��3�3  33933�333��38�8�  33333393338�33���  3333333333333338�3  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrderOnClickBCancelarClick    TRBStringGridColorGradeLeft Top� Width�Height� AlignalClientColorclInfoBkColCountDefaultRowHeightDrawingStyle
gdsClassic
FixedColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsgoFixedVertLinegoFixedHorzLine
goVertLine
goHorzLinegoRangeSelectgoRowSizinggoColSizing	goEditinggoTabs 
ParentFontTabOrderOnGetEditMaskGradeGetEditMask	OnKeyDownGradeKeyDown
OnKeyPressGradeKeyPressOnSelectCellGradeSelectCellACorFocoFPrincipal.CorFocoALinha AColuna AEstadoGradeegNavegacaoAPermiteExcluir	APermiteInserir	APossuiDadosForadaGradeReadOnlyOnDadosValidosGradeDadosValidosOnMudouLinhaGradeMudouLinhaOnNovaLinhaGradeNovaLinhaOnDepoisExclusaoGradeDepoisExclusaoOnCarregaItemGradeGradeCarregaItemGrade	ColWidths	C�    TEditLocalizaEFormaPagamentoLeft@Top� WidthyHeightColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderVisibleACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro 	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGra	ALocalizaLocalizaASelectValida.Strings&Select I_COD_FRM, C_NOM_FRM, C_FLA_TIPfrom CADFORMASPAGAMENTOWhere I_COD_FRM =@ ASelectLocaliza.Strings&Select I_COD_FRM, C_NOM_FRM, C_FLA_TIPfrom CADFORMASPAGAMENTOWhere C_NOM_FRM Like '@%'order by C_NOM_FRM APermitirVazio	AInfo.CampoCodigo	I_COD_FRMAInfo.CampoNome	C_NOM_FRMAInfo.Nome1   CódigoAInfo.Nome2NomeAInfo.Tamanho1AInfo.Tamanho2(AInfo.Tamanho3 AInfo.TituloForm!   Localiza Forma de Pagamento   AInfo.Cadastrar	AInfo.RetornoExtra1	C_NOM_FRMAInfo.RetornoExtra2	C_FLA_TIPADarFocoDepoisdoLocalizaOnCadastrarEFormaPagamentoCadastrar	OnRetornoEFormaPagamentoRetorno  TConsultaPadraoLocaliza
ACadastrarAAlterarLeftH  TValidaGravacaoValidaGravacao1AComponentePanelColor1ABotaoGravarBGravarLeft� Top   