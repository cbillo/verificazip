�
 TFALTERAESTAGIOAGENDAMENTO 00  TPF0TFAlteraEstagioAgendamentoFAlteraEstagioAgendamentoLeft� Top� Caption   Altera Estágio AgendamentoClientHeight� ClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPainelGradientePainelGradiente1Left Top WidthHeight)AlignalTop	AlignmenttaLeftJustifyCaption!      Altera Estágio Agendamento   Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGra  TPanelColorPanelColor1Left Top)WidthHeight� AlignalClientColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TLabelLabel2LeftDTopWidth/Height	AlignmenttaRightJustifyCaption	Cliente :  TSpeedButtonBClienteLeft� TopWidthHeightEnabled
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel10Left� TopWidth<HeightCaption                      TLabelLabel13Left>Top*Width5Height	AlignmenttaRightJustifyCaption
   Usuário :  TSpeedButtonBUsuarioLeft� Top&WidthHeightEnabled
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel14Left� Top*Width<HeightCaption                      TBevelBevel1Left TopDWidth�HeightShape	bsTopLine  TLabelLabel1Left?Top^Width4Height	AlignmenttaRightJustifyCaption
   Estágio :  TSpeedButtonSpeedButton1Left� TopZWidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel3Left� Top^Width<HeightCaption                      TEditLocalizaEClienteLeftxTopWidthYHeightColorclInfoBkEnabledFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder ACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLabel10ABotaoBCliente	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGra	ALocalizaConsultaPadrao1ASelectValida.StringsSelect * from CADCLIENTESWhere I_COD_CLI = @ ASelectLocaliza.StringsSelect * from CADCLIENTES Where C_NOM_CLI Like '@%' APermitirVazio	ASomenteNumeros	AInfo.CampoCodigo	I_COD_CLIAInfo.CampoNome	C_NOM_CLIAInfo.Nome1   CódigoAInfo.Nome2NomeAInfo.Tamanho1AInfo.Tamanho2(AInfo.Tamanho3 AInfo.TituloForm   Localiza Cliente   AInfo.Cadastrar	ADarFocoDepoisdoLocaliza	  TEditLocalizaEUsuarioLeftxTop&WidthYHeightColorclInfoBkEnabledFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLabel14ABotaoBUsuario	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGra	ALocalizaConsultaPadrao1ASelectValida.StringsSelect * from CADUSUARIOSWhere I_COD_USU =  @ ASelectLocaliza.StringsSelect * from CADUSUARIOSWhere C_NOM_USU like '@%'and C_USU_ATI = 'S'order by c_nom_usu APermitirVazio	ASomenteNumeros	AInfo.CampoCodigo	I_COD_USUAInfo.CampoNome	C_NOM_USUAInfo.Nome1   CódigoAInfo.Nome2NomeAInfo.Tamanho1AInfo.Tamanho2(AInfo.Tamanho3 AInfo.TituloForm      Localiza Usuário  ADarFocoDepoisdoLocaliza	  TEditLocalizaEEstagioLeftxTopZWidthYHeightColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLabel3ABotaoSpeedButton1	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGra	ALocalizaConsultaPadrao1ASelectValida.StringsSelect * from ESTAGIOAGENDAWhere CODESTAGIO = @ ASelectLocaliza.StringsSelect * from ESTAGIOAGENDAWhere NOMESTAGIO like '@%'order by nomestagio APermitirVazio	ASomenteNumeros	AInfo.CampoCodigo
CODESTAGIOAInfo.CampoNome
NOMESTAGIOAInfo.Nome1   CódigoAInfo.Nome2NomeAInfo.Tamanho1AInfo.Tamanho2(AInfo.Tamanho3 AInfo.TituloForm!   Localiza Estagio Agendamento  AInfo.Cadastrar	ADarFocoDepoisdoLocaliza	   TPanelColorPanelColor2Left Top� WidthHeight)AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TBitBtnBGravarLeft� TopWidthdHeightCaption&GravarDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrder OnClickBGravarClick  TBitBtn	BCancelarLeftTopWidthdHeightCaption	&CancelarDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  33�33333333?333333  39�33�3333��33?33  3939�338�3?��3  39��338�8��3�3  33�338�3��38�  339�333�3833�3  333�33338�33?�3  3331�33333�33833  3339�333338�3�33  333��33333833�33  33933333�33�33  33����333838�8�3  33�39333�3��3�3  33933�333��38�8�  33333393338�33���  3333333333333338�3  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrderOnClickBCancelarClick   TConsultaPadraoConsultaPadrao1
ACadastrarAAlterarLeftTop   