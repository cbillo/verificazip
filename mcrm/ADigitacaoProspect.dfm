�
 TFDIGITACAOPROSPECT 040  TPF0TFDigitacaoProspectFDigitacaoProspectLeftKTop� Caption   Digitação ProspectClientHeight�ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoOwnerFormCenterWindowStatewsMaximizedOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPainelGradientePainelGradiente1Left Top Width�Height)AlignalTop	AlignmenttaLeftJustifyCaption      Digitação Prospect   Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGra  TPanelColorPanelColor1Left Top)Width�Height AlignalTopColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TSpeedButtonSpeedButton1Left� TopWidthHeight
Glyph.Data
z  v  BMv      v   (                   �  �               �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333333333333?3333330 333333�w333333 33333?ws333330 333333�w333333 333?�?ws337 ;p333?ws�w333ww �333w37ws330��p3337�337�33w����s3373337?33����33333333����33333333����33s�333s33w����s337�337�330��p3337?�3�3333ww3333w?�s33337 333333ws3333	NumGlyphs  TLabelLabel1Left
TopWidthBHeight	AlignmenttaRightJustifyCaption
Vendedor :  TLabelLabel2Left� Top	WidthBHeightCaption                        TRBEditLocalizaECodVendedorLeftPTopWidth9HeightColor�� Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder OnChangeECodVendedorChangeACampoObrigatorio	AIgnorarCorACorFocoFPrincipal.CorFocoAInteiro ATextoLabel2ABotaoSpeedButton1	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGraASelectValida.StringsSelect I_COD_VEN, C_NOM_VEN  from CADVENDEDORES  Where I_COD_VEN = @ ASelectLocaliza.StringsSelect I_COD_VEN, C_NOM_VEN  from CADVENDEDORES  Where C_IND_ATI = 'S' APermitirVazio	AColunasATituloColuna   CódigoATamanhoColunaACampoFiltro
ANomeCampo	I_COD_VENAMostrarNaGrade	AOrdemInicial ATituloColunaNomeATamanhoColuna(ACampoFiltro	
ANomeCampo	C_NOM_VENAMostrarNaGrade	AOrdemInicial	  ALocalizaPadrao
LpVendedorATituloFormulario   Localiza Vendedor     TRBEditLocalizaERamoAtividadeLeftTopWidth9HeightColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderVisibleACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro 	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGraASelectValida.Strings.Select COD_RAMO_ATIVIDADE, NOM_RAMO_ATIVIDADE  from RAMO_ATIVIDADE  Where COD_RAMO_ATIVIDADE = @ ASelectLocaliza.Strings.Select COD_RAMO_ATIVIDADE, NOM_RAMO_ATIVIDADE  from RAMO_ATIVIDADE  APermitirVazio	AColunasATituloColuna   CódigoATamanhoColunaACampoFiltro
ANomeCampoCOD_RAMO_ATIVIDADEAMostrarNaGrade	AOrdemInicial ATituloColuna   DescriçãoATamanhoColuna(ACampoFiltro	
ANomeCampoNOM_RAMO_ATIVIDADEAMostrarNaGrade	AOrdemInicial	  ALocalizaPadraolpRamoAtividadeATituloFormulario   Localiza Ramo Atividade 	OnRetornoERamoAtividadeRetorno  TRBEditLocalizaEUFLeft`TopWidth9HeightColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderVisibleACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro 	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGraASelectValida.Strings(Select COD_ESTADO, DES_ESTADO, COD_PAIS  from CAD_ESTADOS  Where COD_ESTADO = '@' ASelectLocaliza.Strings(Select COD_ESTADO, DES_ESTADO, COD_PAIS  from CAD_ESTADOS  APermitirVazio	AColunasATituloColunaSiglaATamanhoColunaACampoFiltro
ANomeCampo
COD_ESTADOAMostrarNaGrade	AOrdemInicial ATituloColunaNome EstadoATamanhoColuna(ACampoFiltro	
ANomeCampo
DES_ESTADOAMostrarNaGrade	AOrdemInicial	 ATituloColuna   PaísATamanhoColunaACampoFiltro
ANomeCampoCOD_PAISAMostrarNaGrade	AOrdemInicial  ALocalizaPadraolpUFATituloFormulario   Localiza UF 	OnRetorno
EUFRetorno  TRBEditLocalizaESuspectLeftTopWidth9HeightColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderVisibleACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro 	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGraASelectValida.Strings8Select CODPROSPECT, NOMPROSPECT, NOMFANTASIA, DESCIDADE  from PROSPECT  Where CODPROSPECT = @ ASelectLocaliza.Strings8Select CODPROSPECT, NOMPROSPECT, NOMFANTASIA, DESCIDADE  from PROSPECT  APermitirVazio	AColunasATituloColuna   CódigoATamanhoColunaACampoFiltro
ANomeCampoCODPROSPECTAMostrarNaGrade	AOrdemInicial ATituloColunaNomeATamanhoColuna(ACampoFiltro	
ANomeCampoNOMPROSPECTAMostrarNaGrade	AOrdemInicial	 ATituloColunaNome FantasiaATamanhoColuna(ACampoFiltro	
ANomeCampoNOMFANTASIAAMostrarNaGrade	AOrdemInicial ATituloColunaCidadeATamanhoColunaACampoFiltro	
ANomeCampo	DESCIDADEAMostrarNaGrade	AOrdemInicial  ALocalizaPadrao	lpSuspectATituloFormulario   Localiza Suspect 	OnRetornoESuspectRetorno  TRBEditLocalizaEHistoricoLigacaoLeftHTopWidth9HeightColor�� Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderVisibleACampoObrigatorio	AIgnorarCorACorFocoFPrincipal.CorFocoAInteiro 	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGraASelectValida.Strings"Select CODHISTORICO, DESHISTORICO  from HISTORICOLIGACAO  Where CODHISTORICO = @AND INDCADASTRORAPIDO = 'S' ASelectLocaliza.Strings"SELECT CODHISTORICO, DESHISTORICO  from HISTORICOLIGACAO Where INDCADASTRORAPIDO = 'S' APermitirVazioAColunasATituloColuna   CódigoATamanhoColunaACampoFiltro
ANomeCampoCODHISTORICOAMostrarNaGrade	AOrdemInicial ATituloColuna   DescriçãoATamanhoColunaACampoFiltro	
ANomeCampoDESHISTORICOAMostrarNaGrade	AOrdemInicial	  ALocalizaPadraolpPersonalizadoATituloFormulario"      Localiza Historico Ligação   	OnRetornoEHistoricoLigacaoRetorno  TRBEditLocalizaECidadeLeft�TopWidthRHeightColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderVisibleACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro 	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGraASelectValida.StringsSELECT * from CAD_CIDADESWhere DES_CIDADE = '@' ASelectLocaliza.StringsSELECT * from CAD_CIDADES APermitirVazio	AColunasATituloColunaCidadeATamanhoColuna(ACampoFiltro	
ANomeCampo
DES_CIDADEAMostrarNaGrade	AOrdemInicial ATituloColunaUFATamanhoColunaACampoFiltro	
ANomeCampo
COD_ESTADOAMostrarNaGrade	AOrdemInicial	  ALocalizaPadraolpPersonalizado	OnRetornoECidadeRetorno   TRBStringGridColorGradeLeft TopIWidth�HeightJAlignalClientColorclInfoBkColCountDefaultRowHeightDrawingStyle
gdsClassic
FixedColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsgoFixedVertLinegoFixedHorzLine
goVertLine
goHorzLinegoRangeSelectgoRowSizinggoColSizing	goEditinggoTabs 
ParentFontTabOrderOnGetEditMaskGradeGetEditMask	OnKeyDownGradeKeyDown
OnKeyPressGradeKeyPressOnSelectCellGradeSelectCellACorFocoFPrincipal.CorFocoALinha AColunaAEstadoGradeegNavegacaoAPermiteExcluir	APermiteInserir	APossuiDadosForadaGradeReadOnlyOnDadosValidosGradeDadosValidosOnMudouLinhaGradeMudouLinhaOnNovaLinhaGradeNovaLinhaOnCarregaItemGradeGradeCarregaItemGrade	ColWidthsS4)� � � � � � � W� �   TPanelColorPanelColor2Left Top�Width�Height)AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TBitBtnBGravarLeftnTopWidthdHeightCaption&GravarDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrder OnClickBGravarClick  TBitBtnBAgendarLeft
TopWidthdHeightCaptionAgendarDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 333333333333�333333<333333�w�3333<���33337w73333�3333ssw�33< ����33�w3773<����37w?33sw�������ss�377 �����w37?33sw������s�3s�3770������7?37?3?s3��� 33s�3s�w330��� 3337?37w3333�33333s�s333330 3333337w333333333333333333333333333333333333	NumGlyphsParentDoubleBufferedTabOrderOnClickBAgendarClick  TBitBtnBFecharLeft%TopWidthdHeightHelpContextCaption&FecharDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphsParentDoubleBufferedTabOrderOnClickBFecharClick  TBitBtn	BCancelarLeft�TopWidthdHeightCaption	&CancelarDoubleBuffered	
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  33�33333333?333333  39�33�3333��33?33  3939�338�3?��3  39��338�8��3�3  33�338�3��38�  339�333�3833�3  333�33338�33?�3  3331�33333�33833  3339�333338�3�33  333��33333833�33  33933333�33�33  33����333838�8�3  33�39333�3��3�3  33933�333��38�8�  33333393338�33���  3333333333333338�3  333333333333333333  	NumGlyphsParentDoubleBufferedTabOrderOnClickBCancelarClick   TRBEditLocalizaEClienteLeft� Top0Width9HeightColorclInfoBkFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderVisibleACampoObrigatorioAIgnorarCorACorFocoFPrincipal.CorFocoAInteiro 	ADataBaseFPrincipal.BaseDadosACorFormFPrincipal.CorFormACorPainelGraFPrincipal.CorPainelGraASelectValida.Strings2Select I_COD_CLI, C_NOM_CLI, C_NOM_FAN, C_CID_CLI  from CADCLIENTES ( Where I_COD_CLI = @ and C_IND_PRC = 'S' ASelectLocaliza.Strings2Select I_COD_CLI, C_NOM_CLI, C_NOM_FAN, C_CID_CLI ( from CADCLIENTES  Where C_IND_PRC = 'S' APermitirVazio	AColunasATituloColuna   CódigoATamanhoColunaACampoFiltro
ANomeCampo	I_COD_CLIAMostrarNaGrade	AOrdemInicial ATituloColunaNome FantasiaATamanhoColuna(ACampoFiltro	
ANomeCampo	C_NOM_FANAMostrarNaGrade	AOrdemInicial ATituloColunaRazao SocialATamanhoColuna(ACampoFiltro	
ANomeCampo	C_NOM_CLIAMostrarNaGrade	AOrdemInicial ATituloColunaCidadeATamanhoColunaACampoFiltro	
ANomeCampo	C_CID_CLIAMostrarNaGrade	AOrdemInicial	  ALocalizaPadraolpPersonalizadoATituloFormulario   Localiza Cliente   	OnRetornoEClienteRetorno   