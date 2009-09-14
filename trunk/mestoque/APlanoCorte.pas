unit APlanoCorte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, formularios,
  Grids, DBGrids, Tabela, DBKeyViolation, Componentes1, ExtCtrls,
  PainelGradiente, ComCtrls, StdCtrls, Db, DBTables, Mask, numericos,
  Buttons, UnDadosProduto, unOrdemProducao, DBClient;

type
  TFPlanoCorte = class(TFormularioPermissao)
    PainelGradiente1: TPainelGradiente;
    PanelColor1: TPanelColor;
    GridIndice1: TGridIndice;
    PanelColor2: TPanelColor;
    Label3: TLabel;
    Label4: TLabel;
    EDatInicio: TCalendario;
    EDatFim: TCalendario;
    PlanoCorte: TSQL;
    DataPlanoCorte: TDataSource;
    PlanoCorteCODFILIAL: TFMTBCDField;
    PlanoCorteSEQPLANOCORTE: TFMTBCDField;
    PlanoCorteDATEMISSAO: TSQLTimeStampField;
    PlanoCorteNUMCNC: TFMTBCDField;
    PlanoCorteC_NOM_PRO: TWideStringField;
    PlanoCorteC_NOM_USU: TWideStringField;
    Label2: TLabel;
    ENumCNC: Tnumerico;
    BCadastrar: TBitBtn;
    BAlterar: TBitBtn;
    BExcluir: TBitBtn;
    BFechar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EDatInicioCloseUp(Sender: TObject);
    procedure BFecharClick(Sender: TObject);
    procedure BCadastrarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaConsulta;
    procedure AdicionaFiltros(VpaSelect : TStrings);
  public
    { Public declarations }
  end;

var
  FPlanoCorte: TFPlanoCorte;

implementation

uses APrincipal, FunSql, FunData, ANovoPlanoCorte, ConstMsg;

{$R *.DFM}


{ ****************** Na cria��o do Formul�rio ******************************** }
procedure TFPlanoCorte.FormCreate(Sender: TObject);
begin
  {  abre tabelas }
  { chamar a rotina de atualiza��o de menus }
  EDatInicio.DateTime := PrimeiroDiaMes(date);
  EDatFim.DateTime := UltimoDiaMes(date);
  AtualizaConsulta;
end;

{ ******************* Quando o formulario e fechado ************************** }
procedure TFPlanoCorte.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  { fecha tabelas }
  { chamar a rotina de atualiza��o de menus }
  PlanoCorte.Close;
  Action := CaFree;
end;

{(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((
                            A��es Diversas
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))}

{******************************************************************************}
procedure TFPlanoCorte.AtualizaConsulta;
begin
  PlanoCorte.sql.clear;
  PlanoCorte.sql.add('select PLC.CODFILIAL, PLC.SEQPLANOCORTE, PLC.DATEMISSAO, PLC.NUMCNC, '+
                     ' PRO.C_NOM_PRO, ' +
                     ' USU.C_NOM_USU '+
                     ' from PLANOCORTECORPO PLC, CADUSUARIOS USU, CADPRODUTOS PRO '+
                     ' WHERE PLC.CODUSUARIO = USU.I_COD_USU '+
                     ' AND PLC.SEQMATERIAPRIMA = PRO.I_SEQ_PRO ');
  AdicionaFiltros(PlanoCorte.sql);
  PlanoCorte.open;
end;

{******************************************************************************}
procedure TFPlanoCorte.AdicionaFiltros(VpaSelect : TStrings);
begin
  VpaSelect.Add(SQLTextoDataEntreAAAAMMDD('DATEMISSAO',EDatInicio.DateTime,IncDia(EDatFim.DateTime,1),true));
  if ENumCNC.AsInteger <> 0 then
    VpaSelect.Add('and NUMCNC = '+ENumCNC.Text);
    
end;

{******************************************************************************}
procedure TFPlanoCorte.EDatInicioCloseUp(Sender: TObject);
begin
  AtualizaConsulta;
end;

{******************************************************************************}
procedure TFPlanoCorte.BFecharClick(Sender: TObject);
begin
  close;
end;

{******************************************************************************}
procedure TFPlanoCorte.BCadastrarClick(Sender: TObject);
begin
  FNovoPlanoCorte := TFNovoPlanoCorte.CriarSDI(self,'',FPrincipal.VerificaPermisao('FNovoPlanoCorte'));
  if FNovoPlanoCorte.NovoPlanoCorte then
    AtualizaConsulta;
  FNovoPlanoCorte.free;
end;

{******************************************************************************}
procedure TFPlanoCorte.BExcluirClick(Sender: TObject);
begin
  if confirmacao(CT_DeletaRegistro) then
  begin
    if PlanoCorteSEQPLANOCORTE.AsInteger <> 0 then
    begin
      FunOrdemProducao.ExcluiPlanoCorte(PlanoCorteCODFILIAL.AsInteger,PlanoCorteSEQPLANOCORTE.AsInteger);
      AtualizaConsulta;
    end;
  end;
end;

Initialization
{ *************** Registra a classe para evitar duplicidade ****************** }
 RegisterClasses([TFPlanoCorte]);
end.
