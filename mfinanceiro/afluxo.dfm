�
 TFFLUXO 0�,  TPF0TFFluxoFFluxoLeft� Top� WidthHeight3CaptionFluxoColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPainelGradientePainelGradiente1Left Top Width�Height)AlignalTop	AlignmenttaLeftJustifyCaption   Fluxo   Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGra  TPanelColorPanelColor1Left TopQWidth�Height�AlignalClientColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TDecisionGridDecisionGrid2Left8Top(Width�Height� DefaultColWidthdDefaultRowHeightCaptionColorclActiveCaptionCaptionFont.CharsetDEFAULT_CHARSETCaptionFont.ColorclCaptionTextCaptionFont.Height�CaptionFont.NameMS Sans SerifCaptionFont.StylefsBold 	DataColorclInfoBkDataSumColorclNoneDataFont.CharsetDEFAULT_CHARSETDataFont.ColorclWindowTextDataFont.Height�DataFont.NameMS Sans SerifDataFont.Style LabelFont.CharsetDEFAULT_CHARSETLabelFont.ColorclWindowTextLabelFont.Height�LabelFont.NameMS Sans SerifLabelFont.Style 
LabelColor	clBtnFaceLabelSumColorclInactiveCaptionDecisionSourceDecisionSource2
Dimensions	FieldNameData EmissaoColorclNone	AlignmenttaCenter	Subtotals	 	FieldNamePlano ContaColorclNone	AlignmenttaCenter	Subtotals	 	FieldNameClienteColorclNone	AlignmenttaCenter	Subtotals	 	FieldNameFilialColorclNone	AlignmenttaCenter	Subtotals	 	FieldNametotalColorclNone	AlignmenttaCenter	Subtotals	 	FieldNamecontaColorclNone	AlignmenttaCenter	Subtotals	 	FieldName&Average of cadcontasaReceber.N_VLR_TOTColorclNone	AlignmenttaCenter	Subtotals	  Totals	ShowCubeEditorColor	clBtnFaceGridLineWidthGridLineColorclWindowTextTabOrder   TButtonButton1Left� Top� WidthKHeightCaptionButton1TabOrderOnClickButton1Click  TButtonButton2LeftXTop WidthKHeightCaptionButton2TabOrderOnClickButton2Click  TDecisionGridDecisionGrid1LeftTopWidth�Height� DefaultColWidthdDefaultRowHeightCaptionColorclActiveCaptionCaptionFont.CharsetDEFAULT_CHARSETCaptionFont.ColorclCaptionTextCaptionFont.Height�CaptionFont.NameMS Sans SerifCaptionFont.Style 	DataColorclInfoBkDataSumColorclNoneDataFont.CharsetDEFAULT_CHARSETDataFont.ColorclWindowTextDataFont.Height�DataFont.NameMS Sans SerifDataFont.Style LabelFont.CharsetDEFAULT_CHARSETLabelFont.ColorclWindowTextLabelFont.Height�LabelFont.NameMS Sans SerifLabelFont.Style 
LabelColor	clBtnFaceLabelSumColorclInactiveCaptionDecisionSourceDataGradeCP
Dimensions	FieldName
vencimentoColorclNone	AlignmenttaCenter	Subtotals	 	FieldNamenomePla1ColorclNone	AlignmenttaCenter	Subtotals	 	FieldNamenomePla2ColorclNone	AlignmenttaCenter	Subtotals	 	FieldNamenomePla3ColorclNone	AlignmenttaCenter	Subtotals	 	FieldNamesomaColorclNone	AlignmenttaCenter	Subtotals	  Totals	ShowCubeEditorColor	clBtnFaceGridLineWidthGridLineColorclWindowTextTabOrder   TPanelColorPanelColor2Left TopWidth�HeightAlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm  TPanelColorPanelColor3Left Top)Width�Height(AlignalTopColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TCalendarioData1LeftTopWidthaHeightCalAlignmentdtaLeftDate X5	���@Time X5	���@ColorclInfoBk
DateFormatdfShortDateMode
dmComboBoxFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style KinddtkDate
ParseInput
ParentFontTabOrder 	OnCloseUpData2CloseUpACorFocoFPrincipal.CorFoco  TCalendarioData2Left� TopWidthiHeightCalAlignmentdtaLeftDate ��ީ��@Time ��ީ��@ColorclInfoBk
DateFormatdfShortDateMode
dmComboBoxFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style KinddtkDate
ParseInput
ParentFontTabOrder	OnCloseUpData2CloseUpACorFocoFPrincipal.CorFoco  TRadioButtonRadioButton1LeftTop	WidthqHeightCaptionAnosTabOrder  TRadioButtonRadioButton2LefttTopWidthqHeightCaptionMesesChecked	TabOrderTabStop	  TRadioButtonRadioButton3Left�TopWidthqHeightCaptionDiaTabOrder   TDecisionSourceDataGradeCPDecisionCubeMapaGradeCPControlTypextCheck
SparseRows
SparseColsLeftHDimensionCountSummaryCountCurrentSummary 
SparseRows
SparseColsDimensionInfo  �  �     TDecisionQueryDecisionQuery2DatabaseName	BaseDados
DataSourceDataSource2SQL.StringscSELECT D_DAT_EMI, C_CLA_PLA, I_COD_CLI, I_EMP_FIL, SUM( N_VLR_TOT ) total, COUNT( N_VLR_TOT ) contaFROM cadcontasaReceber3GROUP BY D_DAT_EMI, C_CLA_PLA, I_COD_CLI, I_EMP_FIL Left�   TDecisionCubeDecisionCube2DataSetDecisionQuery2DimensionMap
ActiveFlag
diAsNeeded	FieldTypeftDate	Fieldname	D_DAT_EMIBaseNamecadcontasaReceber.D_DAT_EMINameData EmissaoDerivedFrom�DimensionTypedimDimensionBinTypebinYear
ValueCountActive	
StartValue      ��@ 
ActiveFlag
diAsNeeded	FieldTypeftString	Fieldname	C_CLA_PLABaseNamecadcontasaReceber.C_CLA_PLANamePlano ContaDerivedFrom�DimensionTypedimDimensionBinTypebinNone
ValueCountActive	 
ActiveFlag
diAsNeeded	FieldType	ftInteger	Fieldname	I_COD_CLIBaseNamecadcontasaReceber.I_COD_CLINameClienteDerivedFrom�DimensionTypedimDimensionBinTypebinNone
ValueCountActive	 
ActiveFlag
diAsNeeded	FieldType	ftInteger	Fieldname	I_EMP_FILBaseNamecadcontasaReceber.I_EMP_FILNameFilialDerivedFrom�DimensionTypedimDimensionBinTypebinNone
ValueCountActive	 
ActiveFlag
diAsNeededFormatR$ ###,###,###,##0.00	FieldTypeftFloat	FieldnametotalBaseNamecadcontasaReceber.N_VLR_TOTNametotalDerivedFrom�DimensionTypedimSumBinTypebinNone
ValueCount�Active	 
ActiveFlag
diAsNeeded	FieldType	ftInteger	FieldnamecontaBaseNamecadcontasaReceber.N_VLR_TOTNamecontaDerivedFrom�DimensionTypedimCountBinTypebinNone
ValueCount�Active	 
ActiveFlag
diAsNeeded	FieldType	ftUnknown	Fieldname&Average of cadcontasaReceber.N_VLR_TOTBaseNamecadcontasaReceber.N_VLR_TOTName&Average of cadcontasaReceber.N_VLR_TOTDerivedFromDimensionType
dimAverageBinTypebinNone
ValueCount�Active	  ShowProgressDialog	MaxDimensionsMaxSummaries
MaxCells Left�   TDecisionSourceDecisionSource2DecisionCubeDecisionCube2ControlTypextCheck
SparseRows
SparseColsLeft� DimensionCountSummaryCountCurrentSummary 
SparseRows
SparseColsDimensionInfo           TQueryQuery2DatabaseName	BaseDadosSQL.StringscSELECT D_DAT_EMI, C_CLA_PLA, I_COD_CLI, I_EMP_FIL, SUM( N_VLR_TOT ) total, COUNT( N_VLR_TOT ) contaFROM cadcontasaReceber3GROUP BY D_DAT_EMI, C_CLA_PLA, I_COD_CLI, I_EMP_FIL Left  TDataSourceDataSource1Leftx  TDataSourceDataSource2DataSetQuery2Left   TQueryQuery1DatabaseName	BaseDados
DataSourceDataSource1SQL.Stringsselect day(d_dat_ven) vencimento ,pl1.c_nom_pla nomePla1,pl2.c_nom_pla nomePla2,pl3.c_nom_pla nomePla3,sum(mcp.n_vlr_dup)  as soma < from cadcontasapagar as cp key join movcontasapagar as mcp  ,cad_plano_conta as pl1 ,cad_plano_conta as pl2 ,cad_plano_conta as pl3where0 d_dat_ven between '2000/01/01' and '2000/06/10'H and isnull(mcp.c_dup_can,'N') = 'N' and isnull(mcp.c_fla_par,'N') = 'N'# and pl1.i_cod_emp =* cp.i_cod_emp / and  pl1.c_cla_pla = substr(cp.c_cla_pla,0,2)  and length(pl1.c_cla_pla) = 2# and pl2.i_cod_emp =* cp.i_cod_emp / and  pl2.c_cla_pla = substr(cp.c_cla_pla,0,4)  and length(pl2.c_cla_pla) = 4# and pl3.i_cod_emp =* cp.i_cod_emp / and  pl3.c_cla_pla = substr(cp.c_cla_pla,0,6)  and length(pl3.c_cla_pla) = 6 group by vencimento $ ,substr(cp.c_cla_pla,0,2), nomePla1$ ,substr(cp.c_cla_pla,0,4), nomePla2$ ,substr(cp.c_cla_pla,0,6), nomePla3 Left`  TQueryQuery3DatabaseName	BaseDados
DataSourceDataSource1SQL.Stringsselect pl.c_nom_pla, sum(n_vlr_tot * -1)  as soma, d_dat_emi, pl2.c_nom_pla nomePla2,pl3.c_nom_pla nomePla3ufrom cadfiliais as fil, cadcontasapagar as cp, cad_plano_conta as pl, cad_plano_conta as pl2,  cad_plano_conta as pl3where pl.i_cod_emp = cp.i_cod_emp ,and  pl.c_cla_pla = substr(cp.c_cla_pla,0,2) #and  pl2.i_cod_emp =* cp.i_cod_emp -and  pl2.c_cla_pla = substr(cp.c_cla_pla,0,4)and length(pl2.c_cla_pla) =  04  "and pl3.i_cod_emp =* cp.i_cod_emp -and  pl3.c_cla_pla = substr(cp.c_cla_pla,0,6)and length(pl3.c_cla_pla) =  06 2group by  substr(cp.c_cla_pla,0,2), pl.c_nom_pla,                    d_dat_emi, 6                   substr(cp.c_cla_pla,0,4), nomePla2,5                   substr(cp.c_cla_pla,0,6), nomePla3unionselect pl.c_nom_pla, sum(n_vlr_tot)  as soma, d_dat_emi, pl2.c_nom_pla nomePla2,pl3.c_nom_pla nomePla3wfrom cadfiliais as fil, cadcontasareceber as cp, cad_plano_conta as pl, cad_plano_conta as pl2,  cad_plano_conta as pl3where pl.i_cod_emp = cp.i_cod_emp ,and  pl.c_cla_pla = substr(cp.c_cla_pla,0,2) #and  pl2.i_cod_emp =* cp.i_cod_emp -and  pl2.c_cla_pla = substr(cp.c_cla_pla,0,4)and length(pl2.c_cla_pla) =  04  "and pl3.i_cod_emp =* cp.i_cod_emp -and  pl3.c_cla_pla = substr(cp.c_cla_pla,0,6)and length(pl3.c_cla_pla) =  06 1group by substr(cp.c_cla_pla,0,2), pl.c_nom_pla,                    d_dat_emi, 6                   substr(cp.c_cla_pla,0,4), nomePla2,5                   substr(cp.c_cla_pla,0,6), nomePla3union select c_nom_ban as c_nom_pla , n_vlr_ent as soma,d_dat_com as d_dat_emi,c_nom_ban as pla2, c_nom_ban as pla3 from- movBancos  as mb ,cadbancos   as b           LeftTop  TQueryAuxDatabaseName	BaseDadosLeftpTop  TDecisionCubeMapaGradeCPDataSetQuery1DimensionMap
ActiveFlagdiActive	FieldType
ftSmallint	Fieldname
vencimentoBaseName
vencimentoName
vencimentoDerivedFrom�DimensionTypedimDimensionBinTypebinNone
ValueCount
Active	 
ActiveFlagdiActive	FieldTypeftString	FieldnamenomePla1BaseNamenomePla1NamenomePla1DerivedFrom�DimensionTypedimDimensionBinTypebinNone
ValueCountActive	 
ActiveFlagdiActive	FieldTypeftString	FieldnamenomePla2BaseNamenomePla2NamenomePla2DerivedFrom�DimensionTypedimDimensionBinTypebinNone
ValueCountActive	 
ActiveFlagdiActive	FieldTypeftString	FieldnamenomePla3BaseNamenomePla3NamenomePla3DerivedFrom�DimensionTypedimDimensionBinTypebinNone
ValueCountActive	 
ActiveFlagdiActive	FieldTypeftFloat	FieldnamesomaBaseNamesomaNamesomaDerivedFrom�DimensionTypedimSumBinTypebinNone
ValueCount�Active	  ShowProgressDialog	MaxDimensionsMaxSummaries
MaxCells LeftTop   