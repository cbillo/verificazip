unit UnSolicitacaoCompra;
{Verificado
-.edit;
}
interface
uses
  Classes, Db, SysUtils, SqlExpr, tabela, Forms, UnDados, UnDadosProduto;

type
  TRBFunSolicitacaoCompra = class
    private
      Cadastro,
      Cadastro2 : TSQL;
      Aux,
      Tabela,
      TabelaProdutosPendentes: TSQLQuery;
      function RSeqSolicitacaoDisponivel(VpaCodFilial : Integer) : Integer;
      function RSeqEstagioDisponivel(VpaCodFilial,VpaSeqOrcamento: Integer): Integer;
      procedure ApagaProdutos(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo);
      procedure ApagaFracaoOP(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo);
      procedure CarDOrcamentoProdutos(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo);
      procedure CarDOrcamentoFracoes(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo);
      function GravaDProdutos(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo): String;
      function GravaDFracaoOP(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo): String;
      function GravaLogEstagio(VpaCodFilial, VpaSeqOrcamento, VpaCodEstagio: Integer; VpaDesMotivo: String): String;
      function RProdutoPendente(VpaSeqProduto, VpaCodCor: Integer; VpaProdutosPendentes: TList): TRBDProdutoPendenteCompra;
      function VerifTodosProdutosComprados(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo): Boolean;
      procedure AtualizaClasseProdutosComprados(VpaDProdutoFinalizado: TRBDProdutoPendenteCompra; VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo);
      function FracaOPAdicionada(VpaDFracaoOP : TRBDSolicitacaoCompraFracaoOP;VpaFracoes : TList):Boolean;
      procedure AdicionaFracaoOPProdutoPendente(VpaDProdutoPendente : TRBDProdutoPendenteCompra;VpaFracoes : TList);
      procedure OrdenarProdutoPendentePelaDataAprovacao(VpaListaProdutosPendentes: TList);
      procedure InicializaOrcamentoCompra(VpaDOrcamentoCompra : TRBDSolicitacaoCompraCorpo);
    public
      constructor Cria(VpaBaseDados : TSqlConnection);
      destructor Destroy; override;
      procedure CarProdutosSelecionados(VpaProdutosPendentes,VpaProdutos, VpaProdutosFinalizados,VpaFracoesOP: TList;VpaIndOrcamento : Boolean);
      procedure AtualizaQtdCompradaOrcamentosItem(VpaDProdutoPendente : TRBDProdutoPendenteCompra);
      procedure FinalizarProdutos(VpaSeqPedido: Integer; VpaProdutosPedido,VpaProdutosPendentes, VpaProdutosFinalizados: TList);
      function GravaVinculoPedidoOrcamento(VpaProdutoFinalizados: TList): String;
      function FinalizaVinculoPedidoOrcamento(VpaCodFilial, VpaSeqPedido: Integer; VpaDProdutoPendente: TRBDProdutoPendenteCompra): String;
      procedure ApagaOrcamento(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo);
      procedure CarDOrcamentoCompra(VpaCodFilial, VpaSeqSolicitacao: Integer; VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo);
      function GravaDOrcamentoCompra(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo): String;
      function AprovarOrcamento(VpaCodFilial, VpaSeqSolicitacao: Integer): String;
      function AlteraEstagioOrcamento(VpaCodFilial, VpaSeqSolicitacao, VpaCodEstagio: Integer; VpaDesMotivo: String): String;
      function AtualizarQtdCompradaProdutosPendentes(VpaDProdutosPendentes : TList) : string;
      function AtualizarEstagioOrcamentosFinalizados(VpaProdutosFinalizados: TList): String;
      function ExisteClienteFracaoOP(VpaDOrcamentoFracaoOP: TRBDSolicitacaoCompraFracaoOP): Boolean;
      procedure CarregarListaOrcamentos(VpaCodFilial,VpaCodEstagio: Integer; VpaListaOrcamentos: TList);
      procedure AgruparProdutosPendentes(VpaListaOrcamentos, VpaListaProdutosPendentes: TList);
      function AssociaOrcamentoCompraProposta(VpaDProposta : TRBDPropostaCorpo;VpaDOrcamentoCompra : TRBDSolicitacaoCompraCorpo) : string;
      function GeraOrcamentoCompraOrdemProducao(VpaCodFilial,VpaSeqOrdem : Integer) : String;
      procedure OrdenaProdutosPendentesPorClassificacao(VpaListaProdutosPendentes : TList);
end;

implementation
uses
  constantes, FunSQL, FunData, FunObjeto, UnProdutos,  APedidosCompraAberto, FunNumeros, constmsg;

{(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((
                               TRBFunSolicitacaoCompra
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))}

{******************************************************************************}
constructor TRBFunSolicitacaoCompra.Cria(VpaBaseDados : TSqlConnection);
begin
  inherited Create;
  Cadastro := TSQL.create(nil);
  Cadastro.ASQLConnection := VpaBaseDados;
  Aux := TSQLQuery.create(nil);
  Aux.SQLConnection := VpaBaseDados;
  Tabela := TSQLQuery.create(nil);
  Tabela.SQLConnection := VpaBaseDados;
  TabelaProdutosPendentes:= TSQLQuery.Create(Application);
  TabelaProdutosPendentes.SQLConnection := VpaBaseDados;
  Cadastro2:= TSQL.Create(Application);
  Cadastro2.ASQLConnection := VpaBaseDados;
end;

{******************************************************************************}
destructor TRBFunSolicitacaoCompra.Destroy;
begin
  Aux.Free;
  Tabela.Free;
  Cadastro.Free;
  TabelaProdutosPendentes.Free;
  Cadastro2.Free;
  inherited Destroy;
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.GravaDOrcamentoCompra(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo): String;
begin
  Result:= '';

  AdicionaSQLAbreTabela(Cadastro,'SELECT * FROM SOLICITACAOCOMPRACORPO '+
                                 ' WHERE SEQSOLICITACAO = '+IntToStr(VpaDOrcamentoCompraCorpo.SeqSolicitacao));
  if Cadastro.Eof then
    Cadastro.Insert
  else
    Cadastro.Edit;

  Cadastro.FieldByName('CODFILIAL').AsInteger:= VpaDOrcamentoCompraCorpo.CodFilial;
  Cadastro.FieldByName('DESSITUACAO').AsString:= VpaDOrcamentoCompraCorpo.DesSituacao;
  Cadastro.FieldByName('INDCANCELADO').AsString:= VpaDOrcamentoCompraCorpo.IndCancelado;
  Cadastro.FieldByName('DATEMISSAO').AsDateTime:= VpaDOrcamentoCompraCorpo.DatEmissao;
  Cadastro.FieldByName('HOREMISSAO').AsDateTime:= VpaDOrcamentoCompraCorpo.HorEmissao;
  Cadastro.FieldByName('CODUSUARIO').AsInteger:= VpaDOrcamentoCompraCorpo.CodUsuario;
  Cadastro.FieldByName('CODESTAGIO').AsInteger:= VpaDOrcamentoCompraCorpo.CodEstagio;
  Cadastro.FieldByName('CODCOMPRADOR').AsInteger:= VpaDOrcamentoCompraCorpo.CodComprador;
  if VpaDOrcamentoCompraCorpo.DatPrevista > MontaData(1,1,1900) then
    Cadastro.FieldByName('DATPREVISTA').AsDateTime:= VpaDOrcamentoCompraCorpo.DatPrevista
  else
    Cadastro.FieldByName('DATPREVISTA').Clear;
  if VpaDOrcamentoCompraCorpo.DatFim > MontaData(1,1,1900) then
    Cadastro.FieldByName('DATFIM').AsDateTime:= VpaDOrcamentoCompraCorpo.DatFim
  else
    Cadastro.FieldByName('DATFIM').Clear;
  Cadastro.FieldByName('DESOBSERVACAO').AsString:= VpaDOrcamentoCompraCorpo.DesObservacao;
  if VpaDOrcamentoCompraCorpo.DatAprovacao > MontaData(1,1,1900) then
    Cadastro.FieldByName('DATAPROVACAO').AsDateTime:= VpaDOrcamentoCompraCorpo.DatAprovacao
  else
    Cadastro.FieldByName('DATAPROVACAO').Clear;

  if Cadastro.State = dsInsert then
    VpaDOrcamentoCompraCorpo.SeqSolicitacao:= RSeqSolicitacaoDisponivel(VpaDOrcamentoCompraCorpo.CodFilial);

  Cadastro.FieldByName('SEQSOLICITACAO').AsInteger:= VpaDOrcamentoCompraCorpo.SeqSolicitacao;
  try
    Cadastro.Post;
  except
    on E:Exception do
      Result:= 'ERRO NA GRAVACAO A SOLICITACAO DE COMPRA!!!'#13+E.Message;
  end;
  Cadastro.Close;
  if Result = '' then
  begin
    Result:= GravaDProdutos(VpaDOrcamentoCompraCorpo);
    if Result = '' then
      Result:= GravaDFracaoOP(VpaDOrcamentoCompraCorpo);
  end;


  if (VerifTodosProdutosComprados(VpaDOrcamentoCompraCorpo)) and
     (VpaDOrcamentoCompraCorpo.CodEstagio = Varia.EstagioOrcamentoCompraAprovado) then
  begin
    Result:= AlteraEstagioOrcamento(VpaDOrcamentoCompraCorpo.CodFilial,
                                    VpaDOrcamentoCompraCorpo.SeqSolicitacao,
                                    Varia.EstagioFinalOrcamentoCompra,
                                   'FINALIZA��O POR PEDIDO DE COMPRA CONCLU�DO');
  end;
end;

{******************************************************************************}
procedure TRBFunSolicitacaoCompra.ApagaOrcamento(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo);
begin
  ApagaProdutos(VpaDOrcamentoCompraCorpo);
  ApagaFracaoOP(VpaDOrcamentoCompraCorpo);
  ExecutaComandoSql(Tabela,'DELETE FROM SOLICITACAOCOMPRACORPO'+
                           ' WHERE CODFILIAL = '+IntToStr(VpaDOrcamentoCompraCorpo.CodFilial)+
                           ' AND SEQSOLICITACAO = '+IntToStr(VpaDOrcamentoCompraCorpo.SeqSolicitacao));
end;

{******************************************************************************}
procedure TRBFunSolicitacaoCompra.ApagaFracaoOP(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo);
begin
  ExecutaComandoSql(Tabela,'DELETE FROM SOLICITACAOCOMPRAFRACAOOP'+
                           ' WHERE CODFILIAL = '+IntToStr(VpaDOrcamentoCompraCorpo.CodFilial)+
                           ' AND SEQSOLICITACAO = '+IntToStr(VpaDOrcamentoCompraCorpo.SeqSolicitacao));
end;

{******************************************************************************}
procedure TRBFunSolicitacaoCompra.ApagaProdutos(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo);
begin
  ExecutaComandoSql(Tabela,'DELETE FROM SOLICITACAOCOMPRAITEM'+
                           ' WHERE CODFILIAL = '+IntToStr(VpaDOrcamentoCompraCorpo.CodFilial)+
                           ' AND SEQSOLICITACAO = '+IntToStr(VpaDOrcamentoCompraCorpo.SeqSolicitacao));
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.GravaDFracaoOP(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo): String;
var
  VpfLaco: Integer;
  VpfOrcamentoFracaoOP: TRBDSolicitacaoCompraFracaoOP;
begin
  Result:= '';
  ApagaFracaoOP(VpaDOrcamentoCompraCorpo);
  AdicionaSQLAbreTabela(Cadastro,'SELECT * FROM SOLICITACAOCOMPRAFRACAOOP'+
                                 ' Where CODFILIAL = 0 AND SEQSOLICITACAO = 0 AND CODFILIALFRACAO = 0 AND SEQORDEM = 0 AND SEQFRACAO = 0 ');
  for VpfLaco:= 0 to VpaDOrcamentoCompraCorpo.Fracoes.Count - 1 do
  begin
    Cadastro.Insert;
    VpfOrcamentoFracaoOP:= TRBDSolicitacaoCompraFracaoOP(VpaDOrcamentoCompraCorpo.Fracoes.Items[VpfLaco]);

    Cadastro.FieldByName('SEQSOLICITACAO').AsInteger:= VpaDOrcamentoCompraCorpo.SeqSolicitacao;
    Cadastro.FieldByName('CODFILIAL').AsInteger:= VpaDOrcamentoCompraCorpo.CodFilial;
    Cadastro.FieldByName('CODFILIALFRACAO').AsInteger:= VpfOrcamentoFracaoOP.CodFilialFracao;
    Cadastro.FieldByName('SEQORDEM').AsInteger:= VpfOrcamentoFracaoOP.SeqOrdem;
{    if VpfOrcamentoFracaoOP.SeqFracao <> 0 then}
      Cadastro.FieldByName('SEQFRACAO').AsInteger:= VpfOrcamentoFracaoOP.SeqFracao;
{   � passado como zero porque nao tem referencia de/para FK e o campo � not null, apesar de nao ser o certo
    else
      Cadastro.FieldByName('SEQFRACAO').Clear;}

    try
      Cadastro.Post;
    except
      on E:Exception do
      begin
        Result:= 'ERRO NA GRAVA��O NA SOLICITACAO DE COMPRA FRACAO OP'#13+E.Message;
        Break;
      end;
    end;
  end;
  Cadastro.Close;
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.GravaDProdutos(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo): String;
var
  VpfLaco: Integer;
  VpfOrcamentoCompraProduto: TRBDSolicitacaoCompraItem;
begin
  Result:= '';
  ApagaProdutos(VpaDOrcamentoCompraCorpo);
  AdicionaSQLAbreTabela(Cadastro,'SELECT * FROM SOLICITACAOCOMPRAITEM'+
                                 ' Where CODFILIAL = 0 AND SEQSOLICITACAO = 0 AND SEQITEM = 0');
  for VpfLaco:= 0 to VpaDOrcamentoCompraCorpo.Produtos.Count-1 do
  begin
    Cadastro.Insert;
    VpfOrcamentoCompraProduto:= TRBDSolicitacaoCompraItem(VpaDOrcamentoCompraCorpo.Produtos.Items[VpfLaco]);

    Cadastro.FieldByName('CODFILIAL').AsInteger:= VpaDOrcamentoCompraCorpo.CodFilial;
    Cadastro.FieldByName('SEQSOLICITACAO').AsInteger:= VpaDOrcamentoCompraCorpo.SeqSolicitacao;
    VpfOrcamentoCompraProduto.SeqItem:= VpfLaco+1;
    Cadastro.FieldByName('SEQITEM').AsInteger:= VpfOrcamentoCompraProduto.SeqItem;
    Cadastro.FieldByName('SEQPRODUTO').AsInteger:= VpfOrcamentoCompraProduto.SeqProduto;
    if VpfOrcamentoCompraProduto.CodCor <> 0 then
      Cadastro.FieldByName('CODCOR').AsInteger:= VpfOrcamentoCompraProduto.CodCor
    else
      Cadastro.FieldByName('CODCOR').Clear;
    Cadastro.FieldByName('DESUM').AsString:= VpfOrcamentoCompraProduto.DesUM;
    Cadastro.FieldByName('QTDPRODUTO').AsFloat:= ArredondaDecimais(VpfOrcamentoCompraProduto.QtdProduto,Varia.DecimaisQtd);
    Cadastro.FieldByName('QTDAPROVADO').AsFloat:= ArredondaDecimais(VpfOrcamentoCompraProduto.QtdAprovado,Varia.DecimaisQtd);
    Cadastro.FieldByName('QTDCOMPRADA').AsFloat:= ArredondaDecimais(VpfOrcamentoCompraProduto.QtdComprado,Varia.DecimaisQtd);
    if VpfOrcamentoCompraProduto.IndComprado then
      Cadastro.FieldByName('INDCOMPRADO').AsString:= 'S'
    else
      Cadastro.FieldByName('INDCOMPRADO').AsString:= 'N';
    try
      Cadastro.Post;
    except
      on E:Exception do
      begin
        Result:= 'ERRO NA GRAVA��O DA TABELA SOLICITACAOCOMPRAPRODUTO'#13+E.Message;
        Break;
      end;
    end;
  end;
  Cadastro.Close;
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.RSeqSolicitacaoDisponivel(VpaCodFilial : Integer) : Integer;
begin
  AdicionaSQLAbreTabela(Aux,'SELECT MAX(SEQSOLICITACAO) PROXIMO FROM SOLICITACAOCOMPRACORPO'+
                            ' Where CODFILIAL = ' +IntToStr(VpaCodFilial));
  Result:= Aux.FieldByName('PROXIMO').AsInteger+1;
  Aux.close;
end;

{******************************************************************************}
procedure TRBFunSolicitacaoCompra.CarDOrcamentoCompra(VpaCodFilial, VpaSeqSolicitacao: Integer;
                                                    VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo);
begin
  AdicionaSQLAbreTabela(Tabela,'SELECT * FROM SOLICITACAOCOMPRACORPO'+
                               ' WHERE CODFILIAL = '+IntToStr(VpaCodFilial)+
                               ' AND SEQSOLICITACAO = '+IntToStr(VpaSeqSolicitacao));

  VpaDOrcamentoCompraCorpo.CodFilial:= VpaCodFilial;
  VpaDOrcamentoCompraCorpo.SeqSolicitacao:= VpaSeqSolicitacao;
  VpaDOrcamentoCompraCorpo.CodEstagio := Tabela.FieldByName('CODESTAGIO').AsInteger;
  VpaDOrcamentoCompraCorpo.CodUsuario:= Tabela.FieldByName('CODUSUARIO').AsInteger;
  VpaDOrcamentoCompraCorpo.CodComprador:= Tabela.FieldByName('CODCOMPRADOR').AsInteger;  
  VpaDOrcamentoCompraCorpo.CodUsuarioAprovacao:= Tabela.FieldByName('CODUSUARIOAPROVACAO').AsInteger;
  VpaDOrcamentoCompraCorpo.DesSituacao:= Tabela.FieldByName('DESSITUACAO').AsString;
  VpaDOrcamentoCompraCorpo.IndCancelado:= Tabela.FieldByName('INDCANCELADO').AsString;
  VpaDOrcamentoCompraCorpo.DesObservacao:= Tabela.FieldByName('DESOBSERVACAO').AsString;
  VpaDOrcamentoCompraCorpo.DatEmissao:= Tabela.FieldByName('DATEMISSAO').AsDateTime;
  VpaDOrcamentoCompraCorpo.HorEmissao:= Tabela.FieldByName('HOREMISSAO').AsDateTime;
  VpaDOrcamentoCompraCorpo.DatPrevista:= Tabela.FieldByName('DATPREVISTA').AsDateTime;
  VpaDOrcamentoCompraCorpo.DatFim:= Tabela.FieldByName('DATFIM').AsDateTime;
  VpaDOrcamentoCompraCorpo.DatAprovacao:= Tabela.FieldByName('DATAPROVACAO').AsDateTime;

  Tabela.Close;
  CarDOrcamentoProdutos(VpaDOrcamentoCompraCorpo);
  CarDOrcamentoFracoes(VpaDOrcamentoCompraCorpo);
end;

{******************************************************************************}
procedure TRBFunSolicitacaoCompra.CarDOrcamentoFracoes(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo);
var
  VpfOrcamentoFracaoOP: TRBDSolicitacaoCompraFracaoOP;
begin
  AdicionaSQLAbreTabela(Tabela,'SELECT SCF.CODFILIALFRACAO, SCF.SEQORDEM, SCF.SEQFRACAO, CLI.C_NOM_CLI'+
                               ' FROM SOLICITACAOCOMPRAFRACAOOP SCF, CADCLIENTES CLI, ORDEMPRODUCAOCORPO OPC'+
                               ' WHERE SCF.CODFILIAL = '+IntToStr(VpaDOrcamentoCompraCorpo.CodFilial)+
                               ' AND SCF.SEQSOLICITACAO = '+IntToStr(VpaDOrcamentoCompraCorpo.SeqSolicitacao)+
                               ' AND OPC.EMPFIL = SCF.CODFILIALFRACAO'+
                               ' AND OPC.SEQORD = SCF.SEQORDEM'+
                               ' AND CLI.I_COD_CLI = OPC.CODCLI');
  while not Tabela.Eof do
  begin
    VpfOrcamentoFracaoOP:= VpaDOrcamentoCompraCorpo.AddFracaoOP;

    VpfOrcamentoFracaoOP.CodFilialFracao:= Tabela.FieldByName('CODFILIALFRACAO').AsInteger;
    VpfOrcamentoFracaoOP.SeqOrdem:= Tabela.FieldByName('SEQORDEM').AsInteger;
    VpfOrcamentoFracaoOP.SeqFracao:= Tabela.FieldByName('SEQFRACAO').AsInteger;
    VpfOrcamentoFracaoOP.NomCliente:= Tabela.FieldByName('C_NOM_CLI').AsString;

    Tabela.Next;
  end;
  Tabela.Close;
end;

{******************************************************************************}
procedure TRBFunSolicitacaoCompra.CarDOrcamentoProdutos(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo);
var
  VpfOrcamentoProduto: TRBDSolicitacaoCompraItem;
begin
  AdicionaSQLAbreTabela(Tabela,'SELECT SCI.CODFILIAL, SCI.SEQSOLICITACAO, SCI.SEQITEM, SCI.SEQPRODUTO, SCI.CODCOR,'+
                               ' SCI.DESUM, SCI.QTDPRODUTO, SCI.QTDAPROVADO, SCI.QTDCOMPRADA, PRO.C_COD_PRO, PRO.C_COD_UNI UMORIGINAL, '+
                               ' PRO.C_NOM_PRO, PRO.L_DES_TEC, PRO.C_COD_CLA, '+
                               ' COR.NOM_COR, SCI.INDCOMPRADO'+
                               ' FROM SOLICITACAOCOMPRAITEM SCI, CADPRODUTOS PRO, COR COR'+
                               ' WHERE SCI.CODFILIAL = '+IntToStr(VpaDOrcamentoCompraCorpo.CodFilial)+
                               ' AND SCI.SEQSOLICITACAO = '+IntToStr(VpaDOrcamentoCompraCorpo.SeqSolicitacao)+
                               ' AND PRO.I_SEQ_PRO = SCI.SEQPRODUTO'+
                               ' AND '+SQLTextoRightJoin('SCI.CODCOR','COR.COD_COR'));
  while not Tabela.Eof do
  begin
    VpfOrcamentoProduto:= VpaDOrcamentoCompraCorpo.AddProduto;

//    if Tabela.FieldByName('SEQPRODUTO').AsInteger = 6997 then
//      aviso('oi');
    VpfOrcamentoProduto.SeqItem:= Tabela.FieldByName('SEQITEM').AsInteger;
    VpfOrcamentoProduto.SeqProduto:= Tabela.FieldByName('SEQPRODUTO').AsInteger;
    VpfOrcamentoProduto.CodCor:= Tabela.FieldByName('CODCOR').AsInteger;
    VpfOrcamentoProduto.CodProduto:= Tabela.FieldByName('C_COD_PRO').AsString;
    VpfOrcamentoProduto.CodClassificacao := Tabela.FieldByName('C_COD_CLA').AsString;
    VpfOrcamentoProduto.NomProduto:= Tabela.FieldByName('C_NOM_PRO').AsString;
    VpfOrcamentoProduto.DesTecnica := Tabela.FieldByName('L_DES_TEC').AsString;
    VpfOrcamentoProduto.NomCor:= Tabela.FieldByName('NOM_COR').AsString;
    VpfOrcamentoProduto.DesUM:= Tabela.FieldByName('DESUM').AsString;
    VpfOrcamentoProduto.UnidadesParentes:= FunProdutos.RUnidadesParentes(VpfOrcamentoProduto.DesUM);
    VpfOrcamentoProduto.QtdProduto:= Tabela.FieldByName('QTDPRODUTO').AsFloat;
    VpfOrcamentoProduto.QtdAprovado:= Tabela.FieldByName('QTDAPROVADO').AsFloat;
    VpfOrcamentoProduto.QtdComprado:= Tabela.FieldByName('QTDCOMPRADA').AsFloat;
    VpfOrcamentoProduto.UMOriginal:= Tabela.FieldByName('UMORIGINAL').AsString;
    VpfOrcamentoProduto.IndComprado:= (Tabela.FieldByName('INDCOMPRADO').AsString = 'S');

    Tabela.Next;
  end;
  Tabela.Close;
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.AprovarOrcamento(VpaCodFilial, VpaSeqSolicitacao: Integer): String;
begin
  Result:= '';
  AdicionaSQLAbreTabela(Cadastro,'SELECT * '+
                                 ' FROM SOLICITACAOCOMPRACORPO'+
                                 ' WHERE CODFILIAL = '+IntToStr(VpaCodFilial)+
                                 ' AND SEQSOLICITACAO = '+IntToStr(VpaSeqSolicitacao));
  Cadastro.Edit;
  Cadastro.FieldByName('DATAPROVACAO').AsDateTime:= Now;
  Cadastro.FieldByName('CODUSUARIOAPROVACAO').AsInteger:= Varia.CodigoUsuario;
  try
    Cadastro.Post;
  except
    on E:Exception do
      Result:= 'ERRO AO APROVAR O OR�AMENTO DE COMPRAS'#13+E.Message;
  end;
  Cadastro.Close;
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.AlteraEstagioOrcamento(VpaCodFilial, VpaSeqSolicitacao, VpaCodEstagio: Integer; VpaDesMotivo: String): String;
begin
  Result:= '';
  AdicionaSQLAbreTabela(Cadastro,'SELECT * FROM SOLICITACAOCOMPRACORPO'+
                                 ' WHERE CODFILIAL = '+IntToStr(VpaCodFilial)+
                                 ' AND SEQSOLICITACAO = '+IntToStr(VpaSeqSolicitacao));
  Cadastro.Edit;
  Cadastro.FieldByName('CODESTAGIO').AsInteger:= VpaCodEstagio;
  try
    Cadastro.Post;
  except
    on E:Exception do
      Result:= 'ERRO AO ALTERAR O ESTAGIO DO ORCAMENTO.'#13+E.Message;
  end;
  Cadastro.Close;
  if Result = '' then
    GravaLogEstagio(VpaCodFilial,VpaSeqSolicitacao,VpaCodEstagio,VpaDesMotivo);
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.GravaLogEstagio(VpaCodFilial, VpaSeqOrcamento, VpaCodEstagio: Integer; VpaDesMotivo: String): String;
var
  VpfLaco, VpfLacoItem: Integer;
begin
  Result:= '';
  AdicionaSQLAbreTabela(Cadastro,'SELECT * FROM ESTAGIOSOLICITACAOCOMPRA');
  Cadastro.Insert;
  Cadastro.FieldByName('CODFILIAL').AsInteger:= VpaCodFilial;
  Cadastro.FieldByName('SEQSOLICITACAO').AsInteger:= VpaSeqOrcamento;
  Cadastro.FieldByName('CODUSUARIO').AsInteger:= varia.CodigoUsuario;
  Cadastro.FieldByName('CODESTAGIO').AsInteger:= VpaCodEstagio;
  if VpaDesMotivo <> '' then
    Cadastro.FieldByName('DESMOTIVO').AsString:= VpaDesMotivo
  else
    Cadastro.FieldByName('DESMOTIVO').Clear;
  Cadastro.FieldByName('DATESTAGIO').AsDateTime:= Now;
  Cadastro.FieldByName('SEQESTAGIO').AsInteger:= RSeqEstagioDisponivel(VpaCodFilial,VpaSeqOrcamento);
  AdicionaSQLAbreTabela(Tabela,'SELECT * FROM SOLICITACAOCOMPRACORPO '+
                               ' WHERE CODFILIAL = '+IntToStr(VpaCodFilial)+
                               ' AND SEQSOLICITACAO = '+IntToStr(VpaSeqOrcamento));
  for VpfLaco:= 0 to Tabela.FieldCount - 1 do
    Cadastro.FieldByname('LOGALTERACAO').AsString:= Cadastro.FieldByname('LOGALTERACAO').AsString+
                                                    Tabela.Fields[VpfLaco].DisplayName+' = "'+ Tabela.Fields[VpfLaco].AsString+'"'+#13;
  AdicionaSQLAbreTabela(Tabela,'SELECT * FROM SOLICITACAOCOMPRAITEM '+
                               ' WHERE CODFILIAL = '+IntToStr(VpaCodFilial)+
                               ' AND SEQSOLICITACAO = '+IntToStr(VpaSeqOrcamento));
  while not Tabela.Eof do
  begin
    Cadastro.FieldByname('LOGALTERACAO').AsString:= Cadastro.FieldByname('LOGALTERACAO').AsString +
                                                    #13' ITENS '#13;
    for VpfLacoItem:= 0 to Tabela.FieldCount - 1 do
      Cadastro.FieldByname('LOGALTERACAO').AsString := Cadastro.FieldByname('LOGALTERACAO').AsString+
      Tabela.Fields[VpfLacoItem].DisplayName+' = "'+ Tabela.Fields[VpfLacoItem].AsString+'"'+#13;
    Tabela.Next;
  end;
  AdicionaSQLAbreTabela(Tabela,'SELECT * FROM SOLICITACAOCOMPRAFRACAOOP'+
                               ' WHERE CODFILIAL = '+IntToStr(VpaCodFilial)+
                               ' AND SEQSOLICITACAO = '+IntToStr(VpaSeqOrcamento));
  while not Tabela.Eof do
  begin
    Cadastro.FieldByname('LOGALTERACAO').AsString:= Cadastro.FieldByname('LOGALTERACAO').AsString +
                                                    #13' FRACAOOP '#13;
    for VpfLacoItem:= 0 to Tabela.FieldCount - 1 do
      Cadastro.FieldByname('LOGALTERACAO').AsString := Cadastro.FieldByname('LOGALTERACAO').AsString+
      Tabela.Fields[VpfLacoItem].DisplayName+' = "'+ Tabela.Fields[VpfLacoItem].AsString+'"'+#13;
    Tabela.Next;
  end;

  try
    Cadastro.Post;
  except
    on E:Exception do
      Result:= 'ERRO NA GRAVA��O DO LOG DO EST�GIO DO OR�AMENTO DE COMPRA'#13+E.Message;
  end;
  Cadastro.close;
  Tabela.close;
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.RSeqEstagioDisponivel(VpaCodFilial, VpaSeqOrcamento: Integer): Integer;
begin
  AdicionaSQLAbreTabela(Aux,'SELECT MAX(SEQESTAGIO) PROXIMO'+
                            ' FROM ESTAGIOSOLICITACAOCOMPRA'+
                            ' WHERE CODFILIAL = '+IntToStr(VpaCodFilial)+
                            ' AND SEQSOLICITACAO = '+IntToStr(VpaSeqOrcamento));
  Result:= Aux.FieldByName('PROXIMO').AsInteger + 1;
  Aux.close;
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.ExisteClienteFracaoOP(VpaDOrcamentoFracaoOP: TRBDSolicitacaoCompraFracaoOP): Boolean;
begin
  AdicionaSQLAbreTabela(Tabela,'SELECT CLI.C_NOM_CLI'+
                               ' FROM ORDEMPRODUCAOCORPO OPC, CADCLIENTES CLI'+
                               ' WHERE OPC.CODCLI = CLI.I_COD_CLI'+
                               ' AND OPC.EMPFIL = '+IntToStr(VpaDOrcamentoFracaoOP.CodFilialFracao)+
                               ' AND OPC.SEQORD = '+IntToStr(VpaDOrcamentoFracaoOP.SeqOrdem));
  VpaDOrcamentoFracaoOP.NomCliente:= Tabela.FieldByName('C_NOM_CLI').AsString;
  Result:= (VpaDOrcamentoFracaoOP.NomCliente <> '');
  Tabela.Close;
end;

{******************************************************************************}
procedure TRBFunSolicitacaoCompra.CarregarListaOrcamentos(VpaCodFilial, VpaCodEstagio: Integer; VpaListaOrcamentos: TList);
var
  VpfDSolicitacaoCompraCorpo: TRBDSolicitacaoCompraCorpo;
begin
  FreeTObjectsList(VpaListaOrcamentos);

  AdicionaSQLAbreTabela(TabelaProdutosPendentes,'SELECT CODFILIAL, SEQSOLICITACAO'+
                                                ' FROM SOLICITACAOCOMPRACORPO'+
                                                ' WHERE CODESTAGIO = '+IntToStr(VpaCodEstagio)+
                                                ' AND CODFILIAL = '+IntToStr(VpaCodFilial));
//                                                ' AND SEQSOLICITACAO = 938');
  while not TabelaProdutosPendentes.Eof do
  begin
    VpfDSolicitacaoCompraCorpo:= TRBDSolicitacaoCompraCorpo.Cria;
    VpaListaOrcamentos.Add(VpfDSolicitacaoCompraCorpo);
    CarDOrcamentoCompra(TabelaProdutosPendentes.FieldByName('CODFILIAL').AsInteger,
                        TabelaProdutosPendentes.FieldByName('SEQSOLICITACAO').AsInteger,
                        VpfDSolicitacaoCompraCorpo);

    TabelaProdutosPendentes.Next;
  end;
  TabelaProdutosPendentes.Close;
end;

{******************************************************************************}
procedure TRBFunSolicitacaoCompra.AgruparProdutosPendentes(VpaListaOrcamentos, VpaListaProdutosPendentes: TList);
var
  VpfLacoOrcamento, VpfLacoProduto: Integer;
  VpfDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo;
  VpfDOrcamentoCompraProduto: TRBDSolicitacaoCompraItem;
  VpfDProdutoPendente : TRBDProdutoPendenteCompra;
begin
  for VpfLacoOrcamento:= 0 to VpaListaOrcamentos.Count-1 do
  begin
    VpfDOrcamentoCompraCorpo:= TRBDSolicitacaoCompraCorpo(VpaListaOrcamentos.Items[VpfLacoOrcamento]);
    for VpfLacoProduto:= 0 to VpfDOrcamentoCompraCorpo.Produtos.Count-1 do
    begin
      VpfDOrcamentoCompraProduto:= TRBDSolicitacaoCompraItem(VpfDOrcamentoCompraCorpo.Produtos.Items[VpfLacoProduto]);
//      if VpfDOrcamentoCompraProduto.SeqProduto = 2558 then
//        aviso('oi');
      if not VpfDOrcamentoCompraProduto.IndComprado then
      begin
        VpfDProdutoPendente := RProdutoPendente(VpfDOrcamentoCompraProduto.SeqProduto,VpfDOrcamentoCompraProduto.CodCor,VpaListaProdutosPendentes);
        if VpfDProdutoPendente = nil then
        begin
          VpfDProdutoPendente:= TRBDProdutoPendenteCompra.Cria;
          VpaListaProdutosPendentes.Add(VpfDProdutoPendente);

          VpfDProdutoPendente.IndMarcado:= False;
          VpfDProdutoPendente.IndAlterado:= False;
          VpfDProdutoPendente.SeqProduto:= VpfDOrcamentoCompraProduto.SeqProduto;
          VpfDProdutoPendente.CodClassificacao := VpfDOrcamentoCompraProduto.CodClassificacao;
          VpfDProdutoPendente.CodCor:= VpfDOrcamentoCompraProduto.CodCor;
          VpfDProdutoPendente.CodProduto:= VpfDOrcamentoCompraProduto.CodProduto;
          VpfDProdutoPendente.NomProduto:= VpfDOrcamentoCompraProduto.NomProduto;
          VpfDProdutoPendente.DesTecnica := VpfDOrcamentoCompraProduto.DesTecnica;
          VpfDProdutoPendente.NomCor:= VpfDOrcamentoCompraProduto.NomCor;
          if VpfDOrcamentoCompraProduto.UMOriginal = varia.UnidadeBarra then
            VpfDOrcamentoCompraProduto.UMOriginal := 'mt';
          VpfDProdutoPendente.DesUM:= VpfDOrcamentoCompraProduto.UMOriginal;
          VpfDProdutoPendente.QtdUtilizada := 0;
          VpfDProdutoPendente.QtdAprovada := 0 ;
          VpfDProdutoPendente.DatAprovacao := VpfDOrcamentoCompraCorpo.DatAprovacao;
        end;
        if VpfDOrcamentoCompraCorpo.DatAprovacao < VpfDProdutoPendente.DatAprovacao then
          VpfDProdutoPendente.DatAprovacao := VpfDOrcamentoCompraCorpo.DatAprovacao;
        VpfDProdutoPendente.QtdUtilizada:= VpfDProdutoPendente.QtdUtilizada +
                                        FunProdutos.CalculaQdadePadrao(VpfDOrcamentoCompraProduto.DesUM,
                                                                        VpfDOrcamentoCompraProduto.UMOriginal,
                                                                        VpfDOrcamentoCompraProduto.QtdProduto,
                                                                         IntToStr(VpfDOrcamentoCompraProduto.SeqProduto));
        VpfDProdutoPendente.QtdAprovada:= VpfDProdutoPendente.QtdAprovada +
                                        FunProdutos.CalculaQdadePadrao(VpfDOrcamentoCompraProduto.DesUM,
                                                                        VpfDOrcamentoCompraProduto.UMOriginal,
                                                                        VpfDOrcamentoCompraProduto.QtdAprovado,
                                                                         IntToStr(VpfDOrcamentoCompraProduto.SeqProduto));
        VpfDProdutoPendente.QtdComprada:= VpfDProdutoPendente.QtdComprada +
                                       ArredondaDecimais(FunProdutos.CalculaQdadePadrao(VpfDOrcamentoCompraProduto.DesUM,
                                                                        VpfDOrcamentoCompraProduto.UMOriginal,
                                                                        VpfDOrcamentoCompraProduto.QtdComprado,
                                                                         IntToStr(VpfDOrcamentoCompraProduto.SeqProduto)),varia.DecimaisQtd);

        VpfDProdutoPendente.OrcamentosCompra.Add(VpfDOrcamentoCompraCorpo);
      end;
    end;
  end;
  OrdenarProdutoPendentePelaDataAprovacao(VpaListaProdutosPendentes);
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.RProdutoPendente(VpaSeqProduto, VpaCodCor : Integer; VpaProdutosPendentes : TList):TRBDProdutoPendenteCompra;
var
  VpfLaco: Integer;
  VpfDProdutoPendente: TRBDProdutoPendenteCompra;
begin
  result := nil;
  for VpfLaco:= 0 to VpaProdutosPendentes.Count -1 do
  begin
    VpfDProdutoPendente:= TRBDProdutoPendenteCompra(VpaProdutosPendentes.Items[VpfLaco]);
    if (VpfDProdutoPendente.SeqProduto = VpaSeqProduto) and
       (VpfDProdutoPendente.CodCor = VpaCodCor) then
    begin
      Result:= VpfDProdutoPendente;
      Break;
    end;
  end;
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.GravaVinculoPedidoOrcamento(VpaProdutoFinalizados: TList): String;
var
  VpfLacoOrcamentos, VpfLacoProdutoFinalizado: Integer;
  VpfDProdutoFinalizado: TRBDProdutoPendenteCompra;
  VpfDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo;
begin
  Result:= '';
  for VpfLacoProdutoFinalizado:= 0 to VpaProdutoFinalizados.Count-1 do
  begin
    VpfDProdutoFinalizado:= TRBDProdutoPendenteCompra(VpaProdutoFinalizados.Items[VpfLacoProdutoFinalizado]);
    for VpfLacoOrcamentos:= 0 to VpfDProdutoFinalizado.OrcamentosCompra.Count-1 do
    begin
      VpfDOrcamentoCompraCorpo:= TRBDSolicitacaoCompraCorpo(VpfDProdutoFinalizado.OrcamentosCompra.Items[VpfLacoOrcamentos]);
      AtualizaClasseProdutosComprados(VpfDProdutoFinalizado, VpfDOrcamentoCompraCorpo);
    end;
    if VpfDProdutoFinalizado.SeqPedidoGerado <> 0 then
      Result:= FinalizaVinculoPedidoOrcamento(Varia.CodigoEmpFil,
                                              VpfDProdutoFinalizado.SeqPedidoGerado,
                                              VpfDProdutoFinalizado);

    if Result <> '' then
      Break;
  end;
  Cadastro.close;
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.FinalizaVinculoPedidoOrcamento(VpaCodFilial,VpaSeqPedido: Integer;
                                                              VpaDProdutoPendente: TRBDProdutoPendenteCompra): String;
var
  VpfLacoOrcamentos: Integer;
  VpfDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo;
begin
  for VpfLacoOrcamentos:= 0 to VpaDProdutoPendente.OrcamentosCompra.Count-1 do
  begin
    VpfDOrcamentoCompraCorpo:= TRBDSolicitacaoCompraCorpo(VpaDProdutoPendente.OrcamentosCompra.Items[VpfLacoOrcamentos]);
    AdicionaSQLAbreTabela(Cadastro,'SELECT * FROM PEDIDOSOLICITACAOCOMPRA'+
                                   ' WHERE SEQPEDIDO = '+IntToStr(VpaSeqPedido)+
                                   ' AND SEQSOLICITACAO = '+IntToStr(VpfDOrcamentoCompraCorpo.SeqSolicitacao));
    if Cadastro.Eof then
    begin
      Cadastro.Insert;
      Cadastro.FieldByName('CODFILIAL').AsInteger:= VpaCodFilial;
      Cadastro.FieldByName('SEQPEDIDO').AsInteger:= VpaSeqPedido;
      Cadastro.FieldByName('SEQSOLICITACAO').AsInteger:= VpfDOrcamentoCompraCorpo.SeqSolicitacao;
      try
        Cadastro.Post;
      except
        on E:Exception do
        begin
          Result:= 'ERRO AO VINCULAR O PEDIDO AO OR�AMENTO DE COMPRA!!!'#13+E.Message;
          Break;
        end;
      end;
    end;
  end;
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.FracaOPAdicionada(VpaDFracaoOP : TRBDSolicitacaoCompraFracaoOP;VpaFracoes : TList):Boolean;
var
  VpfLaco : Integer;
  VpfDFracao : TRBDSolicitacaoCompraFracaoOP;
begin
  result := false;
  for VpfLaco := 0 to VpaFracoes.Count - 1 do
  begin
    VpfDFracao := TRBDSolicitacaoCompraFracaoOP(VpaFracoes.Items[VpfLaco]);
    if (VpfDFracao.CodFilialFracao = VpaDFracaoOP.CodFilialFracao) and
       (VpfDFracao.SeqOrdem = VpaDFracaoOP.SeqOrdem) and
       (VpfDFracao.SeqFracao = VpaDFracaoOP.SeqFracao)then
    begin
      result := true;
      break;
    end;
  end;
end;

{******************************************************************************}
procedure TRBFunSolicitacaoCompra.AtualizaClasseProdutosComprados(VpaDProdutoFinalizado: TRBDProdutoPendenteCompra; VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo);
var
  VpfLacoProdutos: Integer;
  VpfDOrcamentoCompraItem: TRBDSolicitacaoCompraItem;
begin
  for VpfLacoProdutos:= 0 to VpaDOrcamentoCompraCorpo.Produtos.Count-1 do
  begin
    VpfDOrcamentoCompraItem:= TRBDSolicitacaoCompraItem(VpaDOrcamentoCompraCorpo.Produtos.Items[VpfLacoProdutos]);
    if (VpfDOrcamentoCompraItem.SeqProduto = VpaDProdutoFinalizado.SeqProduto) and
       (VpfDOrcamentoCompraItem.CodCor = VpaDProdutoFinalizado.CodCor) then
    begin
      VpfDOrcamentoCompraItem.IndComprado:= True;
    end;
  end;
end;

{******************************************************************************}
procedure TRBFunSolicitacaoCompra.AdicionaFracaoOPProdutoPendente(VpaDProdutoPendente : TRBDProdutoPendenteCompra;VpaFracoes : TList);
var
  VpfLacoOrcamentos,VpfLacoFracoes : Integer;
  VpfDOrcamentoCompra : TRBDSolicitacaoCompraCorpo;
  VpfDFracao : TRBDSolicitacaoCompraFracaoOP;
begin
  for VpfLacoOrcamentos := 0 to VpaDProdutoPendente.OrcamentosCompra.Count -1 do
  begin
    VpfDOrcamentoCompra := TRBDSolicitacaoCompraCorpo(VpaDProdutoPendente.OrcamentosCompra.Items[VpfLacoOrcamentos]);
    for VpfLacoFracoes := 0 to VpfDOrcamentoCompra.Fracoes.Count - 1 do
    begin
      VpfDFracao := TRBDSolicitacaoCompraFracaoOP(VpfDOrcamentoCompra.Fracoes.Items[VpfLacoFracoes]);
      if not FracaOPAdicionada(VpfDFracao,VpaFracoes) then
        VpaFracoes.add(VpfDFracao);
    end;
  end;
end;

{******************************************************************************}
procedure TRBFunSolicitacaoCompra.OrdenaProdutosPendentesPorClassificacao(VpaListaProdutosPendentes: TList);
var
  VpfLacoInterno, VpfLacoExterno : Integer;
  VpfProExterno, VpfProInterno : TRBDProdutoPendenteCompra;
begin
  for VpfLacoExterno := 0 to VpaListaProdutosPendentes.Count - 2 do
  begin
    VpfProExterno := TRBDProdutoPendenteCompra(VpaListaProdutosPendentes.Items[VpfLacoExterno]);
    for VpfLacoInterno := VpfLacoExterno + 1 to VpaListaProdutosPendentes.Count - 1 do
    begin
      VpfProInterno := TRBDProdutoPendenteCompra(VpaListaProdutosPendentes.Items[VpfLacoInterno]);
      if (VpfProExterno.CodClassificacao > VpfProInterno.CodClassificacao)or
         ((VpfProExterno.CodClassificacao = VpfProInterno.CodClassificacao)and
         (VpfProExterno.NomProduto > VpfProInterno.NomProduto)) then
      begin

        VpaListaProdutosPendentes.Items[VpfLacoInterno] := VpaListaProdutosPendentes.Items[VpfLacoExterno];
        VpaListaProdutosPendentes.Items[VpfLacoExterno] := VpfProInterno;
        VpfProExterno := VpfProInterno;
      end;
    end;
  end;

end;

{******************************************************************************}
procedure TRBFunSolicitacaoCompra.OrdenarProdutoPendentePelaDataAprovacao(VpaListaProdutosPendentes: TList);
var
  VpfLacoInterno, VpfLacoExterno : Integer;
  VpfProExterno, VpfProInterno : TRBDProdutoPendenteCompra;
begin
  for VpfLacoExterno := 0 to VpaListaProdutosPendentes.Count - 2 do
  begin
    VpfProExterno := TRBDProdutoPendenteCompra(VpaListaProdutosPendentes.Items[VpfLacoExterno]);
    for VpfLacoInterno := VpfLacoExterno + 1 to VpaListaProdutosPendentes.Count - 1 do
    begin
      VpfProInterno := TRBDProdutoPendenteCompra(VpaListaProdutosPendentes.Items[VpfLacoInterno]);
      if VpfProExterno.DatAprovacao > VpfProInterno.DatAprovacao then
      begin
        VpaListaProdutosPendentes.Items[VpfLacoInterno] := VpaListaProdutosPendentes.Items[VpfLacoExterno];
        VpaListaProdutosPendentes.Items[VpfLacoExterno] := VpfProInterno;
        VpfProExterno := VpfProInterno;
      end;
    end;
  end;
end;

{******************************************************************************}
procedure TRBFunSolicitacaoCompra.InicializaOrcamentoCompra(VpaDOrcamentoCompra : TRBDSolicitacaoCompraCorpo);
begin
  VpaDOrcamentoCompra.CodFilial := varia.CodigoEmpFil;
  VpaDOrcamentoCompra.CodUsuario := varia.CodigoUsuario;
  VpaDOrcamentoCompra.CodEstagio := Varia.EstagioInicialOrcamentoCompra;
  VpaDOrcamentoCompra.CodComprador := 1; //cria uma variavel para comprador padrao
  VpaDOrcamentoCompra.DesSituacao := 'A';
  VpaDOrcamentoCompra.IndCancelado := 'N';
  VpaDOrcamentoCompra.DatEmissao := now;
  VpaDOrcamentoCompra.HorEmissao := now;
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.AtualizarQtdCompradaProdutosPendentes(VpaDProdutosPendentes : TList) : string;
var
  VpfLacoProdutoPendente, VpfLacoOrcamentos : Integer;
  VpfDProdutoPendente : TRBDProdutoPendenteCompra;
  VpfDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo;
begin
  result := '';
  for VpfLacoProdutoPendente:= 0 to VpaDProdutosPendentes.Count-1 do
  begin
    VpfDProdutoPendente:= TRBDProdutoPendenteCompra(VpaDProdutosPendentes.Items[VpfLacoProdutoPendente]);
    if VpfDProdutoPendente.IndAlterado then
    begin
      for VpfLacoOrcamentos:= 0 to VpfDProdutoPendente.OrcamentosCompra.Count-1 do
      begin
        VpfDOrcamentoCompraCorpo:= TRBDSolicitacaoCompraCorpo(VpfDProdutoPendente.OrcamentosCompra.Items[VpfLacoOrcamentos]);
        result := GravaDOrcamentoCompra(VpfDOrcamentoCompraCorpo);
      end;
    end;
  end;
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.AtualizarEstagioOrcamentosFinalizados(VpaProdutosFinalizados: TList): String;
var
  VpfLacoProdutoFinalizado,
  VpfLacoOrcamentos: Integer;
  VpfDProdutoFinalizado: TRBDProdutoPendenteCompra;
  VpfDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo;
begin
  result := '';
  for VpfLacoProdutoFinalizado:= 0 to VpaProdutosFinalizados.Count-1 do
  begin
    VpfDProdutoFinalizado:= TRBDProdutoPendenteCompra(VpaProdutosFinalizados.Items[VpfLacoProdutoFinalizado]);
    for VpfLacoOrcamentos:= 0 to VpfDProdutoFinalizado.OrcamentosCompra.Count-1 do
    begin
      VpfDOrcamentoCompraCorpo:= TRBDSolicitacaoCompraCorpo(VpfDProdutoFinalizado.OrcamentosCompra.Items[VpfLacoOrcamentos]);
      result := GravaDOrcamentoCompra(VpfDOrcamentoCompraCorpo);
    end;
  end;
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.VerifTodosProdutosComprados(VpaDOrcamentoCompraCorpo: TRBDSolicitacaoCompraCorpo): Boolean;
var
  VpfLaco: Integer;
  VpfDOrcamentoCompraItem: TRBDSolicitacaoCompraItem;
begin
  Result:= True;
  for VpfLaco:= 0 to VpaDOrcamentoCompraCorpo.Produtos.Count-1 do
  begin
    VpfDOrcamentoCompraItem:= TRBDSolicitacaoCompraItem(VpaDOrcamentoCompraCorpo.Produtos.Items[VpfLaco]);
    if not VpfDOrcamentoCompraItem.IndComprado then
    begin
      Result:= False;
      Break;
    end;
  end;
end;

{******************************************************************************}
procedure TRBFunSolicitacaoCompra.FinalizarProdutos(VpaSeqPedido: Integer; VpaProdutosPedido, VpaProdutosPendentes, VpaProdutosFinalizados: TList);
var
  VpfLacoProdutosPedido, VpfLacoProdutosPendentes: Integer;
  VpfDProdutoPedidoCompra: TRBDProdutoPedidoCompra;
  VpfDProdutoPendente: TRBDProdutoPendenteCompra;
begin
  for VpfLacoProdutosPedido:= 0 to VpaProdutosPedido.Count-1 do
  begin
    VpfDProdutoPedidoCompra:= TRBDProdutoPedidoCompra(VpaProdutosPedido.Items[VpfLacoProdutosPedido]);
    for VpfLacoProdutosPendentes:= 0 to VpaProdutosPendentes.Count-1 do
    begin
      VpfDProdutoPendente:= TRBDProdutoPendenteCompra(VpaProdutosPendentes.Items[VpfLacoProdutosPendentes]);
      if (VpfDProdutoPedidoCompra.SeqProduto = VpfDProdutoPendente.SeqProduto) and
         (VpfDProdutoPedidoCompra.CodCor = VpfDProdutoPendente.CodCor) then
      begin
        VpfDProdutoPendente.QtdComprada := VpfDProdutoPendente.QtdComprada + VpfDProdutoPedidoCompra.QtdProduto;
        VpfDProdutoPendente.IndAlterado := true;
        AtualizaQtdCompradaOrcamentosItem(VpfDProdutoPendente);
        if VpfDProdutoPendente.QtdComprada >= VpfDProdutoPendente.QtdAprovada then
        begin
          VpaProdutosPendentes.Delete(VpfLacoProdutosPendentes);
          // remove da lista de produtos pendentes e coloca este mesmo produto
          // dentro da lista de produtos finalizados, para que possa ser feito o
          // controle dos or�amentos no fechamento do formul�rio.
          VpaProdutosFinalizados.Add(VpfDProdutoPendente);
          VpfDProdutoPendente.SeqPedidoGerado:= VpaSeqPedido;

          Break;
          // pode dar um break porque este produto j� foi encontrado
          // ent�o basta ir para o pr�ximo
        end;
      end;
    end;
  end;
end;

{******************************************************************************}
procedure TRBFunSolicitacaoCompra.CarProdutosSelecionados(VpaProdutosPendentes, VpaProdutos, VpaProdutosFinalizados,VpaFracoesOP: TList;VpaIndOrcamento : Boolean);
var
  VpfLacoProPedentes, VpfLacoFracoes: Integer;
  VpfDProdutoPendente: TRBDProdutoPendenteCompra;
  VpfDProdutoPedidoCompra: TRBDProdutoPedidoCompra;
  VpfDProdutoOrcamentoCompra : TRBDOrcamentoCompraProduto;
begin
  for VpfLacoProPedentes:= 0 to VpaProdutosPendentes.Count-1 do
  begin
    VpfDProdutoPendente:= TRBDProdutoPendenteCompra(VpaProdutosPendentes.Items[VpfLacoProPedentes]);
    if VpfDProdutoPendente.IndMarcado then
    begin

      FPedidosCompraAberto:= TFPedidosCompraAberto.CriarSDI(Application,'',True);
      FPedidosCompraAberto.AtualizaPedidoCompraAberto(VpfDProdutoPendente);
      FPedidosCompraAberto.Free;

      if VpfDProdutoPendente.QtdAprovada <= 0 then
      begin
        VpaProdutosFinalizados.Add(VpfDProdutoPendente);
      end
      else
      begin
        if not VpaIndOrcamento then
        begin
          VpfDProdutoPedidoCompra:= TRBDProdutoPedidoCompra.Cria;
          VpaProdutos.Add(VpfDProdutoPedidoCompra);
          VpfDProdutoPedidoCompra.SeqProduto:= VpfDProdutoPendente.SeqProduto;
          VpfDProdutoPedidoCompra.CodCor:= VpfDProdutoPendente.CodCor;
          VpfDProdutoPedidoCompra.CodProduto:= VpfDProdutoPendente.CodProduto;
          VpfDProdutoPedidoCompra.QtdSolicitada:= VpfDProdutoPendente.QtdUtilizada - VpfDProdutoPendente.QtdComprada;
          if VpfDProdutoPedidoCompra.QtdSolicitada < 0 then
            VpfDProdutoPedidoCompra.QtdSolicitada:= 0;
          VpfDProdutoPedidoCompra.QtdProduto:= VpfDProdutoPendente.QtdAprovada - VpfDProdutoPendente.QtdComprada;
          VpfDProdutoPedidoCompra.DatAprovacao := VpfDProdutoPendente.DatAprovacao;
        end
        else
        begin
          VpfDProdutoOrcamentoCompra:= TRBDOrcamentoCompraProduto.Cria;
          VpaProdutos.Add(VpfDProdutoOrcamentoCompra);
          VpfDProdutoOrcamentoCompra.SeqProduto:= VpfDProdutoPendente.SeqProduto;
          VpfDProdutoOrcamentoCompra.CodCor:= VpfDProdutoPendente.CodCor;
          VpfDProdutoOrcamentoCompra.CodProduto:= VpfDProdutoPendente.CodProduto;
          VpfDProdutoOrcamentoCompra.QtdSolicitada:= VpfDProdutoPendente.QtdUtilizada - VpfDProdutoPendente.QtdComprada;
          if VpfDProdutoOrcamentoCompra.QtdSolicitada < 0 then
            VpfDProdutoOrcamentoCompra.QtdSolicitada:= 0;
          VpfDProdutoOrcamentoCompra.QtdProduto:= VpfDProdutoPendente.QtdAprovada - VpfDProdutoPendente.QtdComprada;
          VpfDProdutoOrcamentoCompra.DatAprovacao := VpfDProdutoPendente.DatAprovacao;
        end;
        AdicionaFracaoOPProdutoPendente(VpfDProdutoPendente,VpaFracoesOP);
      end;
    end;
  end;
end;


procedure TRBFunSolicitacaoCompra.AtualizaQtdCompradaOrcamentosItem(VpaDProdutoPendente : TRBDProdutoPendenteCompra);
var
  VpfLacoCorpo, VpfLacoItem : Integer;
  VpfDOrcamentoCompra : TRBDSolicitacaoCompraCorpo;
  VpfDOrcamentoItem : TRBDSolicitacaoCompraItem;
  VpfQtdComprada : Double;
begin
  VpfQtdComprada := VpaDProdutoPendente.QtdComprada;
  for VpfLacoCorpo := 0 to VpaDProdutoPendente.OrcamentosCompra.Count - 1 do
  begin
    VpfDOrcamentoCompra := TRBDSolicitacaoCompraCorpo(VpaDProdutoPendente.OrcamentosCompra.Items[VpfLacoCorpo]);
    for VpfLacoItem := 0 to VpfDOrcamentoCompra.Produtos.Count - 1 do
    begin
      VpfDOrcamentoItem := TRBDSolicitacaoCompraItem(VpfDOrcamentoCompra.Produtos.Items[VpfLacoItem]);
      if (VpfDOrcamentoItem.SeqProduto = VpaDProdutoPendente.SeqProduto) and
         (VpfDOrcamentoItem.CodCor = VpaDProdutoPendente.CodCor) then
      begin
        if VpfQtdComprada >= VpfDOrcamentoItem.QtdAprovado then
        begin
          VpfDOrcamentoItem.QtdComprado := VpfDOrcamentoItem.QtdAprovado;
          VpfDOrcamentoItem.IndComprado := true;
          VpfQtdComprada := VpfQtdComprada - VpfDOrcamentoItem.QtdComprado;
        end
        else
        begin
          VpfDOrcamentoItem.QtdComprado := VpfQtdComprada ;
          VpfQtdComprada := VpfQtdComprada - VpfDOrcamentoItem.QtdAprovado;
        end;
      end;
      if VpfQtdComprada <= 0 then
        break;
    end;
    if VpfQtdComprada <= 0 then
      break;
  end;
  if VpfQtdComprada > 0 then
    VpfDOrcamentoItem.QtdComprado := VpfDOrcamentoItem.QtdComprado + VpfQtdComprada;
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.AssociaOrcamentoCompraProposta(VpaDProposta : TRBDPropostaCorpo;VpaDOrcamentoCompra : TRBDSolicitacaoCompraCorpo) : string;
begin
  result := '';
  AdicionaSQLAbreTabela(Cadastro,'Select * from PROPOSTASOLICITACAOCOMPRA ');
  CAdastro.insert;
  Cadastro.FieldByname('CODFILIAL').AsInteger := VpaDProposta.CodFilial;
  Cadastro.FieldByname('SEQPROPOSTA').AsInteger := VpaDProposta.SeqProposta;
  Cadastro.FieldByname('SEQSOLICITACAO').AsInteger := VpaDOrcamentoCompra.SeqSolicitacao;
  try
    Cadastro.post;
  except
    on e : Exception do result := 'ERRO NA GRAVA��O DA PROPOSTA SOLICITACAO COMPRA!!!'#13+e.message;
  end;
  Cadastro.close;
end;

{******************************************************************************}
function TRBFunSolicitacaoCompra.GeraOrcamentoCompraOrdemProducao(VpaCodFilial,VpaSeqOrdem : Integer) : String;
var
  VpfDOrcamentoCompra : TRBDSolicitacaoCompraCorpo;
  VpfDProdutoOrcamentoCompra : TRBDSolicitacaoCompraItem;
  VpfDFracoes : TRBDSolicitacaoCompraFracaoOP;
begin
  result := '';
  AdicionaSQLAbreTabela(TabelaProdutosPendentes,'select * from FRACAOOPCONSUMO ' +
                                                ' WHERE INDBAIXADO = ''N'''+
                                                ' AND INDORIGEMCORTE = ''N'''+
                                                ' and CODFILIAL = '+IntToStr(VpaCodFilial)+
                                                ' and SEQORDEM = ' +IntToStr(VpaSeqOrdem)+
                                                ' order by SEQPRODUTO, CODCOR');
  VpfDOrcamentoCompra := TRBDSolicitacaoCompraCorpo.Cria;
  VpfDProdutoOrcamentoCompra := VpfDOrcamentoCompra.AddProduto;
  VpfDProdutoOrcamentoCompra.SeqProduto := 0;
  While not TabelaProdutosPendentes.Eof do
  begin
    if ((TabelaProdutosPendentes.FieldByName('QTDPRODUTO').AsFloat - TabelaProdutosPendentes.FieldByName('QTDBAIXADO').AsFloat) > TabelaProdutosPendentes.FieldByName('QTDRESERVADAESTOQUE').AsFloat) then
    begin
      if (VpfDProdutoOrcamentoCompra.SeqProduto <> TabelaProdutosPendentes.FieldByName('SEQPRODUTO').AsInteger) or
         (VpfDProdutoOrcamentoCompra.CodCor <> TabelaProdutosPendentes.FieldByName('CODCOR').AsInteger) then
      begin
        if VpfDProdutoOrcamentoCompra.SeqProduto <> 0 then
        begin
          GravaDOrcamentoCompra(VpfDOrcamentoCompra);
        end;
        VpfDOrcamentoCompra.free;
        VpfDOrcamentoCompra := TRBDSolicitacaoCompraCorpo.Cria;
        InicializaOrcamentoCompra(VpfDOrcamentoCompra);
        VpfDOrcamentoCompra.CodEstagio := varia.EstagioOrcamentoCompraAprovado;
        VpfDOrcamentoCompra.DatAprovacao := now;
        VpfDOrcamentoCompra.CodUsuarioAprovacao := varia.CodigoUsuario;

        VpfDProdutoOrcamentoCompra := VpfDOrcamentoCompra.AddProduto;
        VpfDProdutoOrcamentoCompra.SeqProduto := TabelaProdutosPendentes.FieldByName('SEQPRODUTO').AsInteger;
        VpfDProdutoOrcamentoCompra.CodCor := TabelaProdutosPendentes.FieldByName('CODCOR').AsInteger;
        VpfDProdutoOrcamentoCompra.DesUM := TabelaProdutosPendentes.FieldByName('DESUM').AsString;
        VpfDProdutoOrcamentoCompra.UMOriginal := TabelaProdutosPendentes.FieldByName('DESUM').AsString;
        VpfDProdutoOrcamentoCompra.QtdProduto := 0;
      end;
      VpfDProdutoOrcamentoCompra.QtdProduto := VpfDProdutoOrcamentoCompra.QtdProduto +
                   FunProdutos.CalculaQdadePadrao(TabelaProdutosPendentes.FieldByName('DESUM').AsString,VpfDProdutoOrcamentoCompra.UMOriginal,
                                                  TabelaProdutosPendentes.FieldByName('QTDPRODUTO').AsFloat- TabelaProdutosPendentes.FieldByName('QTDBAIXADO').AsFloaT
                                                  - TabelaProdutosPendentes.FieldByName('QTDRESERVADAESTOQUE').AsFloat,IntToStr(TabelaProdutosPendentes.FieldByName('SEQPRODUTO').AsInteger));
      VpfDProdutoOrcamentoCompra.QtdAprovado := VpfDProdutoOrcamentoCompra.QtdProduto;                                                   

      VpfDFracoes := VpfDOrcamentoCompra.AddFracaoOP;
      VpfDFracoes.CodFilialFracao := TabelaProdutosPendentes.FieldByName('CODFILIAL').AsInteger;
      VpfDFracoes.SeqOrdem := TabelaProdutosPendentes.FieldByName('SEQORDEM').AsInteger;
      VpfDFracoes.SeqFracao := TabelaProdutosPendentes.FieldByName('SEQFRACAO').AsInteger;
    end;
    TabelaProdutosPendentes.next;
  end;
  TabelaProdutosPendentes.Close;
end;

end.
