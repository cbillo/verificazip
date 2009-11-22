program pontoloja;

uses
  Forms,
  SysUtils,
  APrincipal in 'APrincipal.pas' {FPrincipal},
  Constantes in '..\MConfiguracoesSistema\Constantes.pas',
  ASobre in '..\MaGerais\ASobre.pas' {FSobre},
  Abertura in '..\MaGerais\Abertura.pas' {FAbertura},
  AAlterarSenha in '..\MaGerais\AAlterarSenha.pas' {FAlteraSenha},
  AAlterarFilialUso in '..\MaGerais\AAlterarFilialUso.pas' {FAlterarFilialUso},
  UnRegistro in '..\MConfiguraModulos\UnRegistro.pas',
  AClientes in '..\MaGerais\AClientes.pas' {FClientes},
  ANovoCliente in '..\MaGerais\ANovoCliente.pas' {FNovoCliente},
  AProfissoes in '..\MaGerais\AProfissoes.pas' {FProfissoes},
  ASituacoesClientes in '..\MaGerais\ASituacoesClientes.pas' {FSituacoesClientes},
  AConsultaRuas in '..\MaGerais\AConsultaRuas.pas' {FConsultaRuas},
  ACadCidades in '..\MaGerais\ACadCidades.pas' {FCidades},
  ACadPaises in '..\MaGerais\ACadPaises.pas' {FCadPaises},
  ACadEstados in '..\MaGerais\ACadEstados.pas' {FCadEstados},
  AEventos in '..\MaGerais\AEventos.pas' {FEventos},
  ATransportadoras in '..\MaGerais\ATransportadoras.pas' {FTransportadoras},
  ANovaTransportadora in '..\MaGerais\ANovaTransportadora.pas' {FNovaTransportadora},
  UnCodigoBarra in '..\MConfiguracoesSistema\UnCodigoBarra.pas',
  ACadIcmsEstado in '..\MFaturamento\ACadIcmsEstado.pas' {FCadIcmsEstado},
  UnMoedas in '..\MConfiguracoesSistema\UnMoedas.pas',
  AConsultaPrecosProdutos in 'AConsultaPrecosProdutos.pas' {FConsultaPrecosProdutos},
  AProdutosKit in '..\MEstoque\AProdutosKit.pas' {FProdutosKit},
  UnCotacao in 'UnCotacao.pas',
  UnProdutos in '..\MEstoque\UnProdutos.pas',
  UnSumarizaEstoque in '..\MEstoque\UnSumarizaEstoque.pas',
  AProdutos in '..\MEstoque\AProdutos.pas' {Fprodutos},
  ANovaClassificacao in '..\MEstoque\ANovaClassificacao.pas' {FNovaClassificacao},
  AMontaKit in '..\MEstoque\AMontaKit.pas' {FMontaKit},
  ALocalizaClassificacao in '..\MEstoque\ALocalizaClassificacao.pas' {FLocalizaClassificacao},
  ANovoVendedor in '..\MaGerais\ANovoVendedor.pas' {FNovoVendedor},
  AVendedores in '..\MaGerais\AVendedores.pas' {FVendedores},
  ACondicoesPgtos in '..\MFinanceiro\ACondicoesPgtos.pas' {FCondicoesPagamentos},
  UnClassificacao in '..\MEstoque\UnClassificacao.pas',
  ACotacao in 'ACotacao.pas' {FCotacao},
  AFormasPagamento in '..\MFinanceiro\AFormasPagamento.pas' {FFormasPagamento},
  AImpCotacao in 'AImpCotacao.pas' {FImpOrcamento},
  ALocalizaProdutos in '..\MFaturamento\ALocalizaProdutos.pas' {FlocalizaProduto},
  ANovoServico in '..\MEstoque\ANovoServico.pas' {FNovoServico},
  ALocalizaServico in '..\MFaturamento\ALocalizaServico.pas' {FlocalizaServico},
  UnServicos in '..\MEstoque\UnServicos.pas',
  AAdicionaProdFilial in '..\MEstoque\AAdicionaProdFilial.pas' {FAdicionaProdFilial},
  ATabelaPreco in '..\MEstoque\ATabelaPreco.pas' {FTabelaPreco},
  AFormacaoPreco in '..\MEstoque\AFormacaoPreco.pas' {FFormacaoPreco},
  AImprimeTabela in '..\MEstoque\AImprimeTabela.pas' {FImprimeTabela},
  AServicos in '..\MEstoque\AServicos.pas' {FServicos},
  AFormacaoPrecoServico in '..\MEstoque\AFormacaoPrecoServico.pas' {FFormacaoPrecoServico},
  AImpTabelaServico in '..\MEstoque\AImpTabelaServico.pas' {FImpTabelaServico},
  UnNotaFiscal in '..\MFaturamento\UnNotaFiscal.pas',
  UnComissoes in '..\MFinanceiro\UnComissoes.pas',
  UnContasAReceber in '..\MFinanceiro\UnContasAReceber.pas',
  UnImpressao in '..\MaGerais\UnImpressao.pas',
  UnClassesImprimir in '..\MaGerais\UnClassesImprimir.pas',
  ANovaNatureza in '..\MFaturamento\ANovaNatureza.pas' {FNovaNatureza},
  ANaturezas in '..\MFaturamento\ANaturezas.pas' {FNaturezas},
  AOperacoesEstoques in '..\MEstoque\AOperacoesEstoques.pas' {FOperacoesEstoques},
  APlanoConta in '..\MFinanceiro\APlanoConta.pas' {FPlanoConta},
  ANovoPlanoConta in '..\MFinanceiro\ANovoPlanoConta.pas' {FNovoPlanoConta},
  AObservacoesNota in '..\MFaturamento\AObservacoesNota.pas' {FObservacoesNota},
  AMostraRecibo in '..\MaGerais\AMostraRecibo.pas' {FMostraRecibo},
  AMostraCarne in '..\MaGerais\AMostraCarne.pas' {FMostraCarne},
  AMostraCheque in '..\MaGerais\AMostraCheque.pas' {FMostraCheque},
  AMostraDuplicata in '..\MaGerais\AMostraDuplicata.pas' {FMostraDuplicata},
  AMostraEnvelope in '..\MaGerais\AMostraEnvelope.pas' {FMostraEnvelope},
  AMostraNotaPromissoria in '..\MaGerais\AMostraNotaPromissoria.pas' {FMostraNotaPromissoria},
  AMostraBoleto in '..\MaGerais\AMostraBoleto.pas' {FMostraBoleto},
  AImprimeCarne in '..\MFinanceiro\AImprimeCarne.pas' {FImprimeCarne},
  AImprimeBoleto in '..\MFinanceiro\AImprimeBoleto.pas' {FImprimeBoleto},
  UnContasAPagar in '..\MFinanceiro\UnContasAPagar.pas',
  ABancos in '..\MFinanceiro\ABancos.pas' {FBancos},
  UnAtualizacao in '..\MaGerais\UnAtualizacao.pas',
  AContas in '..\MFinanceiro\AContas.pas' {FContas},
  UnPrincipal in '..\MaGerais\UnPrincipal.pas',
  AConsultaVendaPeriodo in 'AConsultaVendaPeriodo.pas' {FConsultaVendaPeriodo},
  ARegiaoVenda in '..\MaGerais\ARegiaoVenda.pas' {FRegiaoVenda},
  AMovNatureza in '..\MFaturamento\AMovNatureza.pas' {FMovNatureza},
  AItensNatureza in '..\MFaturamento\AItensNatureza.pas' {FItensNatureza},
  AMostraNroNSU in '..\MFinanceiro\AMostraNroNSU.pas' {FMostraNroNSU},
  AUnidade in '..\MEstoque\AUnidade.pas' {FUnidades},
  ABackup in '..\MaGerais\ABackup.pas' {FBackup},
  AImprimeCodigoBarra in '..\MEstoque\AImprimeCodigoBarra.pas' {FImprimeCodigoBarra},
  AImprimeEtiquetaBarra in '..\MEstoque\AImprimeEtiquetaBarra.pas' {FImprimeEtiquetaBarra},
  UnComandosImpCheque in '..\MaGerais\UnComandosImpCheque.pas',
  AEtiquetaCliente in '..\MaGerais\AEtiquetaCliente.pas' {FEtiquetaClientes},
  AImpProduto in '..\mestoque\AImpProduto.pas' {FImpProduto},
  ATipoFundo in '..\mestoque\ATipoFundo.pas' {FTipoFundo},
  UnDados in '..\magerais\UnDados.pas',
  ATipoEmenda in '..\mestoque\ATipoEmenda.pas' {FTipoEmenda},
  AMaquinas in '..\mestoque\AMaquinas.pas' {FMaquinas},
  UnClientes in '..\magerais\UnClientes.pas',
  ACores in '..\mestoque\ACores.pas' {FCores},
  ANovaCotacao in 'ANovaCotacao.pas' {FNovaCotacao},
  AMostraParReceberOO in '..\mfinanceiro\AMostraParReceberOO.pas' {FMostraParReceberOO},
  UnVendedor in '..\magerais\UnVendedor.pas',
  ATipoCotacao in 'ATipoCotacao.pas' {FTipoCotacao},
  UnSistema in '..\magerais\UnSistema.pas',
  ARamoAtividade in 'ARamoAtividade.pas' {FRamoAtividade},
  UnImpressaoRelatorio in '..\magerais\UnImpressaoRelatorio.pas',
  ARelPedido in 'ARelPedido.pas' {FRelPedido},
  UnImpressaoBoleto in '..\magerais\UnImpressaoBoleto.pas',
  AEmbalagem in 'AEmbalagem.pas' {FEmbalagem},
  AImprimeEtiqueta in 'AImprimeEtiqueta.pas' {FImprimiEtiqueta},
  UnImpressaoEtiquetaCotacao in 'UnImpressaoEtiquetaCotacao.pas',
  AProdutoReferencia in 'AProdutoReferencia.pas' {FReferenciaProduto},
  AGraficoProducaoAnual in 'AGraficoProducaoAnual.pas' {FGraficoProducaoAnual},
  UnDadosCR in '..\mfinanceiro\UnDadosCR.pas',
  UnDadosProduto in '..\mestoque\UnDadosProduto.pas',
  AGeraOP in 'AGeraOP.pas' {FGerarOP},
  ANovaOrdemProducaoCadarco in '..\mestoque\ANovaOrdemProducaoCadarco.pas' {FNovaOrdemProducaoCadarco},
  UnOrdemProducao in '..\mestoque\UnOrdemProducao.pas',
  AImpOrdemProducao in '..\mestoque\AImpOrdemProducao.pas' {FImpOrdemProducao},
  AProdutosDevolvidos in 'AProdutosDevolvidos.pas' {FProdutosDevolvidos},
  ANovaNotaFiscalNota in '..\mfaturamento\ANovaNotaFiscalNota.pas' {FNovaNotaFiscalNota},
  AMostraObservacaoCliente in 'AMostraObservacaoCliente.pas' {FMostraObservacaoCliente},
  AGraficoAnaliseCidade in 'AGraficoAnaliseCidade.pas' {FGraficoAnaliseCidade},
  AGraficoAnaliseFaturamento in 'AGraficoAnaliseFaturamento.pas' {FGraficoAnaliseFaturamento},
  ANovaNotaFiscaisFor in '..\mestoque\ANovaNotaFiscaisFor.pas' {FNovaNotaFiscaisFor},
  UnNotasFiscaisFor in '..\mestoque\UnNotasFiscaisFor.pas',
  ABaixaParcialCotacao in 'ABaixaParcialCotacao.pas' {FBaixaParcialCotacao},
  AConsultaBaixaParcial in 'AConsultaBaixaParcial.pas' {FConsultaBaixaParcial},
  AValidaSerieSistema in '..\..\modulos\AValidaSerieSistema.pas' {FValidaSerieSistema},
  AAlteraClassificacaoProduto in 'AAlteraClassificacaoProduto.pas' {FAlteraClassificacaoProduto},
  AExcluiClienteDuplicado in 'AExcluiClienteDuplicado.pas' {FExcluiClienteDuplicado},
  UnCrystal in '..\magerais\UnCrystal.pas',
  ANovoECF in 'ANovoECF.pas' {FNovoECF},
  UnECF in 'UnECF.pas',
  UnBematech in 'UnBematech.pas',
  AFormaPagamentoECF in 'AFormaPagamentoECF.pas' {FFormaPagamentoECF},
  AEstagioProducao in '..\mestoque\AEstagioProducao.pas' {FEstagioProducao},
  ATipoEstagioProducao in '..\mestoque\ATipoEstagioProducao.pas' {FTipoEstagioProducao},
  AGeraEstagiosOP in 'AGeraEstagiosOP.pas' {FGeraEstagiosOP},
  AMostraPlanenamentoOP in 'AMostraPlanenamentoOP.pas' {FMostraPlanejamentoOP},
  UnPcp in '..\mestoque\UnPcp.pas',
  AAlteraEstagioCotacao in 'AAlteraEstagioCotacao.pas' {FAlteraEstagioCotacao},
  AOrdensProducaoCadarco in '..\mestoque\AOrdensProducaoCadarco.pas' {FOrdensProducaoCadarco},
  ADevolucaoProdutos in 'ADevolucaoProdutos.pas' {FDevolucaoProdutos},
  ATecnicos in 'ATecnicos.pas' {FTecnicos},
  ANovoTecnico in 'ANovoTecnico.pas' {FNovoTecnico},
  ATipoCorte in '..\mestoque\ATipoCorte.pas' {FTipoCorte},
  ANovaCobranca in '..\mfinanceiro\ANovaCobranca.pas' {FNovaCobranca},
  AHistoricoLigacao in '..\mfinanceiro\AHistoricoLigacao.pas' {FHistoricoLigacao},
  ACobrancas in '..\mfinanceiro\ACobrancas.pas' {FCobrancas},
  AFaturamentoDiario in 'AFaturamentoDiario.pas' {FFaturamentoDiario},
  AGeraNumerosModulo19 in 'AGeraNumerosModulo19.pas' {FGeraNumerosModulo10},
  AMotivoInadimplencia in '..\mfinanceiro\AMotivoInadimplencia.pas' {FMotivoInadimplencia},
  ANovaConta in '..\mfinanceiro\ANovaConta.pas' {FNovaConta},
  ATipoContrato in 'ATipoContrato.pas' {FTipoContrato},
  ANovoContratoCliente in 'ANovoContratoCliente.pas' {FNovoContratoCliente},
  UnContrato in 'UnContrato.pas',
  AContratosCliente in 'AContratosCliente.pas' {FContratosCliente},
  ANovoFaturamentoMensal in 'ANovoFaturamentoMensal.pas' {FNovoFaturamentoMensal},
  AFaturamentoMensal in 'AFaturamentoMensal.pas' {FFaturamentoMensal},
  APrincipioAtivo in 'APrincipioAtivo.pas' {FPrincipioAtivo},
  ANovaCampanhaVendas in 'ANovaCampanhaVendas.pas' {FNovaCampanhaVendas},
  ACampanhaVendas in 'ACampanhaVendas.pas' {FCampanhaVendas},
  ANovoTeleMarketing in 'ANovoTeleMarketing.pas' {FNovoTeleMarketing},
  UnTeleMarketing in 'UnTeleMarketing.pas',
  ABrindesCliente in 'ABrindesCliente.pas' {FBrindesCliente},
  AAlteraVendedorCotacao in 'AAlteraVendedorCotacao.pas' {FAlteraVendedorCotacao},
  ALeiturasLocacao in 'ALeiturasLocacao.pas' {FLeiturasLocacao},
  ANovaLeituraLocacao in 'ANovaLeituraLocacao.pas' {FNovaLeituraLocacao},
  ATeleMarketings in 'ATeleMarketings.pas' {FTeleMarketings},
  AAtualizaDiasTeleMarketing in 'AAtualizaDiasTeleMarketing.pas' {FAtualizaDiasTelemarketing},
  AProdutosCliente in 'AProdutosCliente.pas' {FProdutosCliente},
  ATarefas in 'ATarefas.pas' {FTarefas},
  ANovaTarefa in 'ANovaTarefa.pas' {FNovaTarefa},
  AContratosSemLeitura in 'AContratosSemLeitura.pas' {FContratosSemLeitura},
  ADonoProduto in 'ADonoProduto.pas' {FDonoProduto},
  AReajusteContrato in 'AReajusteContrato.pas' {FReajusteContrato},
  ANovoAgendamento in 'ANovoAgendamento.pas' {FNovoAgedamento},
  ATipoAgendamento in 'ATipoAgendamento.pas' {FTipoAgendamento},
  AManutencaoMailing in 'AManutencaoMailing.pas' {FManutencaoMailing},
  UnDaruma in 'UnDaruma.pas',
  AAgendamentos in 'AAgendamentos.pas' {FAgendamentos},
  AWeg in 'AWeg.pas' {FWeg},
  AAcondicionamento in 'AAcondicionamento.pas' {FAcondicionamento},
  AEstagioAgendamento in 'AEstagioAgendamento.pas' {FEstagioAgendamento},
  AGeraFracaoOP in 'AGeraFracaoOP.pas' {FGeraFracaoOP},
  AAlteraEstagioAgendamento in 'AAlteraEstagioAgendamento.pas' {FAlteraEstagioAgendamento},
  AParentesCliente in 'AParentesCliente.pas' {FParentesClientes},
  ANovoChamadoTecnico in '..\MChamado\ANovoChamadoTecnico.pas' {FNovoChamado},
  UnChamado in '..\MChamado\UnChamado.pas',
  AFacas in '..\mestoque\AFacas.pas' {FFacas},
  AOrdemProducaoGenerica in '..\mestoque\AOrdemProducaoGenerica.pas' {FOrdemProducaoGenerica},
  ANovaOrdemProducaoGenerica in '..\mestoque\ANovaOrdemProducaoGenerica.pas' {FNovaOrdemProducaoGenerica},
  AHistoricoECobranca in '..\mfinanceiro\AHistoricoECobranca.pas' {FHistoricoECobranca},
  ALocalizaProdutoContrato in '..\MChamado\ALocalizaProdutoContrato.pas' {FLocalizaProdutoContrato},
  AChamadosTecnicos in '..\MChamado\AChamadosTecnicos.pas' {FChamadoTecnico},
  AAgendaChamados in '..\MChamado\AAgendaChamados.pas' {FAgendaChamados},
  AHoraAgendaChamado in '..\MChamado\AHoraAgendaChamado.pas' {FHoraAgendaChamado},
  AEfetuarPesquisaSatisfacao in '..\MChamado\AEfetuarPesquisaSatisfacao.pas' {FEfetuarPesquisaSatisfacao},
  UnPesquisaSatisfacao in '..\MChamado\UnPesquisaSatisfacao.pas',
  AMostraLocacoesALer in 'AMostraLocacoesALer.pas' {FMostraLocacoesALer},
  ACartuchoCotacao in 'ACartuchoCotacao.pas' {FCartuchoCotacao},
  ANovaCotacaoGrafica in 'ANovaCotacaoGrafica.pas' {FNovaCotacaoGrafica},
  UnCotacaoGrafica in 'UnCotacaoGrafica.pas',
  AMedico in 'AMedico.pas' {FMedico},
  AGeraXMLSNGCP in 'AGeraXMLSNGCP.pas' {FGeraXMLSNGPC},
  UnSNGPC in 'UnSNGPC.pas',
  AProdutosReserva in 'AProdutosReserva.pas' {FProdutosReserva},
  UnArgox in '..\magerais\UnArgox.pas',
  AChequesCP in '..\mfinanceiro\AChequesCP.pas' {FChequesCP},
  AConsultacheques in '..\mfinanceiro\AConsultacheques.pas' {FConsultaCheques},
  ANovaMaquina in '..\mestoque\ANovaMaquina.pas' {FNovaMaquina},
  ANovaTarefaEMarketing in 'ANovaTarefaEMarketing.pas' {FNovaTarefaEMarketing},
  ATarefaEMarketing in 'ATarefaEMarketing.pas' {FTarefaEMarketing},
  unEMarketing in 'unEMarketing.pas',
  ATamanhos in 'ATamanhos.pas' {FTamanhos},
  APedidosPendentesFaturar in 'APedidosPendentesFaturar.pas' {FPedidosPendentesFaturar},
  UnProspect in '..\mcrm\UnProspect.pas',
  AProdutoEtiquetadoComEstoque in 'AProdutoEtiquetadoComEstoque.pas' {FProdutoEtiquetadoComEstoque},
  AContasAReceber in '..\mfinanceiro\AContasAReceber.pas' {FContasaReceber},
  ANovoContasaReceber in '..\mfinanceiro\ANovoContasaReceber.pas' {FNovoContasAReceber},
  AImprimeCR in '..\mfinanceiro\AImprimeCR.pas' {FImprimeCR},
  agraficoscontasareceber in '..\mfinanceiro\agraficoscontasareceber.pas' {FGraficosCR},
  AGraficosContasaPagar in '..\mfinanceiro\AGraficosContasaPagar.pas' {FGraficosCP},
  AMovComissoes in '..\mfinanceiro\AMovComissoes.pas' {FMovComissoes},
  AManutencaoCR in '..\mfinanceiro\AManutencaoCR.pas' {FManutencaoCR},
  AContasAConsolidarCR in '..\mfinanceiro\AContasAConsolidarCR.pas' {FContasAConsolidarCR},
  AConsolidarCR in '..\mfinanceiro\AConsolidarCR.pas' {FConsolidarCR},
  AVisualizaLogReceber in '..\mfinanceiro\AVisualizaLogReceber.pas' {FVisualizaLogReceber},
  AComissaoClassificacaoVendedor in '..\mestoque\AComissaoClassificacaoVendedor.pas' {FComissaoClassificacaoVendedor},
  AProdutosOrcados in '..\MChamado\AProdutosOrcados.pas' {FProdutosOrcados},
  AManutencaoEmail in '..\mcrm\AManutencaoEmail.pas' {FManutencaoEmail},
  UnVersoes in '..\magerais\UnVersoes.pas',
  ANovoConcorrente in '..\mcrm\ANovoConcorrente.pas' {FNovoConcorrente},
  AConcorrentes in '..\mcrm\AConcorrentes.pas' {FConcorrentes},
  ANovoTelemarketingProspect in '..\mcrm\ANovoTelemarketingProspect.pas' {FNovoTelemarketingProspect},
  ANovoProspect in '..\mcrm\ANovoProspect.pas' {FNovoProspect},
  AProspects in '..\mcrm\AProspects.pas' {FProspects},
  ANovaProposta in '..\mcrm\ANovaProposta.pas' {FNovaProposta},
  UnProposta in '..\mcrm\UnProposta.pas',
  AMotivoVenda in '..\mcrm\AMotivoVenda.pas' {FMotivoVenda},
  ANovaAgendaProspect in '..\mcrm\ANovaAgendaProspect.pas' {FNovaAgendaProspect},
  AAlteraEstagioProposta in '..\mcrm\AAlteraEstagioProposta.pas' {FAlteraEstagioProposta},
  AProdutosProspect in '..\mcrm\AProdutosProspect.pas' {FProdutosProspect},
  AContatosProspect in '..\mcrm\AContatosProspect.pas' {FContatosProspect},
  AMeioDivulgacao in '..\mcrm\AMeioDivulgacao.pas' {FMeioDivulgacao},
  AAniversariantes in 'AAniversariantes.pas' {FAniversariantes},
  UnAmostra in '..\mcrm\UnAmostra.pas',
  UnSolicitacaoCompra in '..\mestoque\UnSolicitacaoCompra.pas',
  UnPedidoCompra in '..\mestoque\UnPedidoCompra.pas',
  ANovoPedidoCompra in '..\mestoque\ANovoPedidoCompra.pas' {FNovoPedidoCompra},
  APedidosCompraAberto in '..\mestoque\APedidosCompraAberto.pas' {FPedidosCompraAberto},
  ACompradores in '..\mestoque\ACompradores.pas' {FCompradores},
  ABaixaContasAReceberOO in '..\mfinanceiro\ABaixaContasAReceberOO.pas' {FBaixaContasaReceberOO},
  ANovoProdutoPro in '..\mestoque\ANovoProdutoPro.pas' {FNovoProdutoPro},
  ACartuchoCotacaoProduto in 'ACartuchoCotacaoProduto.pas' {FCartuchoCotacaoCartucho},
  AChequesOO in '..\mfinanceiro\AChequesOO.pas' {FChequesOO},
  ANovoLembrete in 'ANovoLembrete.pas' {FNovoLembrete},
  ABaixaContasaPagarOO in '..\mfinanceiro\ABaixaContasaPagarOO.pas' {FBaixaContasaPagarOO},
  ANovoEmailContasAReceber in '..\mfinanceiro\ANovoEmailContasAReceber.pas' {FNovoEmailContasAReceber},
  AVerificaLeituraLembrete in '..\MChamado\AVerificaLeituraLembrete.pas' {FVerificaLeituraLembrete},
  ANovoReajusteContrato in 'ANovoReajusteContrato.pas' {FNovoReajusteContrato},
  AContasAPagar in '..\mfinanceiro\AContasAPagar.pas' {FContasaPagar},
  undespesas in '..\mfinanceiro\undespesas.pas',
  ANovoContasaPagar in '..\mfinanceiro\ANovoContasaPagar.pas' {FNovoContasAPagar},
  adespesas in '..\mfinanceiro\adespesas.pas' {FDespesas},
  ACentroCusto in '..\mfinanceiro\ACentroCusto.pas' {FCentroCusto},
  ageradespesasfixas in '..\mfinanceiro\ageradespesasfixas.pas' {FGeraDespesasFixas},
  AImprimeCP in '..\mfinanceiro\AImprimeCP.pas' {FImprimeCP},
  AManutencaoCP in '..\mfinanceiro\AManutencaoCP.pas' {FManutencaoCP},
  AnovoClientePerdidoVendedor in 'AnovoClientePerdidoVendedor.pas' {FNovoClientePerdidoVendedor},
  AClientesPerdidosVendedor in 'AClientesPerdidosVendedor.pas' {FClientesPerdidosVenedor},
  UnCaixa in '..\mcaixa\UnCaixa.pas',
  AGerarFracaoOPMaquinasCorte in 'AGerarFracaoOPMaquinasCorte.pas' {FGerarFracaoOPMaquinasCorte},
  ABaixaConsumoProduto in '..\mestoque\ABaixaConsumoProduto.pas' {FBaixaConsumoProduto},
  ATipoChamado in '..\MChamado\ATipoChamado.pas' {FTipoChamado},
  ASetores in '..\mcrm\ASetores.pas' {FSetores},
  AAlteraEstagioPedidoCompra in '..\mestoque\AAlteraEstagioPedidoCompra.pas' {FAlteraEstagioPedidoCompra},
  ANovoSetor in '..\mcrm\ANovoSetor.pas' {FNovoSetor},
  AMostraParPagarOO in '..\mfinanceiro\AMostraParPagarOO.pas' {FMostraParPagarOO},
  ASolicitacaoCompras in '..\mestoque\ASolicitacaoCompras.pas' {FSolicitacaoCompra},
  ASolicitacaoCompraProdutosPendentes in '..\mestoque\ASolicitacaoCompraProdutosPendentes.pas' {FOrcamentoCompraProdutosPendentes},
  ANovaSolicitacaoCompra in '..\mestoque\ANovaSolicitacaoCompra.pas' {FNovaSolicitacaoCompras},
  AAlteraEstagioOrcamento in '..\mestoque\AAlteraEstagioOrcamento.pas' {FAlteraEstagioOrcamentoCompra},
  APedidoCompra in '..\mestoque\APedidoCompra.pas' {FPedidoCompra},
  ATipoProposta in '..\mcrm\ATipoProposta.pas' {FTipoProposta},
  UnZebra in '..\magerais\UnZebra.pas',
  ACompensaCheque in '..\mfinanceiro\ACompensaCheque.pas' {FCompensaCheque},
  APropostasCliente in '..\mcrm\APropostasCliente.pas' {FPropostasCliente},
  ARelOrdemSerra in '..\mestoque\ARelOrdemSerra.pas' {FRelOrdemSerra},
  AContatosCliente in 'AContatosCliente.pas' {FContatosCliente},
  AMontaKitBastidor in '..\mestoque\AMontaKitBastidor.pas' {FMontaKitBastidor},
  ABaixaProdutosChamado in '..\MChamado\ABaixaProdutosChamado.pas' {FBaixaProdutosChamado},
  ADesativaEmailDuplicado in 'ADesativaEmailDuplicado.pas' {FDesativaEmailDuplicado},
  ACreditoCliente in '..\mfinanceiro\ACreditoCliente.pas' {FCreditoCliente},
  AConsultaChamadoParcial in '..\MChamado\AConsultaChamadoParcial.pas' {FConsultaChamadoParcial},
  AAlteraEstagioFracaoOP in '..\mestoque\AAlteraEstagioFracaoOP.pas' {FAlteraEstagioFracaoOP},
  AImprimeDuplicata in '..\mfinanceiro\AImprimeDuplicata.pas' {FImprimeDuplicata},
  ANovoOrcamentoCompra in '..\mestoque\ANovoOrcamentoCompra.pas' {FNovoOrcamentoCompra},
  UnOrcamentoCompra in '..\mestoque\UnOrcamentoCompra.pas',
  AHorarioTrabalho in '..\mestoque\AHorarioTrabalho.pas' {FHorarioTrabalho},
  AFaixaEtaria in 'AFaixaEtaria.pas' {FFaixaEtaria},
  AMarcas in 'AMarcas.pas' {FMarca},
  AEntradaMetro in 'AEntradaMetro.pas' {FEntradaMetro},
  UnEntradaMetros in 'UnEntradaMetros.pas',
  AMetasVendedor in 'AMetasVendedor.pas' {FMetasVendedor},
  AConsultaCondicaoPgto in '..\magerais\AConsultaCondicaoPgto.pas' {FConsultaCondicaoPgto},
  AConsultaLogSeparacaoConsumo in '..\mestoque\AConsultaLogSeparacaoConsumo.pas' {FConsultaLogSeparacaoConsumo},
  UnRave in '..\magerais\UnRave.pas',
  dmRave in '..\magerais\dmRave.pas' {dtRave: TDSServerModule},
  AConsultaProdutoNumeroSerie in 'AConsultaProdutoNumeroSerie.pas' {FConsultaProdutoNumeroSerie},
  ACondicaoPagamento in 'ACondicaoPagamento.pas' {FCondicaoPagamento},
  ANovaCondicaoPagamento in 'ANovaCondicaoPagamento.pas' {FNovaCondicaoPagamento},
  AFiguraGRF in '..\mestoque\AFiguraGRF.pas' {FFiguraGRF},
  UnCondicaoPagamento in '..\mfinanceiro\UnCondicaoPagamento.pas',
  ANovaComposicao in '..\mestoque\ANovaComposicao.pas' {FNovaComposicao},
  AComposicoes in '..\mestoque\AComposicoes.pas' {FComposicoes},
  UnNFe in '..\mfaturamento\UnNFe.pas',
  AGraficoComprativoAno in 'AGraficoComprativoAno.pas' {FGraficoComparativoAno},
  AProjetos in '..\mfinanceiro\AProjetos.pas' {FProjetos},
  AGeraFracaoOPProdutos in '..\mestoque\AGeraFracaoOPProdutos.pas' {FGeraFracaoOPProdutos};

{$R *.RES}

  begin
  Application.Initialize;
  Application.HelpFile := '';
  Application.CreateForm(TFPrincipal, FPrincipal);
  if ParamCount = 0 then  // verifica se a parametros da base de dados
    varia.ParametroBase := 'SisCorp'
  else
    varia.ParametroBase := ParamStr(1);

  if FPrincipal.AbreBaseDados(varia.ParametroBase) then  // caso naum abra a base de dados
  begin
    FAbertura := TFAbertura.create(application);
    if Sistema.ValidaSerieSistema then
    begin
      if (ParamStr(2) <> '') and (ParamStr(3) <> '') then    // caso a senha e ususario venham como parametro
      begin
        if FAbertura.VerificaSenha(Uppercase(ParamStr(2)),Uppercase(ParamStr(3)), ParamStr(4), ParamStr(5)) then // verifica a senha
           FAbertura.close
        else
           FAbertura.ShowModal;
        end
        else
          FAbertura.ShowModal;

        if Varia.StatusAbertura = 'CANCELADO' then
          FPrincipal.close
        else
          Application.Run;
    end
    else
      FPrincipal.close;
  end;
end.
