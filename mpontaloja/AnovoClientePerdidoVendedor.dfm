�
 TFNOVOCLIENTEPERDIDOVENDEDOR 0_  TPF0TFNovoClientePerdidoVendedorFNovoClientePerdidoVendedorLeftbTop� CaptionAltera Vendedor do ClienteClientHeight	ClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPainelGradientePainelGradiente1Left Top WidthHeight)AlignalTop	AlignmenttaLeftJustifyCaption   Altera Vendedor do ClienteFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGra  TPanelColorPanelColor1Left Top)WidthHeight� AlignalClientColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TLabelLabel11Left� Top� WidthsHeight	AlignmenttaRightJustifyCaptionVendedor Destino :  TSpeedButtonSpeedButton4LeftKTop� WidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLNomVendedorLeftgTop� Width9HeightCaption                     TLabelLabel1Left>TopWidth� Height	AlignmenttaRightJustifyCaptionQuantidade Dias Sem Pedido :  TLabelLabel2Left>Top+Width� Height	AlignmenttaRightJustifyCaptionQuantidade Dias Com Pedido :  TSpeedButtonSpeedButton1LeftKTopdWidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel3LeftgTopeWidth9HeightCaption                     TLabelLabel4Left� TopgWidtheHeight	AlignmenttaRightJustifyCaption   Região Vendas :  TLabelLabel5LeftTopIWidth� Height	AlignmenttaRightJustifyCaption&Qtd Dias Sem Historico Telemarketing :  TEditLocaliza	EVendedorLeftTop� WidthHHeightColor�� Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnChangeEQtdDiasChangeACampoObrigatorio	AIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLNomVendedorABotaoSpeedButton4	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGra	ALocalizaLocalizaASelectValida.StringsSelect * from CADVENDEDORESWhere I_Cod_Ven = @ ASelectLocaliza.StringsSelect * from CADVENDEDORESWhere C_Nom_Ven like '@%'and C_IND_ATI = 'S'order by c_Nom_Ven APermitirVazio	ASomenteNumeros	AInfo.CampoCodigo	I_Cod_VenAInfo.CampoNome	C_Nom_VenAInfo.Nome1   CódigoAInfo.Nome2NomeAInfo.Tamanho1AInfo.Tamanho2(AInfo.Tamanho3 AInfo.TituloForm   Localiza Vendedor   ADarFocoDepoisdoLocaliza	  	TnumericoEQtdDiasLeftTopWidthHHeightACampoObrigatorioACorFocoFPrincipal.CorFocoANaoUsarCorNegativoColorclInfoBkAMascara,0;- ,0Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder OnChangeEQtdDiasChange  	TnumericoEQtdDiasComPedidoLeftTop(WidthHHeightACampoObrigatorioACorFocoFPrincipal.CorFocoANaoUsarCorNegativoColorclInfoBkAMascara,0;- ,0Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnChangeEQtdDiasChange  TRBEditLocalizaERegiaoVendasLeftTopdWidthHHeightColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLabel3ABotaoSpeedButton1	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGraASelectValida.StringsSelect I_COD_REG, C_NOM_REG  from CADREGIAOVENDA  Where I_COD_REG = @ ASelectLocaliza.StringsSelect I_COD_REG, C_NOM_REG  from CADREGIAOVENDA  APermitirVazio	AColunasATituloColuna   CódigoATamanhoColunaACampoFiltro
ANomeCampo	I_COD_REGAMostrarNaGrade	AOrdemInicial ATituloColuna   DescriçãoATamanhoColuna(ACampoFiltro	
ANomeCampo	C_NOM_REGAMostrarNaGrade	AOrdemInicial	  ALocalizaPadraolpRegiaoVendaATituloFormulario      Localiza Região Vendas     	TCheckBoxCClienteLeftTop� WidthaHeightCaptionClienteTabOrder  	TCheckBox	CProspectLeftqTop� WidthaHeightCaptionProspectTabOrder  	TnumericoEQtdDiasSemTelemarketingLeftTopFWidthHHeightACampoObrigatorioACorFocoFPrincipal.CorFocoANaoUsarCorNegativoColorclInfoBkAMascara,0;- ,0Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnChangeEQtdDiasChange   TPanelColorPanelColor2Left Top� WidthHeight)AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TBitBtnBOKLeft� TopWidthdHeightCaption&OkDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrder OnClickBOKClick  TBitBtn	BCancelarLeftTopWidthdHeightCaption	&CancelarDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  33�33333333?333333  39�33�3333��33?33  3939�338�3?��3  39��338�8��3�3  33�338�3��38�  339�333�3833�3  333�33338�33?�3  3331�33333�33833  3339�333338�3�33  333��33333833�33  33933333�33�33  33����333838�8�3  33�39333�3��3�3  33933�333��38�8�  33333393338�33���  3333333333333338�3  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrderOnClickBCancelarClick   TConsultaPadraoLocaliza
ACadastrarAAlterarLeftlTop  TValidaGravacaoValidaGravacao1AComponentePanelColor1ABotaoGravarBOKLeft Top   