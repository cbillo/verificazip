�
 TFCIDADES 0�6  TPF0	TFCidadesFCidadesLeft[Top|HintCadastro e consulta de cidadesHelpContext5ActiveControl	EConsultaBorderIconsbiSystemMenu CaptionCidadesClientHeight�ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPainelGradientePainelGradiente1Left Top Width�Height)AlignalTop	AlignmenttaLeftJustifyCaption  Cidades  Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGra  TPanelColorPanelColor1Left Top)Width
Height�AlignalClientColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TLabelLabel2Left4TopWidth2Height	AlignmenttaRightJustifyCaption	   Código :  TBevelBevel1Left Top� Width�Height
Shape	bsTopLine  TLabelLabel1LeftTop� WidthHeightCaptionNome para consulta :  TLabelLabel4Left5TopGWidth1Height	AlignmenttaRightJustifyCaptionEstado :  TSpeedButtonBPaisLeft� TopCWidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel5Left� TopGWidthHeight  TLabelLabel6Left;Top)Width+Height	AlignmenttaRightJustifyCaptionNome :  TLabelLabel3LeftTopcWidthbHeight	AlignmenttaRightJustifyCaptionQuilometragem :  TLabelLabel7LeftbTopcWidthTHeight	AlignmenttaRightJustifyCaption   Código IBGE :  TLocalizaEdit	EConsultaLeftTop� Width�HeightHelpContext$ColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATabela
CadCidadesASelect.Strings4Select * from CAD_CIDADES Where DES_CIDADE like '@%' AOrdemorder by COD_CIDADE  TGridIndiceGGridLeftTop� Width�Height� HelpContext%ColorclInfoBk
DataSourceDataCadCaixa
FixedColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgConfirmDeletedgCancelOnExit 
ParentFontReadOnly	TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlueTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style ACorFocoFPrincipal.CorFocoAListaIndice.Strings01 AListaCAmpos.Strings
COD_CIDADE
DES_CIDADE AindiceInicial ALinhaSQLOrderByOnOrdem
GGridOrdemColumnsExpanded	FieldName
COD_CIDADETitle.Caption   Código  [>]WidthGVisible	 Expanded	FieldName
DES_CIDADETitle.Caption   Descrição  [+]Width[Visible	 Expanded	FieldNameQTD_KMTitle.AlignmenttaRightJustifyTitle.CaptionKMWidth*Visible	 Expanded	FieldNameValDeslocamentoTitle.CaptionValor Desloc.Visible	    TDBEditLocalizaEEstadoLeftlTopCWidthEHeightHelpContext5CharCaseecUpperCaseColor�� 	DataField
COD_ESTADO
DataSourceDataCadCaixaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnChangeCidadeChangeACampoObrigatorio	AIgnorarCorACorFocoFPrincipal.CorFocoAFormatoDataAIgnorarTipoLetraATextoLabel5ABotaoBPais	ADataBaseFPrincipal.BaseDados	ALocalizaLocalizaASelectValida.StringsSELECT * FROM CAD_ESTADOSWHERE COD_ESTADO = '@' ASelectLocaliza.StringsSELECT * FROM CAD_ESTADOSWHERE DES_ESTADO LIKE '@%' ACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGraAPermitirVazio	AInfo.CampoCodigo
COD_ESTADOAInfo.CampoNome
DES_ESTADOAInfo.Nome1   CódigoAInfo.Nome2SiglaAInfo.Nome3   DescriçãoAInfo.Tamanho1
AInfo.Tamanho2(AInfo.Tamanho3 AInfo.TituloForm  Estados  AInfo.Cadastrar	AInfo.RetornoExtra1COD_PAISOnCadastrarEEstadoCadastrar	OnRetornoEEstadoRetorno  TDBEditColorDBEditColor1LeftlTop%Width�HeightHelpContext5Color�� 	DataField
DES_CIDADE
DataSourceDataCadCaixaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnChangeCidadeChangeACampoObrigatorio	AIgnorarCorACorFocoFPrincipal.CorFocoAFormatoDataAIgnorarTipoLetra  TDBEditColorDBEditColor2LeftlTop_WidthEHeightHelpContext5ColorclInfoBk	DataFieldQTD_KM
DataSourceDataCadCaixaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnChangeCidadeChangeACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAFormatoDataAIgnorarTipoLetra  TDBKeyViolationECodigoLeftkTopWidthEHeightColor�� 	DataField
COD_CIDADE
DataSourceDataCadCaixaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder ACampoObrigatorio	AIgnorarCorACorFocoFPrincipal.CorFocoAFormatoDataAIgnorarTipoLetra	ADataBaseFPrincipal.BaseDadosATabelaCAD_CIDADES  TDBEditColorECodigoIBGELeft�Top_WidthEHeightHelpContext5ColorclInfoBk	DataField
COD_FISCAL
DataSourceDataCadCaixaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnChangeCidadeChangeACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAFormatoDataAIgnorarTipoLetra   TPanelColorPanelColor2Left
Top)WidthvHeight�AlignalRightColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TMoveBasicoMoveBasico1Left
TopWidthdHeightHelpContextAProximoCaption AProximoBitmap.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 33333333?�333333Ds333333w��33333tDs333337w?�33334DDs33337?w?�3333DDDs3333s�w?�333tDDDs3337�3w?�334DDDDs337?33w?�33DDDDDs?����w���������wwwwww3w33�����333s33?w33<����3337�3?w333<���333373?w3333���33333s?w3333<��333337�w33333<�3333337w333333�3333333w3333333AAnteriorCaption AAnteriorBitmap.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 333333333333333�3333337D333333�s333337DG33333�w�33337DDC3333�s733337DDD3333�s3s3337DDDG333�s37�337DDDDC33�s337337DDDDD337�������������s7wwwwws3�����337s�33s�333�����337s�37�3333����3337s�7?33333���33337s�s�33333���33337s��333333��333337w�3333333�3333337scaptionMoveBasico1  TBotaoCadastrarBotaoCadastrar1Left
Top@WidthdHeightHintIncluir|Incluir novo registroHelpContextCaption
&CadastrarDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333�33;3�3333�;�w{�w{�7����s3�    33wwwwww330����337�333330����337��?�330����337�sws330����3?����?��������ww�wssw;������7w��?�ww30��  337�swws330���3337��7�330��3337�sw�330�� ;�337��w7�3�  3�33www3w�;�3;�3;�7s37s37s�33;333;s3373337	NumGlyphsParentDoubleBufferedTabOrderAFocoECodigo  TBotaoAlterarBAlterarLeft
Top]WidthdHeightHint#Alterar|Altera registro selecionadoHelpContextCaption&AlterarDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� P    UUUWwwww_UU����UUUUU_�_���   UUUwwuw��𿿰_UW��Ww�� ��u�WwUUw����Wu��Uw�  ��WWwwUUw�����Uu����w��   �UWwwwUw�� �� UUuw��w��� UUUWWwuU���UU���uu�U ����UUw�����_UPppppUW����u�PppppP�UWWWWWWwUUUuuuuuUuU	NumGlyphsParentDoubleBufferedTabOrderAFocoDBEditColor1  TBotaoExcluirBotaoExcluir1Left
TopzWidthdHeightHint"Excluir|Exclui registro seleciondoHelpContextCaption&ExcluirDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� P  UUUWwwuU�U    UPUUwwwwU�UU U PUUUw�wWUUU UPUUUUw�W_�UUPP UUUW�uw�UUU PPUUUw�Ww�UUU	�UUU�uwww�UPU	��UW_wwwu�PP��0UWu�wwW_U PU	UwWUwuuuUUUUP��0UU_UWWWWUUUU3UUuUUuuUUUUUUP��UU�UUW_UUPUUUU�UWUUUUu�UUUUUUP�UUUUUUW_UUUUUUUUUUUUUUu	NumGlyphsParentDoubleBufferedTabOrderATextoExcluirCadCidadesDES_CIDADE  TBotaoGravarBotaoGravar1Left
Top� WidthdHeightHintGravar|Grava no registroHelpContextCaption&GravarDoubleBuffered	Enabled
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrderAFecharAposOperacao  TBotaoCancelarBotaoCancelar1Left
Top� WidthdHeightHint!   Cancelar|Cancela operação atualHelpContextCancel	Caption	&CancelarDoubleBuffered	Enabled
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  33�33333333?333333  39�33�3333��33?33  3939�338�3?��3  39��338�8��3�3  33�338�3��38�  339�333�3833�3  333�33338�33?�3  3331�33333�33833  3339�333338�3�33  333��33333833�33  33933333�33�33  33����333838�8�3  33�39333�3��3�3  33933�333��38�8�  33333393338�33���  3333333333333338�3  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrderAFecharAposOperacao  TBitBtnBFecharLeft
Top<WidthdHeightHelpContextCaption&FecharDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphsParentDoubleBufferedTabOrderOnClickBFecharClick  TBitBtnBitBtn1Left
Top� WidthdHeightHelpContext)Caption&EstadosDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� UUUUUUUUUU����UUUP   UUUWwww�UU	��� UUUuUUUw_UP����UW�UUUu� Uw�����_      wwwwww_uPp���Ww�UUu�U ����Uw�U�WWUP�p � UW_�wuUwUU ��� UUw���wUUP   UUWwwwUUP���UUW���UUP� � UUW�wUwuUUP���UUUW�U�UUUP�p UUUW_�wuUUUU UUUUUUwuUUU	NumGlyphsParentDoubleBufferedTabOrderOnClickBitBtn1Click  TBitBtnBBAjudaLeft
Top]WidthdHeightCaption&AjudaDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 33333333333���3333?y33333�77?�33;����3337swsw?33��y��33s3733s�;������37�33�37�?������37337�37?����{���337�33��������337�3��������333w�3��w�y���3?�73����y���s�w�73s?��y��37�w��s7�;������37?7ww3733������33s�ws?s33;����3337s��w3333?��333337ww333	NumGlyphsParentDoubleBufferedTabOrderOnClickBBAjudaClick   TDataSourceDataCadCaixaAutoEditDataSet
CadCidadesLeft3Top  TSQL
CadCidades
Aggregates PacketRecordsParams ProviderNameInternalProviderAfterInsertCadCidadesAfterInsert	AfterEditCadCidadesAfterEdit
BeforePostCadCidadesBeforePost	AfterPostCadCidadesAfterPostAfterCancelCadCidadesAfterCancelAfterScrollCadCidadesAfterScrollOnCalcFieldsCadCidadesCalcFields
ABarraMoveMoveBasico1AFecharFormularioBFecharAGravarBotaoGravar1	ACancelarBotaoCancelar1AAlterarBAlterarAExcluirBotaoExcluir1
ACadastrarBotaoCadastrar1ASQlConnectionFPrincipal.BaseDadosASqlQuery.MaxBlobSize�ASqlQuery.Params ASqlQuery.SQL.StringsSelect * from CAD_CIDADESorder by DES_CIDADE ASqlQuery.SQLConnectionFPrincipal.BaseDadosSQL.StringsSelect * from CAD_CIDADESorder by DES_CIDADE LeftTop TFMTBCDFieldCadCidadesCOD_CIDADE	FieldName
COD_CIDADEOriginCAD_CIDADES.COD_CIDADE  TWideStringFieldCadCidadesCOD_ESTADO	FieldName
COD_ESTADOOriginCAD_CIDADES.COD_ESTADOSize  TWideStringFieldCadCidadesCOD_PAIS	FieldNameCOD_PAISOriginCAD_CIDADES.COD_PAISSize  TWideStringFieldCadCidadesDES_CIDADE	FieldName
DES_CIDADEOriginCAD_CIDADES.DES_CIDADESize2  TSQLTimeStampFieldCadCidadesDAT_ULTIMA_ALTERACAO	FieldNameDAT_ULTIMA_ALTERACAOOrigin CAD_CIDADES.DAT_ULTIMA_ALTERACAO  TFMTBCDFieldCadCidadesQTD_KM	FieldNameQTD_KMOriginBASEDADOS.CAD_CIDADES.QTD_KM  TFMTBCDFieldCadCidadesValDeslocamento	FieldKindfkCalculated	FieldNameValDeslocamento
Calculated	  TWideStringFieldCadCidadesCOD_FISCAL	FieldName
COD_FISCALSize   TValidaGravacaoValidaGravacaoAComponentePanelColor1ABotaoGravarBotaoGravar1Left� Top  TConsultaPadraoLocaliza
ACadastrarAAlterarLeft� Top   