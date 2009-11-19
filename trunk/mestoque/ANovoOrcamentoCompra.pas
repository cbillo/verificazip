unit ANovoOrcamentoCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, formularios,
  Componentes1, ExtCtrls, PainelGradiente, Localizacao, Mask, StdCtrls,
  Buttons, ComCtrls, Grids, CGrades, UnDadosProduto, Constantes, UnDados, UnOrcamentoCompra,
  DBKeyViolation;

type
  TFNovoOrcamentoCompra = class(TFormularioPermissao)
    PainelGradiente1: TPainelGradiente;
    PanelColor1: TPanelColor;
    PanelColor2: TPanelColor;
    Paginas: TPageControl;
    PGeral: TTabSheet;
    PAdiciona: TTabSheet;
    PanelColor3: TPanelColor;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LFilial: TLabel;
    BCondicoesPgto: TSpeedButton;
    LCondicoesPagto: TLabel;
    BFormaPagto: TSpeedButton;
    LFormaPagamento: TLabel;
    Label3: TLabel;
    LUsuario: TLabel;
    Bevel1: TBevel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label14: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    SpeedButton3: TSpeedButton;
    LDataRenegociado: TLabel;
    ENumero: TEditColor;
    EData: TMaskEditColor;
    ECondicoesPagto: TEditLocaliza;
    EFormaPagto: TEditLocaliza;
    EHora: TMaskEditColor;
    EFilial: TEditLocaliza;
    EUsuario: TEditLocaliza;
    EFilialFaturamento: TEditLocaliza;
    EDatPrevista: TMaskEditColor;
    PanelColor4: TPanelColor;
    Label5: TLabel;
    Label6: TLabel;
    BFornecedor: TSpeedButton;
    LFornecedor: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Label21: TLabel;
    EPrazo: TMaskEditColor;
    EFornecedor: TEditLocaliza;
    EContato: TEditColor;
    EEmailComprador: TEditColor;
    ETelefone: TEditColor;
    Grade: TRBStringGridColor;
    PanelColor5: TPanelColor;
    BCadastrar: TBitBtn;
    BImprimir: TBitBtn;
    BGravar: TBitBtn;
    BCancelar: TBitBtn;
    BFechar: TBitBtn;
    Label19: TLabel;
    SpeedButton4: TSpeedButton;
    Label20: TLabel;
    EComprador: TEditLocaliza;
    PanelColor6: TPanelColor;
    PanelColor7: TPanelColor;
    GNaoAdicionados: TRBStringGridColor;
    PanelColor8: TPanelColor;
    PanelColor9: TPanelColor;
    GAdicionados: TRBStringGridColor;
    PanelColor10: TPanelColor;
    Label10: TLabel;
    Adicionar: TBitBtn;
    BRemover: TBitBtn;
    Label11: TLabel;
    ECliente: TEditLocaliza;
    Localiza: TConsultaPadrao;
    BTodos: TBitBtn;
    ValidaGravacao1: TValidaGravacao;
    ECor: TEditLocaliza;
    BEnviar: TBitBtn;
    BExcluir: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GradeCarregaItemGrade(Sender: TObject; VpaLinha: Integer);
    procedure PaginasChange(Sender: TObject);
    procedure BFecharClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BGravarClick(Sender: TObject);
    procedure ECompradorChange(Sender: TObject);
    procedure GradeDadosValidos(Sender: TObject; var VpaValidos: Boolean);
    procedure GradeGetEditMask(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure GradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ECorRetorno(Retorno1, Retorno2: String);
    procedure GradeMudouLinha(Sender: TObject; VpaLinhaAtual,
      VpaLinhaAnterior: Integer);
    procedure GradeNovaLinha(Sender: TObject);
    procedure GradeSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BImprimirClick(Sender: TObject);
    procedure GAdicionadosCarregaItemGrade(Sender: TObject;
      VpaLinha: Integer);
    procedure BEnviarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BRemoverClick(Sender: TObject);
    procedure GNaoAdicionadosCarregaItemGrade(Sender: TObject;
      VpaLinha: Integer);
    procedure AdicionarClick(Sender: TObject);
    procedure GradeDepoisExclusao(Sender: TObject);
  private
    { Private declarations }
    VprAcao,
    VprIndSolicitacaoCompra : Boolean;
    VprProdutoAnterior,
    VprCorAnterior : string;
    VprDOrcamento : TRBDOrcamentoCompraCorpo;
    VprDProdutoOrcamento,
    VprDProFornecedorOrc,
    VprDProNaoAdicionadoFornecedorOrc : TRBDOrcamentoCompraProduto;
    VprDFornecedorOrcamento : TRBDOrcamentoCompraFornecedor;
    VprProdutosPendentes,
    VprProdutosFinalizados : TList;
    VprOperacao : TRBDOperacaoCadastro;
    FunOrcamentoCompra : TRBFuncoesOrcamentoCompra;
    procedure ConfiguraPermissaoUsuario;
    procedure CarTitulosGrade;
    procedure CarTituloGradeProduto(VpaGrade :TRBStringGridColor);
    procedure InicializaTela;
    procedure CarDClasse;
    procedure CarDClasseProdutos;
    procedure CarDTela;
    procedure CarDFornecedoresTela;
    procedure CarDFornecedoresClasse;
    function ExisteProduto: Boolean;
    function LocalizaProduto: Boolean;
    function ExisteCor : Boolean;
    function ExisteFornedorDuplicado(VpaCodFornecedor : Integer):Boolean;
    procedure EstadoBotoes(VpaSituacao : Boolean);
    procedure CarDProdutoSolicitacaoTela(VpaProdutos: TList);
    procedure AdicionaFornecedor;
    procedure BloquearTela;
  public
    { Public declarations }
    function NovoOrcamento:Boolean;
    function NovoOrcamentoProdutosPendentes(VpaProdutos, VpaFracoesOP, VpaProdutosPendentes, VpaProdutosFinalizados: TList): Boolean;
    function Alterar(VpaCodFilial, VpaSeqOrcamento: Integer): Boolean;
    procedure Consultar(VpaCodFilial, VpaSeqOrcamento: Integer);
  end;

var
  FNovoOrcamentoCompra: TFNovoOrcamentoCompra;

implementation

uses APrincipal, unProdutos, FunObjeto, UnClientes, FunData, ConstMsg, FunString, FunNumeros,
  ALocalizaProdutos, UnCrystal;

{$R *.DFM}


{ ****************** Na cria��o do Formul�rio ******************************** }
procedure TFNovoOrcamentoCompra.FormCreate(Sender: TObject);
begin
  {  abre tabelas }
  { chamar a rotina de atualiza��o de menus }
  FunOrcamentoCompra := TRBFuncoesOrcamentoCompra.cria(FPrincipal.BaseDados);
  ConfiguraPermissaoUsuario;
  Paginas.ActivePage := PGeral;
  VprIndSolicitacaoCompra := false;
  VprAcao := false;
  CarTitulosGrade;
  VprDOrcamento := TRBDOrcamentoCompraCorpo.cria;
  Grade.ADados := VprDOrcamento.Produtos;
  Grade.CarregaGrade;
end;

{ ******************* Quando o formulario e fechado ************************** }
procedure TFNovoOrcamentoCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  { fecha tabelas }
  { chamar a rotina de atualiza��o de menus }
  FunOrcamentoCompra.free;
  VprDOrcamento.free;
  Action := CaFree;
end;

{(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((
                            A��es Diversas
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))}

{******************************************************************************}
procedure TFNovoOrcamentoCompra.ConfiguraPermissaoUsuario;
begin
  if not config.EstoquePorCor then
  begin
    Grade.ColWidths[3] := -1;
    Grade.ColWidths[4] := -1;
    Grade.ColWidths[2] := RetornaInteiro(Grade.ColWidths[2] *1.9);
  end;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.CarTitulosGrade;
begin
  Grade.cells[1,0] := 'C�digo';
  Grade.cells[2,0] := 'Produto';
  Grade.cells[3,0] := 'C�digo';
  Grade.cells[4,0] := 'Cor';
  Grade.cells[5,0] := 'UM';
  Grade.cells[6,0] := 'Qtd Solicitada';
  Grade.cells[7,0] := 'Qtd Or�amento';
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.CarTituloGradeProduto(VpaGrade :TRBStringGridColor);
begin
  VpaGrade.Cells[1,0] := 'C�digo';
  VpaGrade.cells[2,0] := 'Produto';
  VpaGrade.cells[3,0] := 'C�digo';
  VpaGrade.cells[4,0] := 'Cor';
  VpaGrade.cells[5,0] := 'UM';
  VpaGrade.cells[6,0] := 'Qtd Solicitada';
  VpaGrade.cells[7,0] := 'Qtd Or�amento';
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.InicializaTela;
begin
  VprDOrcamento.free;
  VprDOrcamento := TRBDOrcamentoCompraCorpo.cria;
  Grade.ADados := VprDOrcamento.Produtos;
  Grade.CarregaGrade;
  VprDOrcamento.CodFilialFaturamento := varia.CodFilialFaturamentoCompras;
  VprDOrcamento.CodUsuario := Varia.CodigoUsuario;
  VprDOrcamento.CodFilial := varia.CodigoEmpFil;
  VprDOrcamento.CodEstagio := varia.EstagioInicialOrcamentoCompra;
  VprDOrcamento.CodComprador := varia.CodComprador;
  VprDOrcamento.DatOrcamento := date;
  VprDOrcamento.HorOrcamento := now;
  VprDOrcamento.DatPrevista := incdia(date,1);
  CarDTela;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.CarDClasse;
begin
  VprDOrcamento.CodFilialFaturamento := EFilialFaturamento.AInteiro;
  VprDOrcamento.DatPrevista := StrToDate(EDatPrevista.Text);
  VprDOrcamento.CodCondicaoPagto := ECondicoesPagto.AInteiro;
  VprDOrcamento.CodFormaPagto := EFormaPagto.AInteiro;
  VprDOrcamento.CodComprador := EComprador.AInteiro;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.CarDTela;
begin
  EFilial.AInteiro := VprDOrcamento.CodFilial;
  EFilial.Atualiza;
  EUsuario.AInteiro := VprDOrcamento.CodUsuario;
  EUsuario.Atualiza;
  ENumero.AInteiro := VprDOrcamento.SeqOrcamento;
  EData.text := FormatDateTime('DD/MM/YYYY',VprDOrcamento.DatOrcamento);
  EHora.Text := FormatDateTime('HH:MM',VprDOrcamento.HorOrcamento);
  EFilialFaturamento.AInteiro := VprDOrcamento.CodFilialFaturamento;
  EFilial.Atualiza;
  EDatPrevista.Text := FormatDateTime('DD/MM/YYYY',VprDOrcamento.DatPrevista);
  ECondicoesPagto.AInteiro := VprDOrcamento.CodCondicaoPagto;
  ECondicoesPagto.Atualiza;
  EFormaPagto.AInteiro := VprDOrcamento.CodFormaPagto;
  EFormaPagto.Atualiza;
  EComprador.AInteiro := VprDOrcamento.CodComprador;

  Grade.ADados := VprDOrcamento.Produtos;
  Grade.CarregaGrade;
  CarDFornecedoresTela;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.CarDFornecedoresTela;
var
  VpfLaco : Integer;
  VpfPagina : TTabSheet;
  VpfDCliente : TRBDCliente;
  VpfGrade : TRBStringGridColor;
begin
  for VpfLaco := Paginas.PageCount - 2 downto 1 do
  begin
    Paginas.Pages[VpfLaco].Destroy;
  end;

  for vpflaco :=0 to VprDOrcamento.Fornecedores.Count - 1 do
  begin
    VprDFornecedorOrcamento := TRBDOrcamentoCompraFornecedor(VprDOrcamento.Fornecedores.Items[VpfLaco]);
    VpfPagina := TTabSheet.Create(Paginas);
    Paginas.InsertControl(VpfPagina);
    VpfPagina.PageControl := Paginas;
    Paginas.ActivePage:= VpfPagina;
    PAdiciona.PageIndex := Paginas.PageCount - 1;

    CopiaComponente(PAdiciona,VpfPagina);
    TEditLocaliza(LocalizaComponente(VpfPagina,10)).AInteiro := VprDFornecedorOrcamento.CodFornecedor;
    TEditLocaliza(LocalizaComponente(VpfPagina,10)).Atualiza;
    TEditColor(LocalizaComponente(VpfPagina,11)).Text := VprDFornecedorOrcamento.NomContato;
    TEditColor(LocalizaComponente(VpfPagina,13)).Text := VprDFornecedorOrcamento.DesEmailFornecedor;

    VpfDCliente := TRBDCliente.cria;
    VpfDCliente.CodCliente := VprDFornecedorOrcamento.CodFornecedor;
    FunClientes.CarDCliente(VpfDCliente);
    TEditColor(LocalizaComponente(VpfPagina,12)).Text := VpfDCliente.DesFone1;
    VpfPagina.Caption := copy(VpfDCliente.NomCliente,1,10);

    VpfGrade := TRBStringGridColor(LocalizaComponente(VpfPagina,14));
    VpfGrade.OnCarregaItemGrade :=  GAdicionadosCarregaItemGrade;
    VpfGrade.ADados := VprDFornecedorOrcamento.ProdutosAdicionados;
    VpfGrade.CarregaGrade;
    CarTituloGradeProduto(VpfGrade);

    VpfGrade := TRBStringGridColor(LocalizaComponente(VpfPagina,15));
    VpfGrade.ADados := VprDFornecedorOrcamento.ProdutosNaoAdicionados;
    VpfGrade.OnCarregaItemGrade :=  GNaoAdicionadosCarregaItemGrade;
    VpfGrade.CarregaGrade;
    CarTituloGradeProduto(VpfGrade);

    VpfDCliente.Free;
  end;
  Paginas.ActivePageIndex := 0;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.CarDFornecedoresClasse;
var
  VpfLaco : Integer;
  VpfPaginaAtual : TTabSheet;
begin
  for VpfLaco := 1 to Paginas.PageCount - 2 do
  begin
    VpfPaginaAtual := Paginas.Pages[VpfLaco];
    VprDFornecedorOrcamento := TRBDOrcamentoCompraFornecedor(VprDOrcamento.Fornecedores.Items[VpfLaco-1]);
    VprDFornecedorOrcamento.NomContato := TEditColor(LocalizaComponente(VpfPaginaAtual,11)).Text;
    VprDFornecedorOrcamento.DesEmailFornecedor := TEditColor(LocalizaComponente(VpfPaginaAtual,13)).Text;
    VprDFornecedorOrcamento.CodFornecedor := TEditLocaliza(LocalizaComponente(VpfPaginaAtual,10)).AInteiro;
  end;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.CarDClasseProdutos;
begin
  VprDProdutoOrcamento.SeqItem:= 0;
  if Grade.Cells[3,Grade.ALinha] <> '' then
    VprDProdutoOrcamento.CodCor:= StrToInt(Grade.Cells[3,Grade.ALinha])
  else
    VprDProdutoOrcamento.CodCor:= 0;
  VprDProdutoOrcamento.DesUM:= Grade.Cells[5,Grade.ALinha];
  if Grade.Cells[6,Grade.ALinha] <> '' then
    VprDProdutoOrcamento.QtdSolicitada:= StrToFloat(DeletaChars(Grade.Cells[6,Grade.ALinha],'.'))
  else
    VprDProdutoOrcamento.QtdSolicitada:= 0;
  if Grade.Cells[7,Grade.ALinha] <> '' then
    VprDProdutoOrcamento.QtdProduto:= StrToFloat(DeletaChars(Grade.Cells[7,Grade.ALinha],'.'))
  else
    VprDProdutoOrcamento.QtdProduto:= 0;
end;

{******************************************************************************}
function TFNovoOrcamentoCompra.ExisteProduto: Boolean;
begin
  Result:= False;
  if Grade.Cells[1,Grade.ALinha] <> '' then
  begin
    if Grade.Cells[1,Grade.ALinha] = VprProdutoAnterior then
      Result:= True
    else
    begin
      Result:= FunProdutos.ExisteProduto(Grade.Cells[1,Grade.ALinha],VprDProdutoOrcamento);
      if Result then
      begin
        VprProdutoAnterior:= VprDProdutoOrcamento.CodProduto;
        VprCorAnterior:= '';

        Grade.Cells[2,Grade.ALinha]:= VprDProdutoOrcamento.NomProduto;
        Grade.Cells[5,Grade.ALinha]:= VprDProdutoOrcamento.DesUM;
        Grade.Cells[7,Grade.ALinha]:= FormatFloat(Varia.MascaraQtd,VprDProdutoOrcamento.Qtdproduto);
        Grade.Cells[8,Grade.ALinha]:= FormatFloat(Varia.MascaraValor,VprDProdutoOrcamento.ValUnitario);
        Grade.Cells[11,Grade.ALinha]:= FormatFloat('0.00',VprDProdutoOrcamento.PerIPI);
      end;
    end;
  end
end;

{******************************************************************************}
function TFNovoOrcamentoCompra.LocalizaProduto: Boolean;
begin
  FLocalizaProduto:= TFLocalizaProduto.CriarSDI(Application,'',True);
  Result:= FLocalizaProduto.LocalizaProduto(VprDProdutoOrcamento);
  FLocalizaProduto.Free;
  if Result then
  begin
    VprProdutoAnterior := VprDProdutoOrcamento.CodProduto;
    VprCorAnterior:= '';

    Grade.Cells[1,Grade.ALinha]:= VprDProdutoOrcamento.CodProduto;
    Grade.Cells[2,Grade.ALinha]:= VprDProdutoOrcamento.NomProduto;
    Grade.Cells[5,Grade.ALinha]:= VprDProdutoOrcamento.DesUM;
    Grade.Cells[6,Grade.ALinha]:= FormatFloat(Varia.MascaraQtd,VprDProdutoOrcamento.QtdSolicitada);
    Grade.Cells[7,Grade.ALinha]:= FormatFloat(Varia.MascaraQtd,VprDProdutoOrcamento.Qtdproduto);

    Grade.Col:= 3;
    if Grade.AEstadoGrade = egNavegacao then
      Grade.AEstadoGrade :=egEdicao;
  end;
end;

{******************************************************************************}
function TFNovoOrcamentoCompra.ExisteCor : Boolean;
begin
  Result:= True;
  if Grade.Cells[3,Grade.ALinha] <> '' then
  begin
    if (Grade.Cells[3,Grade.ALinha] = VprCorAnterior) then
      Result:= True
    else
    begin
      Result:= FunProdutos.ExisteCor(Grade.Cells[3,Grade.ALinha],VprDProdutoOrcamento.NomCor);
      if Result then
      begin
        Grade.Cells[4,Grade.ALinha]:= VprDProdutoOrcamento.NomCor;

        VprCorAnterior:= Grade.Cells[3,Grade.ALinha];

        VprDProdutoOrcamento.CodCor:= StrToInt(Grade.Cells[3,Grade.ALinha]);
      end;
    end;
  end;
end;

{******************************************************************************}
function TFNovoOrcamentoCompra.ExisteFornedorDuplicado(VpaCodFornecedor : Integer):Boolean;
var
  VpfLaco : Integer;
begin
  result := false;
  for VpfLaco := 0 to VprDOrcamento.Fornecedores.Count - 1 do
  begin
    if TRBDOrcamentoCompraFornecedor(VprDOrcamento.Fornecedores.Items[VpfLaco]).CodFornecedor = VpaCodFornecedor then
    begin
      result := true;
      break;
    end;
  end;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.EstadoBotoes(VpaSituacao : Boolean);
begin
  BCadastrar.Enabled := not VpaSituacao;
  BGravar.Enabled := VpaSituacao;
  BCancelar.Enabled := VpaSituacao;
  BImprimir.Enabled := not VpaSituacao;
  BEnviar.Enabled := Not VpaSituacao;
  BFechar.Enabled := not VpaSituacao;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.CarDProdutoSolicitacaoTela(VpaProdutos: TList);
var
  VpfLaco: Integer;
  VpfDProdutoOrcamentoCompra,
  VpfDProdutoOrcamentoCompraAux: TRBDOrcamentoCompraProduto;
begin
  for VpfLaco:= 0 to VpaProdutos.Count-1 do
  begin
    VpfDProdutoOrcamentoCompraAux:= TRBDOrcamentoCompraProduto(VpaProdutos.Items[VpfLaco]);
    // fazer a importa��o dos produtos para a lista do pedido aqui, pois ser�
    // necess�rio fazer um controle externo na lista de produtos mais tarde.
    VpfDProdutoOrcamentoCompra:= VprDorcamento.AddProduto;
    VpfDProdutoOrcamentoCompra.SeqProduto:= VpfDProdutoOrcamentoCompraAux.SeqProduto;
    VpfDProdutoOrcamentoCompra.CodCor:= VpfDProdutoOrcamentoCompraAux.CodCor;
    VpfDProdutoOrcamentoCompra.CodProduto:= VpfDProdutoOrcamentoCompraAux.CodProduto;
  end;
  Grade.CarregaGrade;
  Grade.Col:= 1;

  for VpfLaco:= 1 to Grade.RowCount-1 do
  begin
    VpfDProdutoOrcamentoCompraAux:= TRBDOrcamentoCompraProduto(VpaProdutos.Items[VpfLaco-1]);
    VprProdutoAnterior:= '';
    VprCorAnterior:= '';
    Grade.ALinha:= VpfLaco;
    VprDProdutoOrcamento:= TRBDOrcamentoCompraProduto(VprDOrcamento.Produtos.Items[VpfLaco-1]);
    ExisteProduto;
    ExisteCor;
    VprDProdutoOrcamento.QtdSolicitada:= VpfDProdutoOrcamentoCompraAux.QtdSolicitada;
    VprDProdutoOrcamento.QtdProduto:= VpfDProdutoOrcamentoCompraAux.QtdProduto;
    // carregar corretamente a quantidade do produto, j� que ela � redefinida
    // para 1 dentro do ExisteProduto
    Grade.Cells[6,Grade.ALinha]:= FormatFloat(Varia.MascaraQtd,VpfDProdutoOrcamentoCompraAux.QtdSolicitada);
    Grade.Cells[7,Grade.ALinha]:= FormatFloat(Varia.MascaraQtd,VpfDProdutoOrcamentoCompraAux.QtdProduto);
    CarDClasseProdutos;
  end;
  Grade.CarregaGrade;
  Grade.Col:= 1;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.AdicionaFornecedor;
var
  VpfPagina : TTabSheet;
  VpfEditFornecedor : TEditLocaliza;
  VpfDCliente :TRBDCliente;
  VpfGrade : TRBStringGridColor;
begin
  if VprOperacao in [ocEdicao,ocinsercao] then
  begin
    if ECliente.AAbreLocalizacao then
    begin
      if not ExisteFornedorDuplicado(ECliente.ainteiro) then
      begin
        VpfPagina := TTabSheet.Create(Paginas);
        Paginas.InsertControl(VpfPagina);
        VpfPagina.PageControl := Paginas;
        Paginas.ActivePage:= VpfPagina;
        PAdiciona.PageIndex := Paginas.PageCount - 1;

        CopiaComponente(PAdiciona,VpfPagina);
        VpfEditFornecedor := TEditLocaliza(LocalizaComponente(VpfPagina,10));
        VpfEditFornecedor.AInteiro := ECliente.AInteiro;
        VpfEditFornecedor.Atualiza;

        VpfDCliente := TRBDCliente.cria;
        VpfDCliente.CodCliente := ECliente.AInteiro;
        FunClientes.CarDCliente(VpfDCliente);
        TEditColor(LocalizaComponente(VpfPagina,11)).Text := VpfDCliente.NomContatoFornecedor;
        TEditColor(LocalizaComponente(VpfPagina,12)).Text := VpfDCliente.DesFone1;
        TEditColor(LocalizaComponente(VpfPagina,13)).Text := VpfDCliente.DesEmailFornecedor;
        VpfPagina.Caption := copy(VpfDCliente.NomCliente,1,10);

        VprDFornecedorOrcamento := VprDOrcamento.addFornecedor;
        VprDFornecedorOrcamento.CodFornecedor := VpfDCliente.CodCliente;
        VprDFornecedorOrcamento.NomContato := VpfDCliente.NomContatoFornecedor;
        VprDFornecedorOrcamento.DesEmailFornecedor := VpfDCliente.DesEmailFornecedor;

        FunOrcamentoCompra.AdicionaProdutosFornecedor(VprDOrcamento,VprDFornecedorOrcamento);
        VpfGrade := TRBStringGridColor(LocalizaComponente(VpfPagina,14));
        VpfGrade.OnCarregaItemGrade :=  GAdicionadosCarregaItemGrade;
        VpfGrade.ADados := VprDFornecedorOrcamento.ProdutosAdicionados;
        VpfGrade.CarregaGrade;
        CarTituloGradeProduto(VpfGrade);

        VpfGrade := TRBStringGridColor(LocalizaComponente(VpfPagina,15));
        VpfGrade.ADados := VprDFornecedorOrcamento.ProdutosNaoAdicionados;
        VpfGrade.OnCarregaItemGrade :=  GNaoAdicionadosCarregaItemGrade;
        VpfGrade.CarregaGrade;
        CarTituloGradeProduto(VpfGrade);

        VpfDCliente.Free;
      end
      else
      begin
        aviso('FORNECEDOR DUPLICADO!!!'#13'Esse fornecedor j� foi adicionado no or�amento.');
        Paginas.ActivePage := PGeral;
      end;
    end
    else
      Paginas.ActivePage := PGeral;
  end
  else
  begin
    Paginas.ActivePage := PGeral;
    aviso('OR�AMENTO DE COMPRA J� GRAVADO!!!'#13'Antes de adicionar um novo fornecedor � necess�rio alterar o or�amento.');
  end;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.BloquearTela;
begin
  AlteraReadOnlyDet(Paginas,0,true);

  Grade.APermiteExcluir:= False;
  Grade.APermiteInserir:= False;

  EstadoBotoes(false);
end;

{******************************************************************************}
function TFNovoOrcamentoCompra.NovoOrcamento:Boolean;
begin
  VprOperacao:= ocInsercao;
  EstadoBotoes(true);

  InicializaTela;

  ValidaGravacao1.execute;
  ShowModal;
  Result:= VprAcao;
end;

{******************************************************************************}
function TFNovoOrcamentoCompra.NovoOrcamentoProdutosPendentes(VpaProdutos, VpaFracoesOP, VpaProdutosPendentes, VpaProdutosFinalizados: TList): Boolean;
begin
  VprIndSolicitacaoCompra := true;
  VprProdutosPendentes := VpaProdutosPendentes;
  VprProdutosFinalizados := VpaProdutosFinalizados;
  VprOperacao:= ocInsercao;
  EstadoBotoes(true);

  InicializaTela;

  CarDProdutoSolicitacaoTela(VpaProdutos);
//  CarDFracoesOrcamentoTela(VpaFracoesOP);
  FunOrcamentoCompra.AdicionaFornecedoresOrcamentoCompra(VprDOrcamento);
  FunOrcamentoCompra.AdicionaProdutosNaoAdicionadosFornecedor(VprDOrcamento);
  CarDFornecedoresTela;
  ValidaGravacao1.execute;
  ShowModal;
  Result:= VprAcao;

end;

{******************************************************************************}
function TFNovoOrcamentoCompra.Alterar(VpaCodFilial, VpaSeqOrcamento: Integer): Boolean;
begin
  VprOperacao:= ocConsulta;
  FunOrcamentoCompra.CarDOrcamento(VpaCodFilial,VpaSeqOrcamento,VprDOrcamento);
  CarDTela;
  EstadoBotoes(true);
  VprOperacao:= ocEdicao;
  ShowModal;
  result := VprAcao;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.Consultar(VpaCodFilial, VpaSeqOrcamento: Integer);
begin
  VprOperacao:= ocConsulta;
  FunOrcamentoCompra.CarDOrcamento(VpaCodFilial,VpaSeqOrcamento,VprDOrcamento);
  CarDTela;
  BloquearTela;

  ShowModal;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.GradeCarregaItemGrade(Sender: TObject;
  VpaLinha: Integer);
begin
  VprDProdutoOrcamento:= TRBDOrcamentoCompraProduto(VprDOrcamento.Produtos.Items[VpaLinha-1]);
  Grade.Cells[1,Grade.ALinha]:= VprDProdutoOrcamento.CodProduto;
  Grade.Cells[2,Grade.ALinha]:= VprDProdutoOrcamento.NomProduto;
  if VprDProdutoOrcamento.CodCor <> 0 then
    Grade.Cells[3,Grade.ALinha]:= IntToStr(VprDProdutoOrcamento.CodCor)
  else
    Grade.Cells[3,Grade.ALinha]:= '';
  Grade.Cells[4,Grade.ALinha]:= VprDProdutoOrcamento.NomCor;
  Grade.Cells[5,Grade.ALinha]:= VprDProdutoOrcamento.DesUM;
  if VprDProdutoOrcamento.QtdSolicitada <> 0 then
    Grade.Cells[6,Grade.ALinha]:= FormatFloat(Varia.MascaraQtd,VprDProdutoOrcamento.QtdSolicitada)
  else
    Grade.Cells[6,Grade.ALinha]:= '';
  if VprDProdutoOrcamento.QtdProduto <> 0 then
    Grade.Cells[7,Grade.ALinha]:= FormatFloat(Varia.MascaraQtd,VprDProdutoOrcamento.QtdProduto)
  else
    Grade.Cells[7,Grade.ALinha]:= '';
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.PaginasChange(Sender: TObject);
begin
  if Paginas.ActivePage = PAdiciona then
    AdicionaFornecedor
  else
  begin
    if Paginas.ActivePageIndex > 0  then
    begin
      VprDFornecedorOrcamento := TRBDOrcamentoCompraFornecedor(VprDOrcamento.Fornecedores.Items[Paginas.ActivePageIndex-1]);
      TRBStringGridColor(LocalizaComponente(Paginas.ActivePage,14)).CarregaGrade;
      TRBStringGridColor(LocalizaComponente(Paginas.ActivePage,15)).CarregaGrade;
    end;
  end;

end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.BFecharClick(Sender: TObject);
begin
  close;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.BCancelarClick(Sender: TObject);
begin
  close;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.BGravarClick(Sender: TObject);
var
  VpfResultado : String;
begin
  CarDClasse;
  CarDFornecedoresClasse;
  VpfResultado := FunOrcamentoCompra.GravaDOrcamento(VprDOrcamento);
  if VpfResultado = '' then
  begin
    VprAcao := true;
    EstadoBotoes(false);
    VprOperacao := ocConsulta;
  end
  else
    aviso(VpfResultado);
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.ECompradorChange(Sender: TObject);
begin
  if VprOperacao in [ocInsercao,ocEdicao] then
    ValidaGravacao1.execute;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.GradeDadosValidos(Sender: TObject;
  var VpaValidos: Boolean);
begin
  VpaValidos:= True;
  if not ExisteProduto then
  begin
    VpaValidos:= False;
    aviso('C�DIGO DO PRODUTO N�O PREENCHIDO!!!'#13'� necess�rio informar o c�digo do produto.');
    Grade.Col:= 1;
  end
  else
    if not ExisteCor then
    begin
      VpaValidos:= False;
      aviso('COR N�O CADASTRADA!!!'#13'Informe uma cor que esteja cadastrada.');
      Grade.Col:= 3;
    end
    else
      if VprDProdutoOrcamento.UnidadesParentes.IndexOf(Grade.Cells[5,Grade.ALinha]) < 0 then
      begin
        VpaValidos:= False;
        aviso(CT_UNIDADEVAZIA);
        Grade.Col:= 5;
      end
      else
        if Grade.Cells[6,Grade.ALinha] = '' then
        begin
          VpaValidos:= False;
          aviso('QUANTIDADE SOLICITADA N�O PREENCHIDA!!!'#13'� necess�rio preencer a quantidade solicitada do produto.');
          Grade.Col:= 6;
        end
        else
          if Grade.Cells[7,Grade.ALinha] = '' then
          begin
            VpaValidos:= False;
            aviso('QUANTIDADE  N�O PREENCHIDA!!!'#13'� necess�rio preencer a quantidade  do produto.');
            Grade.Col:= 7;
          end;

  if VpaValidos then
  begin
    CarDClasseProdutos;
    if VprDProdutoOrcamento.QtdSolicitada = 0 then
    begin
      VpaValidos:= False;
      aviso('QUANTIDADE SOLICITADA N�O PREENCHIDA!!!'#13'� necess�rio preencher a quantidade solicitada.');
      Grade.Col:= 6;
    end
    else
      if VprDProdutoOrcamento.QtdProduto = 0 then
      begin
        VpaValidos:= False;
        aviso('QUANTIDADE N�O PREENCHIDA!!!'#13'� necess�rio preencher a quantidade do produto');
        Grade.Col:= 7;
      end;
  end;
  if VpaValidos then
  begin
    FunOrcamentoCompra.ExcluiProdutoNosFornecedores(VprDOrcamento);
    FunOrcamentoCompra.AdicionaProdutoNosFornecedores(VprDOrcamento);
  end;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.GradeDepoisExclusao(Sender: TObject);
begin
  FunOrcamentoCompra.ExcluiProdutoNosFornecedores(VprDOrcamento);
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.GradeGetEditMask(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
  case ACol of
    3: Value:= '000000;0; ';
  end;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.GradeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 114 then
    case Grade.Col of
      1: LocalizaProduto;
      3: ECor.AAbreLocalizacao;
    end;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.ECorRetorno(Retorno1, Retorno2: String);
begin
  Grade.Cells[3,Grade.ALinha]:= Retorno1;
  Grade.Cells[4,Grade.ALinha]:= Retorno2;
end;

procedure TFNovoOrcamentoCompra.GradeMudouLinha(Sender: TObject;
  VpaLinhaAtual, VpaLinhaAnterior: Integer);
begin
  if VprDOrcamento.Produtos.Count > 0 then
  begin
    VprDProdutoOrcamento:= TRBDOrcamentoCompraProduto(VprDOrcamento.Produtos.Items[VpaLinhaAtual-1]);
    VprProdutoAnterior:= VprDProdutoOrcamento.CodProduto;
    VprCorAnterior:= IntToStr(VprDProdutoOrcamento.CodCor);
  end;                                            
end;

procedure TFNovoOrcamentoCompra.GradeNovaLinha(Sender: TObject);
begin
  VprDProdutoOrcamento := VprDOrcamento.addProduto;
end;

procedure TFNovoOrcamentoCompra.GradeSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if Grade.AEstadoGrade in [egEdicao,egInsercao] then
  begin
    if Grade.AColuna <> ACol then
    begin
      case Grade.AColuna of
        1: if not ExisteProduto then
             if not LocalizaProduto then
             begin
               Grade.Cells[1,Grade.ALinha]:= '';
               Grade.Cells[2,Grade.ALinha]:= '';
               Abort;
             end;
        3: if not ExisteCor then
           begin
             Grade.Cells[3,Grade.ALinha]:= '';
             Grade.Cells[4,Grade.ALinha]:= '';
             Abort;
           end;
      end;
    end;
  end;
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.BImprimirClick(Sender: TObject);
begin
  FunCrystal.ImprimeRelatorioDiretoImpressora(Varia.ImpressoraRelatorio, Varia.PathRelatorios + '\Compras\XX_Orcamento de Compra.rpt',[IntToStr(VprDOrcamento.CodFilial),Inttostr(VprDOrcamento.SeqOrcamento)]);
end;


{******************************************************************************}
procedure TFNovoOrcamentoCompra.GAdicionadosCarregaItemGrade(
  Sender: TObject; VpaLinha: Integer);
var
  VpfGrade : TRBStringGridColor;
begin
  VpfGrade := TRBStringGridColor(Sender);
  VprDProFornecedorOrc := TRBDOrcamentoCompraProduto(VprDFornecedorOrcamento.ProdutosAdicionados.Items[VpaLinha-1]);
  VpfGrade.Cells[1,VpfGrade.ALinha]:= VprDProFornecedorOrc.CodProduto;
  VpfGrade.Cells[2,VpfGrade.ALinha]:= VprDProFornecedorOrc.NomProduto;
  if VprDProFornecedorOrc.CodCor <> 0 then
    VpfGrade.Cells[3,VpfGrade.ALinha]:= IntToStr(VprDProFornecedorOrc.CodCor)
  else
    VpfGrade.Cells[3,VpfGrade.ALinha]:= '';
  VpfGrade.Cells[4,VpfGrade.ALinha]:= VprDProFornecedorOrc.NomCor;
  VpfGrade.Cells[5,VpfGrade.ALinha]:= VprDProFornecedorOrc.DesUM;
  if VprDProFornecedorOrc.QtdSolicitada <> 0 then
    VpfGrade.Cells[6,VpfGrade.ALinha]:= FormatFloat(Varia.MascaraQtd,VprDProFornecedorOrc.QtdSolicitada)
  else
    VpfGrade.Cells[6,VpfGrade.ALinha]:= '';
  if VprDProFornecedorOrc.QtdProduto <> 0 then
    VpfGrade.Cells[7,Grade.ALinha]:= FormatFloat(Varia.MascaraQtd,VprDProFornecedorOrc.QtdProduto)
  else
    VpfGrade.Cells[7,VpfGrade.ALinha]:= '';
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.BEnviarClick(Sender: TObject);
var
  VpfResultado : String;
begin
  VpfResultado :=  FunOrcamentoCompra.EnviaEmailFornecedor(VprDOrcamento);
  if VpfResultado <> '' then
    aviso(VpfResultado);
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.BExcluirClick(Sender: TObject);
var
  VpfIndice : Integer;
begin
  VpfIndice := Paginas.ActivePageIndex;
  Paginas.Pages[VpfIndice].free;
  Paginas.ActivePage := Paginas.Pages[VpfIndice-1];
  TRBDOrcamentoCompraFornecedor(VprDOrcamento.Fornecedores.Items[VpfIndice-1]).Free;
  VprDOrcamento.Fornecedores.Delete(VpfIndice-1);
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.BRemoverClick(Sender: TObject);
Var
  VpfGrade : TRBStringGridColor;
begin
  if VprDFornecedorOrcamento.ProdutosAdicionados.Count > 0 then
  begin
    VpfGrade := TRBStringGridColor(LocalizaComponente(Paginas.ActivePage,14));
    VprDFornecedorOrcamento.ProdutosNaoAdicionados.Add(VprDFornecedorOrcamento.ProdutosAdicionados.Items[VpfGrade.ALinha-1]);
    VprDFornecedorOrcamento.ProdutosAdicionados.Delete(VpfGrade.ALinha-1);
    VpfGrade.CarregaGrade;

    VpfGrade := TRBStringGridColor(LocalizaComponente(Paginas.ActivePage,15));
    VpfGrade.CarregaGrade;
  end
  else
    aviso('GRADE VAZIA!!!'#13'N�o existem produtos a serem exclu�dos na grade');
end;

{******************************************************************************}
procedure TFNovoOrcamentoCompra.GNaoAdicionadosCarregaItemGrade(
  Sender: TObject; VpaLinha: Integer);
var
  VpfGrade : TRBStringGridColor;
begin
  VpfGrade := TRBStringGridColor(Sender);
//  VprDProNaoAdicionadoFornecedorOrc := TRBDOrcamentoCompraProduto(VprDFornecedorOrcamento.ProdutosNaoAdicionados.Items[VpaLinha-1]);
  VprDProNaoAdicionadoFornecedorOrc := TRBDOrcamentoCompraProduto(VpfGrade.ADados.Items[VpaLinha-1]);
  VpfGrade.Cells[1,VpfGrade.ALinha]:= VprDProNaoAdicionadoFornecedorOrc.CodProduto;
  VpfGrade.Cells[2,VpfGrade.ALinha]:= VprDProNaoAdicionadoFornecedorOrc.NomProduto;
  if VprDProNaoAdicionadoFornecedorOrc.CodCor <> 0 then
    VpfGrade.Cells[3,VpfGrade.ALinha]:= IntToStr(VprDProNaoAdicionadoFornecedorOrc.CodCor)
  else
    VpfGrade.Cells[3,VpfGrade.ALinha]:= '';
  VpfGrade.Cells[4,VpfGrade.ALinha]:= VprDProNaoAdicionadoFornecedorOrc.NomCor;
  VpfGrade.Cells[5,VpfGrade.ALinha]:= VprDProNaoAdicionadoFornecedorOrc.DesUM;
  if VprDProNaoAdicionadoFornecedorOrc.QtdSolicitada <> 0 then
    VpfGrade.Cells[6,VpfGrade.ALinha]:= FormatFloat(Varia.MascaraQtd,VprDProNaoAdicionadoFornecedorOrc.QtdSolicitada)
  else
    VpfGrade.Cells[6,VpfGrade.ALinha]:= '';
  if VprDProNaoAdicionadoFornecedorOrc.QtdProduto <> 0 then
    VpfGrade.Cells[7,Grade.ALinha]:= FormatFloat(Varia.MascaraQtd,VprDProNaoAdicionadoFornecedorOrc.QtdProduto)
  else
    VpfGrade.Cells[7,VpfGrade.ALinha]:= '';
end;

procedure TFNovoOrcamentoCompra.AdicionarClick(Sender: TObject);
Var
  VpfGrade : TRBStringGridColor;
begin
  if VprDFornecedorOrcamento.ProdutosNaoAdicionados.Count > 0 then
  begin
    VpfGrade := TRBStringGridColor(LocalizaComponente(Paginas.ActivePage,15));
    VprDFornecedorOrcamento.ProdutosAdicionados.Add(VprDFornecedorOrcamento.ProdutosNaoAdicionados.Items[VpfGrade.ALinha-1]);
    VprDFornecedorOrcamento.ProdutosNaoAdicionados.Delete(VpfGrade.ALinha-1);
    VpfGrade.CarregaGrade;

    VpfGrade := TRBStringGridColor(LocalizaComponente(Paginas.ActivePage,14));
    VpfGrade.CarregaGrade;
  end
  else
    aviso('GRADE VAZIA!!!'#13'N�o existem produtos a serem exclu�dos na grade');
end;

initialization
{ *************** Registra a classe para evitar duplicidade ****************** }
 RegisterClasses([TFNovoOrcamentoCompra]);
end.
