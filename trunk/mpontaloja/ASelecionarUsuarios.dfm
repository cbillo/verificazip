�
 TFSELECIONARUSUARIOS 0�  TPF0TFSelecionarUsuariosFSelecionarUsuariosLeft� Top� Caption   Selecionar UsuáriosClientHeightUClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoOwnerFormCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPanelColorPanelColor1Left Top)WidthHeight0AlignalTopColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder AUsarCorFormACorFormFPrincipal.CorForm TLabelLabel1Left.TopWidth+Height	AlignmenttaRightJustifyCaptionGrupo :  TDBLookupComboBoxColorEGruposLeft\TopWidth�HeightColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style KeyField	I_COD_GRU	ListField	C_NOM_GRU
ListSourceDataCADGRUPOS
ParentFontTabOrder ACampoObrigatorioACorFocoFPrincipal.CorFoco  	TCheckBoxCMostrarTodosLeft\TopWidth�HeightCaptionMostrar todos os gruposTabOrderOnClickCMostrarTodosClick   TPanelColorPanelColor2Left TopYWidthHeight� AlignalClientColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TCheckListBox	CUsuariosLeftTopWidth	Height� OnClickCheckCUsuariosClickCheckColorclInfoBk
ItemHeightTabOrder   	TCheckBoxCSelecionarTodosLeftTopWidth�HeightCaption   Selecionar todos os usuáriosTabOrderOnClickCSelecionarTodosClick   TPanelColorPanelColor3Left Top,WidthHeight)AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TBitBtnBOKLeft� TopWidthdHeightCaptionOKDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrder OnClickBOKClick  TBitBtn	BCancelarLeft� TopWidthdHeightCaptionCancelarDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  33�33333333?333333  39�33�3333��33?33  3939�338�3?��3  39��338�8��3�3  33�338�3��38�  339�333�3833�3  333�33338�33?�3  3331�33333�33833  3339�333338�3�33  333��33333833�33  33933333�33�33  33����333838�8�3  33�39333�3��3�3  33933�333��38�8�  33333393338�33���  3333333333333338�3  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrderOnClickBFecharClick  TBitBtnBFecharLeft�TopWidthdHeightCaptionFecharDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphsParentDoubleBufferedTabOrderOnClickBFecharClick   TPainelGradientePainelGradiente1Left Top WidthHeight)AlignalTop	AlignmenttaLeftJustifyCaption     Selecionar Usuários  Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrderAConfiguracoesFPrincipal.CorPainelGra  TDataSourceDataCADGRUPOSDataSet	CADGRUPOSLeft�Top  TSQL	CADGRUPOS
Aggregates Params ProviderNameInternalProviderAfterScrollCadGruposAfterScrollASQlConnectionFPrincipal.BaseDadosASqlQuery.MaxBlobSize�ASqlQuery.Params ASqlQuery.SQL.Strings*SELECT I_COD_GRU, C_NOM_GRU FROM CADGRUPOS ASqlQuery.SQLConnectionFPrincipal.BaseDadosSQL.Strings*SELECT I_COD_GRU, C_NOM_GRU FROM CADGRUPOS Left�Top TFMTBCDFieldCADGRUPOSI_COD_GRU	FieldName	I_COD_GRURequired		Precision
Size   TWideStringFieldCADGRUPOSC_NOM_GRU	FieldName	C_NOM_GRUSize2   TSQLCADUSUARIOS
Aggregates Params ProviderNameInternalProviderASQlConnectionFPrincipal.BaseDadosASqlQuery.MaxBlobSize�ASqlQuery.Params ASqlQuery.SQL.Strings7SELECT I_COD_USU, I_COD_GRU, C_NOM_USU FROM CADUSUARIOSORDER BY C_NOM_USU ASqlQuery.SQLConnectionFPrincipal.BaseDadosSQL.Strings7SELECT I_COD_USU, I_COD_GRU, C_NOM_USU FROM CADUSUARIOSORDER BY C_NOM_USU Left0Top TFMTBCDFieldCADUSUARIOSI_COD_USU	FieldName	I_COD_USURequired		Precision
Size   TFMTBCDFieldCADUSUARIOSI_COD_GRU	FieldName	I_COD_GRU	Precision
Size   TWideStringFieldCADUSUARIOSC_NOM_USU	FieldName	C_NOM_USUSize<    