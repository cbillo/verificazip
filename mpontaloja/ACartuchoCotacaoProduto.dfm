�
 TFCARTUCHOCOTACAOCARTUCHO 0J  TPF0TFCartuchoCotacaoCartuchoFCartuchoCotacaoCartuchoLeftITop� ActiveControlGridIndice1Caption   Cartucho CotaçãoClientHeightbClientWidth\Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPainelGradientePainelGradiente1Left Top Width\Height)AlignalTop	AlignmenttaLeftJustifyCaption     Cartucho Cotação  Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGra  TPanelColorPanelColor1Left Top)Width\Height@AlignalTopColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TLabelLTextoTrocaLeftTopWidthdHeightCaptionLTextoTrocaFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel1LeftTopWidthHeightCaptionG   não existe na cotação. Deseja substituí-lo por qual produto abaixo?Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont   TPanelColorPanelColor2Left Top9Width\Height)AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TBitBtnBOkLeft� TopWidthdHeightCaptionOkDefault	DoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrder OnClickBOkClick  TBitBtn	BCancelarLeft-TopWidthdHeightCancel	CaptionCancelarDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  33�33333333?333333  39�33�3333��33?33  3939�338�3?��3  39��338�8��3�3  33�338�3��38�  339�333�3833�3  333�33338�33?�3  3331�33333�33833  3339�333338�3�33  333��33333833�33  33933333�33�33  33����333838�8�3  33�39333�3��3�3  33933�333��38�8�  33333393338�33���  3333333333333338�3  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrderOnClickBCancelarClick   TGridIndiceGridIndice1Left TopiWidth\Height� AlignalClientColorclInfoBk
DataSourceDataMovOrcamento
FixedColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgConfirmDeletedgCancelOnExit 
ParentFontTabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlueTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style ACorFocoFPrincipal.CorFocoAindiceInicial ALinhaSQLOrderBy ColumnsExpanded	FieldName	C_COD_PROTitle.Caption   CódigoVisible	 Expanded	FieldName	C_NOM_PROTitle.CaptionProdutoWidthRVisible	 Expanded	FieldName	N_QTD_PROTitle.Caption
QuantidadeWidthYVisible	    TSQLMovOrcamento
Aggregates Params ProviderNameInternalProviderASQlConnectionFPrincipal.BaseDadosASqlQuery.MaxBlobSize�ASqlQuery.Params ASqlQuery.SQLConnectionFPrincipal.BaseDadosSQL.Strings5Select PRO.I_SEQ_PRO, PRO.C_COD_PRO,  PRO.C_NOM_PRO,            MOV.N_QTD_PRO'from MOVORCAMENTOS MOV, CADPRODUTOS PRO#Where MOV.I_SEQ_PRO = PRO.I_SEQ_PRO Left Top TWideStringFieldMovOrcamentoC_COD_PRO	FieldName	C_COD_PROOriginBASEDADOS.CADPRODUTOS.C_COD_PRO  TWideStringFieldMovOrcamentoC_NOM_PRO	FieldName	C_NOM_PROOriginBASEDADOS.CADPRODUTOS.C_NOM_PROSize2  TFMTBCDFieldMovOrcamentoN_QTD_PRO	FieldName	N_QTD_PROOrigin!BASEDADOS.MOVORCAMENTOS.N_QTD_PRO  TFMTBCDFieldMovOrcamentoI_SEQ_PRO	FieldName	I_SEQ_PROOriginBASEDADOS.CADPRODUTOS.I_SEQ_PRO   TDataSourceDataMovOrcamentoDataSetMovOrcamentoLeftPTop   