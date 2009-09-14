unit AOrcamentoCompras;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, formularios,
  Componentes1, ExtCtrls, PainelGradiente, Db, DBTables, Grids, DBGrids,
  Tabela, DBKeyViolation, StdCtrls, Buttons, Mask, numericos, Localizacao,
  ComCtrls, DBClient;

type
  TFOrcamentoCompras = class(TFormularioPermissao)
    PainelGradiente1: TPainelGradiente;
    PanelColor1: TPanelColor;
    PanelColor2: TPanelColor;
    OrcamentoCompra: TSQL;
    OrcamentoCompraCODFILIAL: TFMTBCDField;
    OrcamentoCompraSEQORCAMENTO: TFMTBCDField;
    OrcamentoCompraDATEMISSAO: TSQLTimeStampField;
    OrcamentoCompraDATFIM: TSQLTimeStampField;
    OrcamentoCompraNOMCOMPRADOR: TWideStringField;
    OrcamentoCompraC_NOM_USU: TWideStringField;
    OrcamentoCompraNOMEST: TWideStringField;
    DataOrcamentoCompra: TDataSource;
    GridIndice1: TGridIndice;
    BCadastrar: TBitBtn;
    BAlterar: TBitBtn;
    BConsultar: TBitBtn;
    BExcluir: TBitBtn;
    BImprimir: TBitBtn;
    BFechar: TBitBtn;
    Label4: TLabel;
    Label13: TLabel;
    SpeedButton4: TSpeedButton;
    Label11: TLabel;
    Label19: TLabel;
    DataFinal: TCalendario;
    DataInicial: TCalendario;
    EComprador: TEditLocaliza;
    CPeriodo: TCheckBox;
    EOrcamentoCompra: Tnumerico;
    BFiltros: TBitBtn;
    ETipoPeriodo: TComboBoxColor;
    Label1: TLabel;
    Label6: TLabel;
    BFornecedor: TSpeedButton;
    LFornecedor: TLabel;
    EFornecedor: TEditLocaliza;
    Label8: TLabel;
    BEstagio: TSpeedButton;
    Label9: TLabel;
    EEstagio: TEditLocaliza;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BCadastrarClick(Sender: TObject);
    procedure BFecharClick(Sender: TObject);
    procedure BAlterarClick(Sender: TObject);
    procedure BConsultarClick(Sender: TObject);
    procedure DataInicialExit(Sender: TObject);
    procedure BFiltrosClick(Sender: TObject);
    procedure EOrcamentoCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridIndice1Ordem(Ordem: String);
    procedure BExcluirClick(Sender: TObject);
  private
    { Private declarations }
    VprOrdem : string;
    procedure InicializaTela;
    procedure AtualizaConsulta;
    procedure AdicionaFiltros(VpaSelect : TStrings);
  public
    { Public declarations }
  end;

var
  FOrcamentoCompras: TFOrcamentoCompras;

implementation

uses APrincipal, ANovoOrcamentoCompra, Fundata, FunSql, Constantes;

{$R *.DFM}


{ ****************** Na cria��o do Formul�rio ******************************** }
procedure TFOrcamentoCompras.FormCreate(Sender: TObject);
begin
  {  abre tabelas }
  { chamar a rotina de atualiza��o de menus }
  VprOrdem := 'order by ORC.CODFILIAL, ORC.SEQORCAMENTO';
  InicializaTela;
  AtualizaConsulta;
end;

{ ******************* Quando o formulario e fechado ************************** }
procedure TFOrcamentoCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  { fecha tabelas }
  { chamar a rotina de atualiza��o de menus }
  Action := CaFree;
end;

{(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((
                            A��es Diversas
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))}

{******************************************************************************}
procedure TFOrcamentoCompras.InicializaTela;
begin
  CPeriodo.Checked:= True;
  ETipoPeriodo.ItemIndex:= 0;
  EComprador.AInteiro:= Varia.CodComprador;
  EComprador.Atualiza;
  DataInicial.DateTime:= PrimeiroDiaMes(Date);
  DataFinal.DateTime:= UltimoDiaMes(Date);
  EFornecedor.Clear;
end;

{******************************************************************************}
procedure TFOrcamentoCompras.AtualizaConsulta;
begin
  OrcamentoCompra.Close;
  OrcamentoCompra.sql.clear;
  OrcamentoCompra.sql.add('select ORC.CODFILIAL, ORC.SEQORCAMENTO, ORC.DATEMISSAO, ORC.DATFIM, '+
                          ' COM.NOMCOMPRADOR, USU.C_NOM_USU, '+
                          ' EST.NOMEST '+
                          ' from ORCAMENTOCOMPRACORPO ORC, COMPRADOR COM, CADUSUARIOS USU, ESTAGIOPRODUCAO EST '+
                          ' Where ORC.CODUSUARIO = USU.I_COD_USU '+
                          ' AND ORC.CODCOMPRADOR = COM.CODCOMPRADOR '+
                          ' AND ORC.CODESTAGIO = EST.CODEST ');
  AdicionaFiltros(OrcamentoCompra.SQL);
  OrcamentoCompra.Sql.add(VprOrdem);
  GridIndice1.ALinhaSQLOrderBy := OrcamentoCompra.SQL.count - 1;
  OrcamentoCompra.open;
end;

{******************************************************************************}
procedure TFOrcamentoCompras.AdicionaFiltros(VpaSelect : TStrings);
begin
  if EOrcamentoCompra.AsInteger <> 0 then
    VpaSelect.Add('and ORC.SEQORCAMENTO = ' +EOrcamentoCompra.Text)
  else
  begin
    if CPeriodo.Checked then
      case ETipoPeriodo.ItemIndex of
        0: VpaSelect.Add(SQLTextoDataEntreAAAAMMDD('ORC.DATEMISSAO',DataInicial.DateTime,DataFinal.DateTime,True));
        1: VpaSelect.Add(SQLTextoDataEntreAAAAMMDD('ORC.DATPREVISAOFIM',DataInicial.DateTime,DataFinal.DateTime,True));
      end;
    if EFornecedor.AInteiro <> 0 then
      VpaSelect.Add(' AND ORC.CODCLIENTE = '+EFornecedor.Text);
    if EEstagio.Text <> '' then
      VpaSelect.Add(' AND ORC.CODESTAGIO = '+EEstagio.Text);
    if EComprador.Text <> '' then
      VpaSelect.Add(' AND ORC.CODCOMPRADOR = '+EComprador.Text);
  end;
end;

{******************************************************************************}
procedure TFOrcamentoCompras.BCadastrarClick(Sender: TObject);
begin
  FNovoOrcamentoCompra := TFNovoOrcamentoCompra.CriarSDI(self,'',FPrincipal.VerificaPermisao('FNovoOrcamentoCompra'));
  if FNovoOrcamentoCompra.NovoOrcamento then
    AtualizaConsulta;
  FNovoOrcamentoCompra.free;
end;

{******************************************************************************}
procedure TFOrcamentoCompras.BFecharClick(Sender: TObject);
begin
  close;
end;

{******************************************************************************}
procedure TFOrcamentoCompras.BAlterarClick(Sender: TObject);
begin
  if OrcamentoCompraCODFILIAL.AsInteger <> 0 then
  begin
    FNovoOrcamentoCompra := TFNovoOrcamentoCompra.CriarSDI(self,'',FPrincipal.VerificaPermisao('FNovoOrcamentoCompra'));
    if FNovoOrcamentoCompra.Alterar(OrcamentoCompraCODFILIAL.AsInteger,OrcamentoCompraSEQORCAMENTO.AsInteger) then
      AtualizaConsulta;
    FNovoOrcamentoCompra.free;
  end;
end;

procedure TFOrcamentoCompras.BConsultarClick(Sender: TObject);
begin
  if OrcamentoCompraCODFILIAL.AsInteger <> 0 then
  begin
    FNovoOrcamentoCompra := TFNovoOrcamentoCompra.CriarSDI(self,'',FPrincipal.VerificaPermisao('FNovoOrcamentoCompra'));
    FNovoOrcamentoCompra.Consultar(OrcamentoCompraCODFILIAL.AsInteger,OrcamentoCompraSEQORCAMENTO.AsInteger);
    FNovoOrcamentoCompra.free;
  end;
end;

procedure TFOrcamentoCompras.BExcluirClick(Sender: TObject);
begin

end;

{******************************************************************************}
procedure TFOrcamentoCompras.DataInicialExit(Sender: TObject);
begin
  AtualizaConsulta;
end;

{******************************************************************************}
procedure TFOrcamentoCompras.BFiltrosClick(Sender: TObject);
begin
  if BFiltros.Caption = '>>' then
  begin
    if screen.Height = 768 then
      PanelColor1.Height := 260
    else
      PanelColor1.Height := 211;
    BFiltros.Caption := '<<';
  end
  else
  begin
    if screen.Height = 768 then
      PanelColor1.Height := 67
    else
      PanelColor1.Height := 52;
    BFiltros.Caption := '>>';
  end;
end;

{******************************************************************************}
procedure TFOrcamentoCompras.EOrcamentoCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    AtualizaConsulta;
end;

{******************************************************************************}
procedure TFOrcamentoCompras.GridIndice1Ordem(Ordem: String);
begin
  VprOrdem := Ordem;
end;

Initialization
{ *************** Registra a classe para evitar duplicidade ****************** }
 RegisterClasses([TFOrcamentoCompras]);
end.
