�
 TFDESPESAS 0�  TPF0
TFDespesas	FDespesasLeft� Top� Hint$Cadastrar e consultar despesas fixasHelpContext�ActiveControlDBEditColor4BorderIconsbiSystemMenu CaptionDespesasClientHeightiClientWidth7Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPainelGradientePainelGradiente1Left Top Width7Height)AlignalTop	AlignmenttaLeftJustifyCaption   Despesas  Fixa   Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGraExplicitTop  TPanelColorPanelColor1Left Top)Width7Height@AlignalClientColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TBevelBevel3Left"Top� Width	HeightYShapebsFrame  TBevelBevel2Left
Top� Width	HeightYShapebsFrame  TLabelLabel1LeftOTop%Width2Height	AlignmenttaRightJustifyCaption	   Código :  TLabelLabel2Left@Top>WidthAHeight	AlignmenttaRightJustifyCaption   Descrição:  TLabelLabel3Left	TopXWidthyHeight	AlignmenttaRightJustifyCaptionEm Atividade(S/N)?   TLabelLabel5LeftbTop
Width"Height	AlignmenttaRightJustifyCaptionFilial :  TLabelLabel6LeftTop� Width� Height6AutoSizeCaption\   Informe a quantidade de meses para o sistema  fazer uma média para as novas despesas fixas.WordWrap	  TLabelLabel7Left;Top� Width� Height(AutoSizeCaption>Informe a quantidade de meses a ser gerados as despesas fixas.WordWrap	  TLabelLabel10Left�Top� Width,HeightCaptionMeses.  TLabelLabel8Left�TopXWidth� HeightAutoSizeFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel4LeftToprWidthiHeight	AlignmenttaRightJustifyCaptionPlano de Contas :  TLabelLPlanoLeftToprWidth*HeightCaptionLPlano  TDBEditColor
EDescricaoLeft� Top:Width�HeightColorclInfoBk	DataField	C_NOM_DES
DataSourceDataCadDespesasFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAFormatoData  TDBEditColor
EAtividadeLeft� TopTWidth!HeightCharCaseecUpperCaseColorclInfoBk	DataField	C_ATI_DES
DataSourceDataCadDespesasFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder
OnKeyPressEAtividadeKeyPressACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAFormatoData  TDBEditColorDBEditColor4Left� TopWidthxHeightColorclInfoBk	DataField	I_EMP_FIL
DataSourceDataCadDespesasFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 	MaxLength2
ParentFontReadOnly	TabOrder ACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAFormatoData  TDBKeyViolation2EKeyViolationLeft� Top WidthyHeightColorclInfoBk	DataField	I_COD_DES
DataSourceDataCadDespesasFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAFormatoData	ADataBaseFPrincipal.BaseDadosATabelaCaddespesas
AEditChaveDBEditColor4  TDBEditColorEMesesPreviaLeft_Top� Width*HeightColorclInfoBk	DataField	I_MES_MED
DataSourceDataCadDespesasFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 	MaxLength2
ParentFontTabOrderACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAFormatoData  TDBEditColorEMesesGerarLeftwTop� Width*HeightColorclInfoBk	DataField	I_MES_GER
DataSourceDataCadDespesasFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 	MaxLength2
ParentFontTabOrderACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAFormatoData  TBotaoGravarBotaoGravar1Left� TopWidthdHeightHintGravar|Grava no registroHelpContextCaption&GravarDoubleBuffered	Enabled
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrderOnDepoisAtividadeBFecharClickAFecharAposOperacao  TBotaoCancelarBotaoCancelar1LeftTopWidthdHeightHint!   Cancelar|Cancela operação atualHelpContextCancel	Caption	&CancelarDoubleBuffered	Enabled
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  33�33333333?333333  39�33�3333��33?33  3939�338�3?��3  39��338�8��3�3  33�338�3��38�  339�333�3833�3  333�33338�33?�3  3331�33333�33833  3339�333338�3�33  333��33333833�33  33933333�33�33  33����333838�8�3  33�39333�3��3�3  33933�333��38�8�  33333393338�33���  3333333333333338�3  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrderOnDepoisAtividadeBFecharClickAFecharAposOperacao  
TEditColorEPlanoLeft� TopnWidthyHeightColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontReadOnly	TabOrderACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro    TDataSourceDataCadDespesasAutoEditDataSetCadDespesasLeft� Top  TQueryAuxDatabaseName	BaseDadosLeft� Top  TProximoCodigoFilialProximoCodigo	ADataBaseFPrincipal.BaseDadosACampoCodigoCadDespesasI_COD_DESLeft� Top  TSQLCadDespesas
Aggregates Params ProviderNameInternalProviderAfterInsertCadDespesasAfterInsert
BeforePostCadDespesasBeforePost	AfterPostCadDespesasAfterPostAGravarBotaoGravar1	ACancelarBotaoCancelar1ASqlQuery.Params SQL.StringsSelect * from CadDespesas LeftxTop TIntegerFieldCadDespesasI_COD_DES	FieldName	I_COD_DESOriginCADDESPESAS.I_COD_DES  TStringFieldCadDespesasC_NOM_DES	FieldName	C_NOM_DESOriginCADDESPESAS.C_NOM_DESSize2  TStringFieldCadDespesasC_ATI_DES	FieldName	C_ATI_DESOriginCADDESPESAS.C_ATI_DESSize  TIntegerFieldCadDespesasI_EMP_FIL	FieldName	I_EMP_FILOriginCADDESPESAS.I_EMP_FIL  TIntegerFieldCadDespesasI_MES_MED	FieldName	I_MES_MEDOriginCADDESPESAS.I_MES_MED  TIntegerFieldCadDespesasI_MES_GER	FieldName	I_MES_GEROriginCADDESPESAS.I_MES_GER  TStringFieldCadDespesasC_CLA_PLA	FieldName	C_CLA_PLAOriginCADDESPESAS.C_CLA_PLASize
  TIntegerFieldCadDespesasI_COD_EMP	FieldName	I_COD_EMPOriginCADDESPESAS.I_COD_EMP  
TDateFieldCadDespesasD_ULT_ALT	FieldName	D_ULT_ALTOriginCADDESPESAS.D_ULT_ALT   TConsultaPadraoLocaliza
ACadastrarAAlterarLeft� Top   