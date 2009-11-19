unit AGeraFracaoOPProdutos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, formularios, Grids, CGrades, Componentes1, ExtCtrls, PainelGradiente,
  UnDadosProduto, StdCtrls, Buttons;

type
  TFGeraFracaoOPProdutos = class(TFormularioPermissao)
    PainelGradiente1: TPainelGradiente;
    PanelColor1: TPanelColor;
    PanelColor2: TPanelColor;
    Grade: TRBStringGridColor;
    BGravar: TBitBtn;
    BCancelar: TBitBtn;
    PainelTempo1: TPainelTempo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BCancelarClick(Sender: TObject);
    procedure GradeCarregaItemGrade(Sender: TObject; VpaLinha: Integer);
  private
    { Private declarations }
    VprDProdutoOP :TRBDOrdemProducaoProduto;
    VprDOrdemProducao : TRBDOrdemProducao;
    procedure CarTitulosGrade;
  public
    { Public declarations }
    function GeraOP(VprDOrdemProducao : TRBDOrdemProducao) : Boolean;
  end;

var
  FGeraFracaoOPProdutos: TFGeraFracaoOPProdutos;

implementation

uses APrincipal, Constantes, constmsg;

{$R *.DFM}


{ ****************** Na cria��o do Formul�rio ******************************** }
procedure TFGeraFracaoOPProdutos.FormCreate(Sender: TObject);
begin
  {  abre tabelas }
  { chamar a rotina de atualiza��o de menus }
  CarTitulosGrade;
end;

{ **************************************************************************** }
function TFGeraFracaoOPProdutos.GeraOP(VprDOrdemProducao: TRBDOrdemProducao): Boolean;
begin
  PainelTempo1.execute('Agrupando produtos. Aguarde.');
  Grade.ADados := VprDOrdemProducao.ProdutosSubmontagemAgrupados;
  Grade.CarregaGrade;
  PainelTempo1.fecha;
  showmodal;
end;

{ **************************************************************************** }
procedure TFGeraFracaoOPProdutos.GradeCarregaItemGrade(Sender: TObject; VpaLinha: Integer);
begin
  VprDProdutoOP := TRBDOrdemProducaoProduto(VprDOrdemProducao.ProdutosSubmontagemAgrupados.Items[VpaLinha-1]);
  Grade.Cells[1,VpaLinha] := VprDProdutoOP.DProduto.CodProduto;
  Grade.Cells[2,VpaLinha] := VprDProdutoOP.DProduto.NomProduto;
  if (VprDProdutoOP.CodCor <> 0 ) then
    Grade.Cells[3,VpaLinha] := IntToStr(VprDProdutoOP.CodCor)
  else
    Grade.Cells[3,VpaLinha] := '';
  Grade.Cells[4,VpaLinha] := VprDProdutoOP.NomCor;
  if (VprDProdutoOP.CodTamanho <> 0 ) then
    Grade.Cells[5,VpaLinha] := IntToStr(VprDProdutoOP.CodTamanho)
  else
    Grade.Cells[5,VpaLinha] := '';
  Grade.Cells[6,VpaLinha] := VprDProdutoOP.NomTamanho;
  Grade.Cells[7,VpaLinha] := VprDProdutoOP.DesUM;
  Grade.Cells[8,VpaLinha] := FormatFloat('#,###,###,##0.00',VprDProdutoOP.QtdaProduzir);
  Grade.Cells[9,VpaLinha] := FormatFloat('#,###,###,##0.00',VprDProdutoOP.QtdOp);
  Grade.Cells[10,VpaLinha] := FormatFloat('#,###,###,##0.00',VprDProdutoOP.QtdEstoque);
  Grade.Cells[11,VpaLinha] := FormatFloat('#,###,###,##0.00',VprDProdutoOP.QtdReservado);
  Grade.Cells[12,VpaLinha] := FormatFloat('#,###,###,##0.00',VprDProdutoOP.QtdMinimo);
  Grade.Cells[13,VpaLinha] := FormatFloat('#,###,###,##0.00',VprDProdutoOP.QtdemProcesso);
  Grade.Cells[14,VpaLinha] := FormatFloat('#,###,###,##0.00',VprDProdutoOP.QtdemProcessoSerie);
end;

{ **************************************************************************** }
procedure TFGeraFracaoOPProdutos.BCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFGeraFracaoOPProdutos.CarTitulosGrade;
begin
  Grade.Cells[1,0] := 'C�digo';
  Grade.Cells[2,0] := 'Produto';
  Grade.Cells[3,0] := 'C�digo';
  Grade.Cells[4,0] := 'Cor';
  Grade.Cells[5,0] := 'C�digo';
  Grade.Cells[6,0] := 'Tamanho';
  Grade.Cells[7,0] := 'UM';
  Grade.Cells[8,0] := 'Qtd Produzir';
  Grade.Cells[9,0] := 'Qtd OP';
  Grade.Cells[10,0] := 'Qtd Estoque';
  Grade.Cells[11,0] := 'Qtd Reservado';
  Grade.Cells[12,0] := 'Qtd M�nimo';
  Grade.Cells[13,0] := 'Qtd em Processo';
  Grade.Cells[14,0] := 'Qtd S�rie';
  if not Config.EstoquePorCor then
  begin
    Grade.ColWidths[3] := -1;
    Grade.ColWidths[4] := -1;
  end;
  if not Config.EstoquePorTamanho then
  begin
    Grade.ColWidths[5] := -1;
    Grade.ColWidths[6] := -1;
  end;
end;

{ ******************* Quando o formulario e fechado ************************** }
procedure TFGeraFracaoOPProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  { fecha tabelas }
  { chamar a rotina de atualiza��o de menus }
  Action := CaFree;
end;

{(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((
                            A��es Diversas
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))}


Initialization
{ *************** Registra a classe para evitar duplicidade ****************** }
 RegisterClasses([TFGeraFracaoOPProdutos]);
end.
