�
 TFALTERAESTAGIOCHAMADO 0k$  TPF0TFAlteraEstagioChamadoFAlteraEstagioChamadoLeft/Top� ActiveControlEChamadoCaption   Altera Estágio ChamadoClientHeightClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPanelColorPanelColor1Left Top)WidthHeight� AlignalClientColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrder AUsarCorFormACorFormFPrincipal.CorForm TLabelLabel5Left(TopWidth5Height	AlignmenttaRightJustifyCaption
   Usuário :  TSpeedButtonSpeedButton2Left� TopWidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel6Left� TopWidth0HeightCaption                  TSpeedButtonSpeedButton1Left� Top^WidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel2LeftTop*WidthAHeight	AlignmenttaRightJustifyCaption	Chamado :  TLabelLabel3Left)TopbWidth4Height	AlignmenttaRightJustifyCaption
   Estágio :  TSpeedButtonBChamadoLeft� Top&WidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel1Left� Top*Width0HeightCaption                  TLabelLabel4Left� TopbWidth0HeightCaption                  TLabelLabel7LeftTopFWidthUHeight	AlignmenttaRightJustifyCaption   Estágio Atual :  TSpeedButtonSpeedButton4Left� TopAWidthHeightEnabled
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel8Left� TopIWidth0HeightCaption                Enabled  TLabelLabel9Left/Top� Width.Height	AlignmenttaRightJustifyCaptionMotivo :  TEditLocalizaEUsuarioLefthTopWidthYHeightTabStopColor�� Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontReadOnly	TabOrder OnChangeEUsuarioChangeACampoObrigatorio	AIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLabel6ABotaoSpeedButton2	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGra	ALocalizaConsultaPadrao1ASelectValida.StringsSelect * from CADUSUARIOSWhere I_COD_USU = @ ASelectLocaliza.StringsSelect * from CADUSUARIOSWHERE C_NOM_USU like '@%' APermitirVazio	ASomenteNumeros	AInfo.CampoCodigo	I_COD_USUAInfo.CampoNome	C_NOM_USUAInfo.Nome1   CódigoAInfo.Nome2NomeAInfo.Tamanho1AInfo.Tamanho2(AInfo.Tamanho3 AInfo.TituloForm      Localiza Usuário   ADarFocoDepoisdoLocaliza	  TEditLocalizaECodEstagioLefthTop^WidthYHeightColor�� Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnChangeEUsuarioChangeACampoObrigatorio	AIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLabel4ABotaoSpeedButton1	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGra	ALocalizaConsultaPadrao1ASelectValida.StringsSelect * from ESTAGIOPRODUCAOWhere CODEST = @AND TIPEST = 'A' ASelectLocaliza.StringsSelect * from ESTAGIOPRODUCAOWhere NOMEST Like '@%'and TIPEST = 'A'order by CODEST APermitirVazio	ASomenteNumeros	AInfo.CampoCodigoCODESTAInfo.CampoNomeNOMESTAInfo.Nome1   CódigoAInfo.Nome2   DescriçãoAInfo.Tamanho1AInfo.Tamanho2(AInfo.Tamanho3 AInfo.TituloForm      Localiza Estágio   AInfo.Cadastrar	AInfo.RetornoExtra1INDOBSADarFocoDepoisdoLocaliza	OnSelectECodEstagioSelect	OnRetornoECodEstagioRetorno  TEditLocalizaEChamadoLefthTop&WidthYHeightColor�� Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnChangeEUsuarioChangeACampoObrigatorio	AIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLabel1ABotaoBChamado	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGra	ALocalizaConsultaPadrao1ASelectLocaliza.Strings$Select CLI.C_NOM_CLI, COT.I_LAN_ORC 'from CADCLIENTES CLI, CADORCAMENTOS COT#Where CLI.I_COD_CLI = COT.I_COD_CLIand CLI.C_NOM_CLI LIKE '@%' APermitirVazio	AInfo.CampoCodigo
NUMCHAMADOAInfo.CampoNome	C_NOM_CLIAInfo.Nome1ChamadoAInfo.Nome2ClienteAInfo.Tamanho1AInfo.Tamanho2(AInfo.Tamanho3 AInfo.TituloForm     Localiza Estágio   AInfo.RetornoExtra1
CODESTAGIOADarFocoDepoisdoLocaliza	OnSelectEChamadoSelect	OnRetornoEChamadoRetorno  TEditLocalizaEEstagioAtualLefthTopBWidthYHeightColorclInfoBkEnabledFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLabel8ABotaoSpeedButton4	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGra	ALocalizaConsultaPadrao1ASelectValida.StringsSelect * from ESTAGIOPRODUCAOWhere CODEST = @ ASelectLocaliza.StringsSelect * from ESTAGIOPRODUCAOWhere NOMEST Like '@%'order by CODEST APermitirVazio	ASomenteNumeros	AInfo.CampoCodigoCODESTAInfo.CampoNomeNOMESTAInfo.Nome1   CódigoAInfo.Nome2   DescriçãoAInfo.Tamanho1AInfo.Tamanho2(AInfo.Tamanho3 AInfo.TituloForm      Localiza Estágio   AInfo.Cadastrar	ADarFocoDepoisdoLocaliza	  
TMemoColorEMotivoLefthTopxWidth�Height8ColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderACampoObrigatorioACorFocoFPrincipal.CorFoco   TPanelColorPanelColor2Left Top� WidthHeight)AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TBitBtnBGravarLeft� TopWidthdHeightCaption&GravarDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrder OnClickBGravarClick  TBitBtn	BCancelarLeftTopWidthdHeightCaption	&CancelarDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  33�33333333?333333  39�33�3333��33?33  3939�338�3?��3  39��338�8��3�3  33�338�3��38�  339�333�3833�3  333�33338�33?�3  3331�33333�33833  3339�333338�3�33  333��33333833�33  33933333�33�33  33����333838�8�3  33�39333�3��3�3  33933�333��38�8�  33333393338�33���  3333333333333338�3  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrderOnClickBCancelarClick   TPainelGradientePainelGradiente1Left Top WidthHeight)AlignalTop	AlignmenttaLeftJustifyCaption      Altera Estágio Chamado   Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrderAConfiguracoesFPrincipal.CorPainelGra  TConsultaPadraoConsultaPadrao1
ACadastrarAAlterarLeftH  TValidaGravacaoValidaGravacao1AComponentePanelColor1ABotaoGravarBGravarLeft   