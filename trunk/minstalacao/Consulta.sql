Select PRO.I_SEQ_PRO,C_COD_PRO C_COD_PRO, C_COD_UNI,  C_NOM_PRO,  C_ATI_PRO, C_KIT_PRO, L_DES_TEC, C_PAT_FOT,  PRO.I_PRI_ATI, PRO.C_IND_GEN,  PRO.N_PER_KIT, Qtd.C_Cod_Bar,  Qtd.N_QTD_MIN, nvl(QTD.N_QTD_PRO,0)  N_QTD_PRO, nvl(QTD.N_QTD_RES,0)  N_QTD_RES,  (QTD.N_QTD_PRO - nvl(QTD.N_QTD_RES,0) ) QTDREAL, PRE.N_VLR_VEN, (PRE.N_VLR_VEN * MOE.N_Vlr_Dia) VlrREal,  QTD.I_COD_COR, QTD.I_COD_TAM,  Moe.C_Nom_Moe, Pre.N_Per_Max,  CLA.C_NOM_CLA  from CadProdutos pro, MovQdadeProduto Qtd, MovTabelaPreco Pre,  CadMoedas Moe, CADCLASSIFICACAO CLA
Where Qtd.I_Emp_Fil = 11
 and C_COD_PRO like '5662'
 and PRE.I_COD_CLI = 0
 and Pre.I_Cod_Tab = 1101 and Qtd.I_Seq_Pro = Pro.I_Seq_Pro  and Pre.I_Cod_Emp = Pro.I_Cod_Emp  and Pre.I_Seq_Pro = Pro.I_Seq_Pro  and Moe.I_Cod_Moe = Pro.I_Cod_Moe AND CLA.C_TIP_CLA = 'P' AND CLA.I_COD_EMP = 1 and CLA.C_COD_CLA = PRO.C_COD_CLA
 order by C_COD_PRO
