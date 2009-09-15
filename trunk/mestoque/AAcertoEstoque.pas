unit AAcertoEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, formularios,
  Componentes1, ExtCtrls, PainelGradiente, ComCtrls, StdCtrls, Buttons,
  ConvUnidade, CONSTANTES, Mask, DBCtrls, Tabela, Db, DBTables,
  BotaoCadastro, Localizacao, DBKeyViolation, UnProdutos, numericos, FMTBcd,
  SqlExpr, UnZebra, UnDadosProduto;

Const
  CT_DATAMENORULTIMOFECHAMENTO='DATA N�O PODE SER MENOR QUE A DO ULTIMO FECHAMENTO!!!A data de digita��o do produto n�o ser menor que a data do ultimo fechamento...';  
type
  TFAcertoEstoque = class(TFormularioPermissao)
    PainelGradiente1: TPainelGradiente;
    Localiza: TConsultaPadrao;
    CadProduto: TSQLQuery;
    PanelColor3: TPanelColor;
    BotaoCadastrar2: TBitBtn;
    BotaoGravar2: TBitBtn;
    BotaoCancelar2: TBitBtn;
    BotaoFechar2: TBitBtn;
    CheckBox1: TCheckBox;
    ValidaGravacao1: TValidaGravacao;
    PanelColor5: TPanelColor;
    PanelColor1: TPanelColor;
    Label12: TLabel;
    SpeedButton4: TSpeedButton;
    LNomProduto: TLabel;
    Label14: TLabel;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    LFilial: TLabel;
    EProduto: TEditLocaliza;
    ECodOperacao: TEditLocaliza;
    ETipOperacao: TEditColor;
    EFilial: TEditColor;
    EData: TCalendario;
    PCor: TPanelColor;
    SpeedButton3: TSpeedButton;
    LNomCor: TLabel;
    Label7: TLabel;
    ECor: TEditLocaliza;
    PanelColor4: TPanelColor;
    Label20: TLabel;
    Label3: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    Label19: TLabel;
    Label8: TLabel;
    EUnidade: TComboBoxColor;
    EQtdProduto: Tnumerico;
    EValUnitario: Tnumerico;
    EValTotal: Tnumerico;
    ENumSerie: TEditColor;
    LQtdEstoque: TLabel;
    EQtdEstoque: Tnumerico;
    POrdemProducao: TPanelColor;
    SpeedButton6: TSpeedButton;
    Label11: TLabel;
    Label13: TLabel;
    EOrdemProducao: TEditLocaliza;
    PTecnico: TPanelColor;
    Label23: TLabel;
    SpeedButton9: TSpeedButton;
    Label24: TLabel;
    ETecnico: TRBEditLocaliza;
    CDefeito: TCheckBox;
    EDefeito: TEditColor;
    Label9: TLabel;
    PTamanho: TPanelColor;
    SpeedButton5: TSpeedButton;
    Label10: TLabel;
    Label17: TLabel;
    ETamanho: TRBEditLocaliza;
    EQtdLote: Tnumerico;
    Label18: TLabel;
    BImprimir: TBitBtn;
    PCodBarrasCor: TPanelColor;
    Label21: TLabel;
    ECodBarras: TEditColor;
    EEmbalagem: TRBEditLocaliza;
    Label6: TLabel;
    SpeedButton7: TSpeedButton;
    Label22: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEditLocaliza2Select(Sender: TObject);
    procedure DBEditLocaliza2Retorno(Retorno1, Retorno2: String);
    procedure DBEditLocaliza1Cadastrar(Sender: TObject);
    procedure DBEditLocaliza1Retorno(Retorno1, Retorno2: String);
    procedure DBComboBoxColor1Exit(Sender: TObject);
    procedure DBEditNumerico2Exit(Sender: TObject);
    procedure BotaoFechar2Click(Sender: TObject);
    procedure BotaoCadastrar2Click(Sender: TObject);
    procedure BotaoGravar2Click(Sender: TObject);
    procedure BotaoCancelar2Click(Sender: TObject);
    procedure ECodOperacaoChange(Sender: TObject);
    procedure EValUnitarioChange(Sender: TObject);
    procedure EValTotalExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDataExit(Sender: TObject);
    procedure ECorFimConsulta(Sender: TObject);
    procedure ECorCadastrar(Sender: TObject);
    procedure EProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EOrdemProducaoSelect(Sender: TObject);
    procedure EOrdemProducaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EUsuarioDestinoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PanelColor4DblClick(Sender: TObject);
    procedure CDefeitoClick(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
  private
    VprUnidadePadrao : string;
    VprSeqProduto :Integer;
    VprOperacao : TRBDOperacaoCadastro;
    FunZebra : TRBFuncoesZebra;
    VprEtiquetas : TList;
    procedure InicializaTela;
    procedure AlteraEstadoBotao(VpaEstado : Boolean);
    function AdicionaEstoque : string;
    function DadosValidos : Boolean;
    procedure PosProduto(VpaSeqProduto : Integer);
    procedure CarEtiquetamodelo33X57;
  public

    { Public declarations }
  end;

var
  FAcertoEstoque: TFAcertoEstoque;

implementation

uses APrincipal, AOperacoesEstoques, constMsg, funNumeros, funsql, ACores, funObjeto;

{$R *.DFM}


{ ****************** Na cria��o do Formul�rio ******************************** }
procedure TFAcertoEstoque.FormCreate(Sender: TObject);
Var
  VpfTamanhoTela : Integer;
begin

   EFilial.Text := IntToStr(Varia.CodigoEmpFil);
   LFilial.Caption := Varia.NomeFilial;
   EData.DateTime := date;
   VprEtiquetas := TList.Create;
// EUnidade.Color := FPrincipal.CorFoco.ACorObrigatorio;
   EProduto.AInfo.CampoCodigo := Varia.CodigoProduto;  // caso codigo pro ou codigo de barras
   VprSeqProduto := 0;
   EQtdProduto.ADecimal := varia.DecimaisQtd;
   EQtdProduto.AMascara :=','+varia.MascaraQtd+';-,'+varia.MascaraQtd;
   PCor.Visible := config.EstoquePorCor;
   PTamanho.Visible := config.EstoquePorTamanho;
   POrdemProducao.Visible := (ConfigModulos.OrdemProducao and Config.MostrarOrdemProducaoNoAcertoEstoque);
   PCodBarrasCor.Visible := config.MostrarCodBarrasCorNoAcertoEstoque;
   VpfTamanhoTela := 35+ PanelColor1.Height +PanelColor4.Height + PTecnico.Height;
   if config.EstoquePorCor then
   begin
     VpfTamanhoTela := VpfTamanhoTela +PCor.Height;
   end;
   if config.MostrarCodBarrasCorNoAcertoEstoque then
     VpfTamanhoTela := VpfTamanhoTela +PCodBarrasCor.Height;
   if Config.EstoquePorTamanho then
     VpfTamanhoTela := VpfTamanhoTela +PTamanho.Height;

   if ConfigModulos.OrdemProducao and config.MostrarOrdemProducaoNoAcertoEstoque then
   begin
     ETecnico.PasswordChar := '*';
     VpfTamanhoTela := VpfTamanhoTela +POrdemProducao.Height;
   end;

   VpfTamanhoTela := VpfTamanhoTela + PainelGradiente1.Height+PanelColor3.Height;
   Height := VpfTamanhoTela;
   BotaoCadastrar2.Click;
end;

{ ******************* Quando o formulario e fechado ************************** }
procedure TFAcertoEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeTObjectsList(VprEtiquetas);
  VprEtiquetas.Free;
  Action := CaFree;
end;

{(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((
                              A��es dos localizas
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))}

{*******************Inicializa as select do localiza***************************}
procedure TFAcertoEstoque.DBEditLocaliza2Select(Sender: TObject);
begin
  EProduto.ASelectValida.add(  ' Select Pro.C_Cod_Pro, pro.C_Nom_Pro, pro.C_Cod_Uni, ' +
                                    ' pro.I_SEQ_PRO, mov.C_COD_BAR, ' +
                                    ' (tab.n_vlr_ven * moe.n_vlr_dia) n_vlr_ven ' +
                                    ' From cadprodutos pro, ' +
                                    ' MovQdadeProduto mov, MovTabelaPreco Tab, CadMoedas Moe ' +
                                    ' Where pro.I_Cod_Emp = ' + IntToStr(varia.CodigoEmpresa) +
                                    ' and ' + varia.CodigoProduto + ' = ''@''' +
                                    ' and pro.C_KIT_PRO = ''P'' ' +
                                    ' and pro.I_seq_pro = Mov.I_seq_pro ' +
                                    ' and mov.I_Emp_Fil = ' + IntTostr(varia.CodigoEmpFil) +
                                    ' and mov.I_COD_COR = 0 ' +
                                    ' and TAB.I_COD_CLI = 0 ' +
                                    ' and tab.i_cod_tab = ' + IntTostr(varia.TabelaPreco) +
                                    ' and tab.i_cod_emp = ' + IntTostr(varia.CodigoEmpresa) +
                                    ' and pro.i_seq_pro = tab.i_seq_pro ' +
                                    ' and tab.i_cod_moe = moe.i_cod_moe' );

  EProduto.ASelectLocaliza.add(' Select pro.C_Cod_Pro, pro.C_Nom_Pro, pro.C_Cod_Uni, ' +
                                    ' (tab.n_vlr_ven * moe.n_vlr_dia) n_vlr_ven, ' +
                                    ' pro.I_SEQ_PRO, mov.C_COD_BAR ' +
                                    ' from cadprodutos  pro, ' +
                                    ' MovQdadeProduto mov, MovTabelaPreco Tab, CadMoedas  Moe ' +
                                    ' Where pro.I_Cod_Emp = ' + IntToStr(varia.CodigoEmpresa) +
                                    ' and pro.c_nom_pro like ''@%''' +
                                    ' and pro.C_KIT_PRO = ''P'' ' +
                                    ' and pro.I_seq_pro = Mov.I_seq_pro ' +
                                    ' and mov.I_Emp_Fil = ' + IntTostr(varia.CodigoEmpFil) +
                                    ' and mov.I_COD_COR = 0' +
                                    ' and tab.i_cod_tab = ' + IntTostr(varia.TabelaPreco) +
                                    ' and TAB.I_COD_CLI = 0 ' +
                                    ' and tab.i_cod_emp = ' + IntTostr(varia.CodigoEmpresa) +
                                    ' and pro.i_seq_pro = tab.i_seq_pro ' +
                                    ' and tab.i_cod_moe = moe.i_cod_moe' +
                                    ' order by c_nom_pro asc');
end;

{**********************Retorna o codigo da unidade*****************************}
procedure TFAcertoEstoque.DBEditLocaliza2Retorno(Retorno1,
  Retorno2: String);
begin
  if Retorno1 <> '' then
  begin
    VprSeqProduto := StrToInt(Retorno1);
    PosProduto(VprSeqProduto);
  end
  else
    VprSeqProduto := 0;
end;

{*****************Cadastra uma nova opera��o de estoque************************}
procedure TFAcertoEstoque.DBEditLocaliza1Cadastrar(Sender: TObject);
begin
   FOperacoesEstoques := TFOperacoesEstoques.CriarSDI(Application,'',FPrincipal.VerificaPermisao('FOperacoesEstoques'));
   FOperacoesEstoques.CadOperacoesEstoques.Insert;
   FOperacoesEstoques.ShowModal;
   Localiza.AtualizaConsulta;
end;

{ ************** retorno da operaco estoque ********************************** }
procedure TFAcertoEstoque.DBEditLocaliza1Retorno(Retorno1,
  Retorno2: String);
begin
  ETipOperacao.Text := Retorno1;
end;

{(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((
                              A��es Diversas
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))}

{******************Chama a rotina para validar a gravacao**********************}
procedure TFAcertoEstoque.DBComboBoxColor1Exit(Sender: TObject);
begin
 if VprUnidadePadrao <> '' then
   if VprUnidadePadrao <> EUnidade.text then
    if not FunProdutos.ValidaUnidade.ValidaUnidade(EUnidade.text, VprUnidadePadrao) then
      EUnidade.text := VprUnidadePadrao;

  if VprOperacao = ocInsercao then
    ValidaGravacao1.execute ;
end;

{********************** Verifica a qdade de estoque conforme config geral *****}
procedure TFAcertoEstoque.DBEditNumerico2Exit(Sender: TObject);
begin
  if ( EProduto.text <> '' ) and (ETipOperacao.Text = 'S') then
    if not FunProdutos.VerificaEstoque( EUnidade.Text,VprUnidadePadrao,
                                    EQtdProduto.avalor,
                                    CadProduto.fieldbyName('I_SEQ_PRO').AsInteger,
                                    ECor.AInteiro,
                                    ETamanho.AInteiro) then
    EQtdProduto.Setfocus;
  if VprOperacao = ocInsercao then
    ValidaGravacao1.execute ;
end;

{************* fecha o formulario ******************************************* }
procedure TFAcertoEstoque.BotaoFechar2Click(Sender: TObject);
begin
  self.close;
end;

{******************************************************************************}
procedure TFAcertoEstoque.InicializaTela;
begin
  VprUnidadePadrao := '';
  VprSeqProduto := 0;
  LimpaComponentes(PanelColor5,10);
  AlteraEstadoBotao(true);
  ValidaGravacao1.execute;
end;

{******************************************************************************}
procedure TFAcertoEstoque.AlteraEstadoBotao(VpaEstado : Boolean);
begin
  BotaoCadastrar2.Enabled := not VpaEstado;
  BotaoGravar2.Enabled := VpaEstado;
  BotaoCancelar2.Enabled := VpaEstado;
  BotaoFechar2.Enabled := not VpaEstado;
  AlterarEnabledDet(PanelColor5,0,VpaEstado);
  EQtdEstoque.Enabled := false;
  LQtdEstoque.Enabled := false;
end;

{************** adiciona o movimento de estoque ****************************** }
function TFAcertoEstoque.AdicionaEstoque : string;
var
  VpfSeqEstoqueBarra : Integer;
begin
  result := '';
  FunProdutos.BaixaProdutoEstoque(varia.CodigoEmpFil,
                                 CadProduto.fieldByName('I_SEQ_PRO').AsInteger,
                                 ECodOperacao.AInteiro,
                                 0,0,0,
                                 varia.MoedaBase, ECor.Ainteiro,ETamanho.AInteiro,
                                 EData.DateTime,
                                 EQtdProduto.AValor, EValTotal.AValor,
                                 EUnidade.text, VprUnidadePadrao,ENumSerie.Text, true,VpfSeqEstoqueBarra,true,ETecnico.AInteiro,EOrdemProducao.AInteiro);
  if CDefeito.Checked then
    result := FunProdutos.BaixaEstoqueDefeito(CadProduto.FieldByName('I_SEQ_PRO').AsInteger,ETecnico.AInteiro,EQtdProduto.AValor,EUnidade.Text,
                                              ETipOperacao.Text,EDefeito.Text);
end;

{******************************************************************************}
procedure TFAcertoEstoque.BImprimirClick(Sender: TObject);
begin
  if varia.ModeloEtiquetaNotaEntrada in [7] then
  begin
    if varia.ModeloEtiquetaNotaEntrada in [7] then
      FunZebra := TRBFuncoesZebra.cria(Varia.PortaComunicacaoImpTermica,176,lzZPL);
    case varia.ModeloEtiquetaNotaEntrada of
      7 : begin
            CarEtiquetamodelo33X57;
            FunZebra.ImprimeEtiquetaProduto33X57(VprEtiquetas);
          end;
    end;
    FunZebra.free;
  end;
end;

procedure TFAcertoEstoque.BotaoCadastrar2Click(Sender: TObject);
begin
  VprOperacao := ocInsercao;
  InicializaTela;
  if ECodOperacao.AInteiro <> 0 Then
    ActiveControl := EProduto
  else
    activeControl := ECodOperacao;
end;

{******************** grava a baixa de estoque ********************************}
procedure TFAcertoEstoque.BotaoGravar2Click(Sender: TObject);
var
  VpfResultado : string;
begin
  if DadosValidos then
  begin
    if ETipOperacao.Text = 'S' then
      FunProdutos.VerificaPontoPedido( varia.CodigoEmpfil,
                                     CadProduto.fieldByname('I_SEQ_PRO').AsInteger,
                                     ECor.AInteiro,ETamanho.AInteiro,
                                     FunProdutos.CalculaQdadePadrao(EUnidade.text,
                                     VprUnidadePadrao,EQtdProduto.avalor,
                                     CadProduto.fieldByname('I_SEQ_PRO').AsString));
    VpfResultado := AdicionaEstoque;

    AlteraEstadoBotao(false);
    if CheckBox1.Checked then
      BotaoCadastrar2.Click
    else
      VprOperacao := ocConsulta;
    if VpfResultado <> '' then
      aviso(VpfResultado);
  end;
end;

{******************************************************************************}
procedure TFAcertoEstoque.BotaoCancelar2Click(Sender: TObject);
begin
  AlteraEstadoBotao(false);
  LimpaComponentes(PanelColor1,10);
  VprOperacao := ocConsulta;
end;

{***************** verifica se os dados sao validos ***************************}
function TFAcertoEstoque.DadosValidos : Boolean;
begin
  result := true;
  if EData.DateTime <= Varia.DataUltimoFechamento then
  begin
    result := false;
    aviso(CT_DATAMENORULTIMOFECHAMENTO);
  end;
  if result then
  begin
    if CDefeito.Checked then
    begin
      if ETecnico.AInteiro = 0 then
      begin
        Result := false;
        aviso('T�CNICO N�O PREENCHIDO!!!'#13'� necess�rio preencher o t�cnico.');
      end;
    end;
  end;
end;

{******************************************************************************}
procedure TFAcertoEstoque.PosProduto(VpaSeqProduto : Integer);
begin
  if VpaSeqProduto <> 0 then
  begin
    FunProdutos.LocalizaProdutoSequencialQdade(CadProduto, VpaSeqProduto,ECor.AInteiro,ETamanho.AInteiro);
    EProduto.Text := CadProduto.FieldByName('C_COD_PRO').AsString;
    LNomProduto.Caption := CadProduto.FieldByName('C_NOM_PRO').AsString;
    if CadProduto.Eof then
    begin
      FunProdutos.LocalizaProdutoSequencialQdade(CadProduto, VpaSeqProduto,ECor.AInteiro,0);
      EProduto.Text := CadProduto.FieldByName('C_COD_PRO').AsString;
      LNomProduto.Caption := CadProduto.FieldByName('C_NOM_PRO').AsString;
      if CadProduto.Eof then
      begin
        FunProdutos.LocalizaProdutoSequencialQdade(CadProduto, VpaSeqProduto,0,0);
        EProduto.Text := CadProduto.FieldByName('C_COD_PRO').AsString;
        LNomProduto.Caption := CadProduto.FieldByName('C_NOM_PRO').AsString;
      end;
    end;
    label3.Caption := '';
    Label3.Caption := CadProduto.fieldByName('C_COD_UNI').AsString;
    EUnidade.Items := FunProdutos.validaUnidade.UnidadesParentes(CadProduto.fieldByName('C_COD_UNI').AsString);
    EUnidade.ItemIndex := EUnidade.Items.IndexOf(CadProduto.fieldByName('C_COD_UNI').AsString);
    VprUnidadePadrao := CadProduto.fieldByName('C_COD_UNI').AsString;
    EValUnitario.AValor := CadProduto.FieldByName('N_VLR_CUS').AsFloat;
    EQtdEstoque.AValor := CadProduto.FieldByName('N_QTD_PRO').AsFloat;
    ECodBarras.Text := CadProduto.FieldByName('C_COD_BAR').AsString;
    ECodBarras.ReadOnly := CadProduto.FieldByName('C_COD_BAR').AsString <> '';
    if config.EstoquePorNumeroSerie then
      if ETipOperacao.Text = 'E' then
        ENumSerie.Text := FunProdutos.CalculaNumeroSerie(CadProduto.FieldByName('I_NUM_LOT').AsInteger+1);
  end;
end;

{******************************************************************************}
procedure TFAcertoEstoque.CarEtiquetamodelo33X57;
Var
  VpfQtdFaltante : Double;
  VpfDEtiqueta : TRBDEtiquetaProduto;
  VpfDProduto : TRBDProduto;
  VpfNomComposicao : String;
begin
  FreeTObjectsList(VprEtiquetas);
  VpfQtdFaltante := EQtdProduto.AValor;
  if EQtdLote.AValor = 0 then
    EQtdLote.AValor := EQtdProduto.AValor;
  VpfDProduto := TRBDProduto.Cria;
  FunProdutos.CarDProduto(VpfDProduto,Varia.CodigoEmpresa,Varia.CodigoEmpFil,VprSeqProduto);
  VpfNomComposicao := FunProdutos.RNomeComposicao(VpfDProduto.CodComposicao);
  FunProdutos.CarFigurasGRF(VpfDProduto.CodComposicao,VpfDProduto.FigurasComposicao);
  while VpfQtdFaltante > 0  do
  begin
    VpfDEtiqueta := TRBDEtiquetaProduto.cria;
    VprEtiquetas.Add(VpfDEtiqueta);
    VpfDEtiqueta.Produto := VpfDProduto;
    VpfDEtiqueta.CodCor := ECor.AInteiro;
    VpfDEtiqueta.QtdOriginalEtiquetas := 1;
    VpfDEtiqueta.QtdEtiquetas := 1;
    VpfDEtiqueta.QtdProduto := RetornaInteiro(VpfQtdFaltante);
    VpfDEtiqueta.NomComposicao := VpfNomComposicao;
    VpfDEtiqueta.NomCor := LNomCor.Caption;
    VpfDEtiqueta.NumSerie := ENumSerie.Text;
    VpfQtdFaltante := VpfQtdFaltante - EQtdLote.AValor;
  end;
end;

{******************************************************************************}
procedure TFAcertoEstoque.ECodOperacaoChange(Sender: TObject);
begin
  if VprOperacao = ocInsercao then
    ValidaGravacao1.execute ;
end;

{******************************************************************************}
procedure TFAcertoEstoque.EValUnitarioChange(Sender: TObject);
begin
  if EQtdProduto.AValor <> 0 then
    EValTotal.AValor := EValUnitario.AValor * EQtdProduto.AValor;
end;

{******************************************************************************}
procedure TFAcertoEstoque.EValTotalExit(Sender: TObject);
begin
  if EValUnitario.AValor = 0 then
    EValUnitario.AValor := EValTotal.AValor / EQtdProduto.AValor;
end;

{******************************************************************************}
procedure TFAcertoEstoque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    40: Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

{************** valida a data com a data do fechamento do mes *****************}
procedure TFAcertoEstoque.EDataExit(Sender: TObject);
begin
  if EData.DateTime <= Varia.DataUltimoFechamento then
  begin
    aviso(CT_DATAMENORULTIMOFECHAMENTO);
    EData.SetFocus;
  end;
end;

{******************************************************************************}
procedure TFAcertoEstoque.ECorFimConsulta(Sender: TObject);
begin
  PosProduto(VprSeqProduto);
end;

{******************************************************************************}
procedure TFAcertoEstoque.ECorCadastrar(Sender: TObject);
begin
  FCores := TFCores.CriarSDI(application,'', FPrincipal.VerificaPermisao('FCores'));
  FCores.BotaoCadastrar1.Click;
  FCores.showmodal;
  FCores.free;
end;

{******************************************************************************}
procedure TFAcertoEstoque.EProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    if Config.AcertodeEstoquePeloSequencial then
    begin
      PosProduto(EProduto.AInteiro);
      if POrdemProducao.Visible then
        ActiveControl := EOrdemProducao;
    end
    else
      ActiveControl := EUnidade;
  end;
end;

{******************************************************************************}
procedure TFAcertoEstoque.EOrdemProducaoSelect(Sender: TObject);
begin
  EOrdemProducao.ASelectLocaliza.Text := 'Select ORD.SEQORD, ORD.DATEMI, CLI.C_NOM_CLI from ORDEMPRODUCAOCORPO ORD, CADCLIENTES CLI '+
                                         ' Where ORD.EMPFIL = '+ IntToStr(EFilial.AInteiro)+
                                         ' and ORD.CODCLI = CLI.I_COD_CLI '+
                                         ' AND CLI.C_NOM_CLI like ''@%''';
  EOrdemProducao.ASelectValida.Text := 'Select ORD.SEQORD, ORD.DATEMI, CLI.C_NOM_CLI From ORDEMPRODUCAOCORPO ORD, CADCLIENTES CLI '+
                                         ' Where ORD.EMPFIL = '+ IntToStr(EFilial.AInteiro)+
                                         ' and ORD.CODCLI = CLI.I_COD_CLI '+
                                         ' AND ORD.SEQORD = @';
end;

{******************************************************************************}
procedure TFAcertoEstoque.EOrdemProducaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    ETecnico.SetFocus;
end;

{******************************************************************************}
procedure TFAcertoEstoque.EUsuarioDestinoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    EQtdProduto.SetFocus;
end;

{******************************************************************************}
procedure TFAcertoEstoque.PanelColor4DblClick(Sender: TObject);
begin
  aviso(IntToStr(height));
end;

{******************************************************************************}
procedure TFAcertoEstoque.CDefeitoClick(Sender: TObject);
begin
  EDefeito.ACampoObrigatorio := CDefeito.Checked;
end;

Initialization
 RegisterClasses([TFAcertoEstoque]);
end.
