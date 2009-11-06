unit AAmostraConsumo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, formularios,
  Grids, CGrades, Componentes1, ExtCtrls, PainelGradiente, Localizacao,
  StdCtrls, Buttons, UnDadosProduto, UnProdutos, Constantes, UnAmostra,
  ComCtrls, UnServicos, Mask, numericos;

type
  TFAmostraConsumo = class(TFormularioPermissao)
    PainelGradiente1: TPainelGradiente;
    PanelColor2: TPanelColor;    
    PanelColor1: TPanelColor;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    ECorKit: TEditLocaliza;
    Localiza: TConsultaPadrao;
    ECor: TEditLocaliza;
    BGravar: TBitBtn;
    BCancelar: TBitBtn;
    EFaca: TEditLocaliza;
    EMaquina: TEditLocaliza;
    PanelColor3: TPanelColor;
    Paginas: TPageControl;
    PMateriaPrima: TTabSheet;
    Grade: TRBStringGridColor;
    PServicos: TTabSheet;
    GServicos: TRBStringGridColor;
    PanelColor4: TPanelColor;
    PServicoFixo: TTabSheet;
    PCustosIndiretos: TTabSheet;
    GServicoFixo: TRBStringGridColor;
    EValVenda: Tnumerico;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GradeCarregaItemGrade(Sender: TObject; VpaLinha: Integer);
    procedure GradeDadosValidos(Sender: TObject; var VpaValidos: Boolean);
    procedure GradeGetEditMask(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure GradeMudouLinha(Sender: TObject; VpaLinhaAtual,
      VpaLinhaAnterior: Integer);
    procedure GradeNovaLinha(Sender: TObject);
    procedure GradeSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure GradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GradeKeyPress(Sender: TObject; var Key: Char);
    procedure ECorRetorno(Retorno1, Retorno2: String);
    procedure ECorKitCadastrar(Sender: TObject);
    procedure ECorKitRetorno(Retorno1, Retorno2: String);
    procedure BGravarClick(Sender: TObject);
    procedure GradeEnter(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure EFacaRetorno(Retorno1, Retorno2: String);
    procedure EMaquinaRetorno(Retorno1, Retorno2: String);
    procedure ECorCadastrar(Sender: TObject);
    procedure GServicosCarregaItemGrade(Sender: TObject; VpaLinha: Integer);
    procedure GServicosDadosValidos(Sender: TObject;
      var VpaValidos: Boolean);
    procedure GServicosGetEditMask(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure GServicosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GServicosKeyPress(Sender: TObject; var Key: Char);
    procedure GServicosMudouLinha(Sender: TObject; VpaLinhaAtual,
      VpaLinhaAnterior: Integer);
    procedure GServicosNovaLinha(Sender: TObject);
    procedure GServicosSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure GServicoFixoCarregaItemGrade(Sender: TObject;
      VpaLinha: Integer);
    procedure GServicoFixoDadosValidos(Sender: TObject;
      var VpaValidos: Boolean);
    procedure GServicoFixoGetEditMask(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure GServicoFixoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GServicoFixoKeyPress(Sender: TObject; var Key: Char);
    procedure GServicoFixoMudouLinha(Sender: TObject; VpaLinhaAtual,
      VpaLinhaAnterior: Integer);
    procedure GServicoFixoNovaLinha(Sender: TObject);
    procedure GServicoFixoSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure GradeDepoisExclusao(Sender: TObject);
  private
    VprServicoAnterior,
    VprServicoFixoAnterior,
    VprProdutoAnterior: String;
    VprCorAmostraAnterior : Integer;
    VprAcao : Boolean;
    VprDAmostra: TRBDAmostra;
    VprDConsumoAmostra: TRBDConsumoAmostra;
    VprDServicoAmostra : TRBDServicoAmostra;
    VprDServicoFixoAmostra : TRBDServicoFixoAmostra;
    FunAmostra : TRBFuncoesAmostra;
    procedure CarTitulosGrade;
    procedure CarQtdPecaMetroGrade;
    procedure CarregaDadosClasse;
    procedure CarDServicoAmostra;
    procedure CarDServicoFixoAmostra;
    function LocalizaProduto: Boolean;
    function LocalizaServico : Boolean;
    function LocalizaServicoFixo : Boolean;
    function ExisteProduto: Boolean;
    function ExisteServico : Boolean;
    function ExisteServicoFixo : Boolean;
    function ExisteCor: Boolean;
    function ExisteFaca : Boolean;
    function ExisteMaquina : Boolean;
    function ExisteUM : Boolean;
    procedure CalculaValorTotalItem;
    procedure CalculaValorVenda;
    procedure CarGrade;
    procedure CalculaConsumos;
    procedure CalculaValorTotalServico;
    procedure CalculaValorTotalServicoFixo;
  public
    function ConsumosAmostra(VpaDAmostra: TRBDAmostra): Boolean;
  end;

var
  FAmostraConsumo: TFAmostraConsumo;

implementation
uses
  APrincipal, ConstMSG, ALocalizaProdutos, funString, ACores, FunObjeto,
  ALocalizaServico;

{$R *.DFM}

{ ****************** Na cria��o do Formul�rio ******************************** }
procedure TFAmostraConsumo.FormCreate(Sender: TObject);
begin
  {  abre tabelas }
  { chamar a rotina de atualiza��o de menus }
  VprAcao := false;
  Paginas.ActivePage := PMateriaPrima;
  VprDConsumoAmostra:= TRBDConsumoAmostra.cria;
  FunAmostra := TRBFuncoesAmostra.cria(FPrincipal.BaseDados);
  CarTitulosGrade;
end;

{ ******************* Quando o formulario e fechado ************************** }
procedure TFAmostraConsumo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  { fecha tabelas }
  { chamar a rotina de atualiza��o de menus }
  FunAmostra.free;
  Action := CaFree;
end;

{(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((
                            A��es Diversas
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))}

{******************************************************************************}
procedure TFAmostraConsumo.CarTitulosGrade;
begin
  Grade.Cells[1,0] := 'C�digo';
  Grade.Cells[2,0] := 'Produto';
  Grade.Cells[3,0] := 'C�digo';
  Grade.Cells[4,0] := 'Cor';
  Grade.Cells[5,0] := 'UM';
  Grade.Cells[6,0] := 'Quantidade';
  Grade.Cells[7,0] := 'Valor Unitario';
  Grade.Cells[8,0] := 'Valor Total';
  Grade.Cells[9,0] := 'C�digo';
  Grade.Cells[10,0] := 'Faca';
  Grade.Cells[11,0] := 'Lar Molde';
  Grade.Cells[12,0] := 'Alt Molde';
  Grade.Cells[13,0] := 'C�digo';
  Grade.Cells[14,0] := 'M�quina';
  Grade.Cells[15,0] := 'Pcs em MT';
  Grade.Cells[16,0] := 'Indice MT';
  Grade.Cells[17,0] := 'Observa��es';
  Grade.Cells[18,0] := 'Legenda';

  GServicos.Cells[1,0] := 'C�digo';
  GServicos.Cells[2,0] := 'Servi�o';
  GServicos.Cells[3,0] := 'Descri��o Adicional';
  GServicos.Cells[4,0] := 'Quantidade';
  GServicos.Cells[5,0] := 'Valor Unit�rio';
  GServicos.Cells[6,0] := 'Valor Total';

  GServicoFixo.Cells[1,0] := 'C�digo';
  GServicoFixo.Cells[2,0] := 'Servi�o';
  GServicoFixo.Cells[3,0] := 'Descri��o Adicional';
  GServicoFixo.Cells[4,0] := 'Quantidade';
  GServicoFixo.Cells[5,0] := 'Valor Unit�rio';
  GServicoFixo.Cells[6,0] := 'Valor Total';
end;

{******************************************************************************}
procedure TFAmostraConsumo.CarQtdPecaMetroGrade;
begin
  if VprDConsumoAmostra.QtdPecasemMetro <> 0 then
    Grade.Cells[15,Grade.ALinha]:= FormatFloat('###,###,##0.00',VprDConsumoAmostra.QtdPecasemMetro)
  else
    Grade.Cells[15,Grade.ALinha]:= '';
  if VprDConsumoAmostra.ValIndiceConsumo <> 0 then
    Grade.Cells[16,Grade.ALinha]:= FormatFloat('###,###,##0.00',VprDConsumoAmostra.ValIndiceConsumo)
  else
    Grade.Cells[16,Grade.ALinha]:= '';
end;

{******************************************************************************}
procedure TFAmostraConsumo.GradeCarregaItemGrade(Sender: TObject;
  VpaLinha: Integer);
begin
  VprDConsumoAmostra:= TRBDConsumoAmostra(VprDAmostra.Consumos.Items[VpaLinha-1]);
  Grade.Cells[1,Grade.ALinha]:= VprDConsumoAmostra.CodProduto;
  Grade.Cells[2,Grade.ALinha]:= VprDConsumoAmostra.NomProduto;
  if VprDConsumoAmostra.CodCor = 0 then
    Grade.Cells[3,Grade.ALinha]:= ''
  else
    Grade.Cells[3,Grade.ALinha]:= IntToStr(VprDConsumoAmostra.CodCor);
  Grade.Cells[4,Grade.ALinha]:= VprDConsumoAmostra.NomCor;
  Grade.Cells[5,Grade.ALinha]:= VprDConsumoAmostra.DesUM;
  if VprDConsumoAmostra.Qtdproduto = 0 then
    Grade.Cells[6,Grade.ALinha]:= ''
  else
    Grade.Cells[6,Grade.ALinha]:= FormatFloat('#,###,###,###,##0.000#',VprDConsumoAmostra.Qtdproduto);
  if VprDConsumoAmostra.ValUnitario = 0 then
    Grade.Cells[7,Grade.ALinha]:= ''
  else
    Grade.Cells[7,Grade.ALinha]:= FormatFloat(varia.MascaraValorUnitario,VprDConsumoAmostra.ValUnitario);
  if VprDConsumoAmostra.ValTotal = 0 then
    Grade.Cells[8,Grade.ALinha]:= ''
  else
    Grade.Cells[8,Grade.ALinha]:= FormatFloat(varia.MascaraValor, VprDConsumoAmostra.ValTotal);
  if VprDConsumoAmostra.CodFaca = 0 then
    Grade.Cells[9,Grade.ALinha]:= ''
  else
    Grade.Cells[9,Grade.ALinha]:= IntToStr(VprDConsumoAmostra.CodFaca);
  Grade.Cells[10,Grade.ALinha]:= VprDConsumoAmostra.Faca.NomFaca;
  if VprDConsumoAmostra.LarMolde = 0 then
    Grade.Cells[11,Grade.ALinha]:= ''
  else
    Grade.Cells[11,Grade.ALinha]:= FormatFloat('#,##0.00',VprDConsumoAmostra.LarMolde);
  if VprDConsumoAmostra.AltMolde = 0 then
    Grade.Cells[12,Grade.ALinha]:= ''
  else
    Grade.Cells[12,Grade.ALinha]:= FormatFloat('#,##0.00',VprDConsumoAmostra.AltMolde);
  if VprDConsumoAmostra.CodMaquina = 0 then
    Grade.Cells[13,Grade.ALinha]:= ''
  else
    Grade.Cells[13,Grade.ALinha]:= IntToStr(VprDConsumoAmostra.CodMaquina);
  Grade.Cells[14,Grade.ALinha]:= VprDConsumoAmostra.Maquina.NomMaquina;
  Grade.Cells[17,Grade.ALinha]:= VprDConsumoAmostra.DesObservacao;
  Grade.Cells[18,Grade.ALinha]:= VprDConsumoAmostra.DesLegenda;
  CarQtdPecaMetroGrade;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GradeDadosValidos(Sender: TObject;
  var VpaValidos: Boolean);
begin
  VpaValidos:= True;
  if not ExisteProduto then
  begin
    aviso(CT_PRODUTONAOCADASTRADO);
    VpaValidos:= False;
    Grade.Col:= 1;
  end
  else
    if not ExisteCor then
    begin
      aviso('COR INV�LIDA!!!'#13'A cor digitada n�o existe cadastrada.');
      VpaValidos:= False;
      Grade.Col:= 3;
    end
    else
      if (VprDConsumoAmostra.UnidadeParentes.IndexOf(Grade.Cells[5,Grade.Alinha]) < 0) then
      begin
        VpaValidos := false;
        aviso(CT_UNIDADEVAZIA);
        Grade.col := 5;
      end
      else
        if Grade.Cells[6,Grade.ALinha] = '' then
        begin
          aviso('INFORME A QUANTIDADE!!!'#13'A quantidade deve ser preenchida.');
          VpaValidos:= False;
          Grade.Col:= 6;
        end
        else
          if not ExisteFaca then
          begin
            VpaValidos := false;
            aviso('FACA N�O CADASTRADA!!!!'#13'A faca digitada n�o existe cadastrada.');
            Grade.Col := 9;
          end
          else
            if not ExisteMaquina then
            begin
              VpaValidos := false;
              aviso('MAQUINA N�O CADASTRADA!!!!'#13'A maquina digitada n�o existe cadastrada.');
              Grade.Col := 13;
            end;

  if VpaValidos then
  begin
    CarregaDadosClasse;
    CalculaValorVenda;
    if VprDConsumoAmostra.Qtdproduto = 0 then
    begin
      aviso('QUANTIDADE N�O PREENCHIDA!!!'#13'� necess�rio preencher a quantidade do produto.');
      VpaValidos:= False;
      Grade.Col:= 6;
    end
    else
      if ((VprDConsumoAmostra.CodFaca <> 0) or (VprDConsumoAmostra.AltMolde <> 0) or
         (VprDConsumoAmostra.LarMolde <> 0)) and (VprDConsumoAmostra.AltProduto = 0) then
      begin
        aviso('ALTURA DO PRODUTO N�O PREENCHIDA!!!'#13'Para se calcular o consumo do produto � necess�rio que a altura do produto esteja preenhcida');
        VpaValidos:= False;
        Grade.Col:= 11;
      end;
  end;
end;

{******************************************************************************}
procedure TFAmostraConsumo.CarregaDadosClasse;
begin
  VprDConsumoAmostra.NomProduto := Grade.Cells[2,Grade.ALinha];
  if Grade.Cells[3,Grade.ALinha] <> '' then
    VprDConsumoAmostra.CodCor:= StrToInt(Grade.Cells[3,Grade.ALinha])
  else
    VprDConsumoAmostra.CodCor:= 0;

  VprDConsumoAmostra.DesUM:= Grade.Cells[5,Grade.ALinha];
  CalculaValorTotalItem;

  if Grade.Cells[9,Grade.ALinha] <> '' then
    VprDConsumoAmostra.CodFaca:= StrToInt(Grade.Cells[9,Grade.ALinha])
  else
    VprDConsumoAmostra.CodFaca := 0;
  if Grade.Cells[11,Grade.ALinha] <> '' then
    VprDConsumoAmostra.LarMolde:= StrToFloat(Grade.Cells[11,Grade.ALinha])
  else
    VprDConsumoAmostra.LarMolde := 0;
  if Grade.Cells[12,Grade.ALinha] <> '' then
    VprDConsumoAmostra.AltMolde:= StrToFloat(Grade.Cells[12,Grade.ALinha])
  else
    VprDConsumoAmostra.AltMolde := 0;
  if Grade.Cells[13,Grade.ALinha] <> '' then
    VprDConsumoAmostra.CodMaquina:= StrToInt(Grade.Cells[13,Grade.ALinha])
  else
    VprDConsumoAmostra.CodMaquina := 0;
  VprDConsumoAmostra.DesObservacao:= Grade.Cells[17,Grade.ALinha];
  VprDConsumoAmostra.DesLegenda:= Grade.Cells[18,Grade.ALinha];
end;

{******************************************************************************}
procedure TFAmostraConsumo.CarDServicoAmostra;
begin
  VprDServicoAmostra.CodServico := StrToInt(GServicos.Cells[1,GServicos.Alinha]);
  VprDServicoAmostra.NomServico := GServicos.Cells[2,GServicos.ALinha];
  VprDServicoAmostra.DesAdicional := GServicos.Cells[3,GServicos.ALinha];
  VprDServicoAmostra.QtdServico := StrToFloat(DeletaChars(GServicos.Cells[4,GServicos.ALinha],'.'));
  VprDServicoAmostra.ValUnitario := StrToFloat(DeletaChars(GServicos.Cells[5,GServicos.ALinha],'.'));
  CalculaValorTotalServico;
end;

{******************************************************************************}
procedure TFAmostraConsumo.CarDServicoFixoAmostra;
begin
  VprDServicoFixoAmostra.CodServico := StrToInt(GServicoFixo.Cells[1,GServicoFixo.Alinha]);
  VprDServicoFixoAmostra.NomServico := GServicoFixo.Cells[2,GServicoFixo.ALinha];
  VprDServicoFixoAmostra.DesAdicional := GServicos.Cells[3,GServicoFixo.ALinha];
  VprDServicoFixoAmostra.QtdServico := StrToFloat(DeletaChars(GServicoFixo.Cells[4,GServicoFixo.ALinha],'.'));
  VprDServicoFixoAmostra.ValUnitario := StrToFloat(DeletaChars(GServicoFixo.Cells[5,GServicoFixo.ALinha],'.'));
  CalculaValorTotalServicoFixo;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GradeGetEditMask(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
  case ACol of
    3,9,13: Value:= '0000;0; ';
  end;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GradeMudouLinha(Sender: TObject; VpaLinhaAtual,
  VpaLinhaAnterior: Integer);
begin
  if VprDAmostra.Consumos.Count > 0 then
  begin
    VprDConsumoAmostra:= TRBDConsumoAmostra(VprDAmostra.Consumos.Items[VpaLinhaAtual-1]);
    VprProdutoAnterior := VprDConsumoAmostra.CodProduto;
  end;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GradeNovaLinha(Sender: TObject);
begin
  VprDConsumoAmostra:= VprDAmostra.addConsumo;
  VprDConsumoAmostra.CodCorAmostra := ECorKit.Ainteiro;
  VprDConsumoAmostra.DesLegenda := FunAmostra.RLegendaDisponivel(VprDAmostra);
end;

{******************************************************************************}
procedure TFAmostraConsumo.GradeSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if Grade.AEstadoGrade in [egInsercao, egEdicao] then
  begin
    if Grade.AColuna <> ACol then
      case Grade.AColuna of
        1: if not ExisteProduto then
             if not LocalizaProduto then
             begin
               Grade.Cells[1,Grade.ALinha]:= '';
               Abort;
             end;
        3: if not ExisteCor then
             if not ECor.AAbreLocalizacao then
             begin
               Aviso('C�DIGO DA COR INV�LIDA !!!'#13'� necess�rio informar o c�digo da cor.');
               abort;
             end;
        5  : if not ExisteUM then
             begin
               aviso(CT_UNIDADEVAZIA);
               Grade.col := 5;
               abort;
             end;
        6,7 :begin
               CalculaConsumos;
               CalculaValorTotalItem;
             end;
        9: if not ExisteFaca then
             if not EFaca.AAbreLocalizacao then
             begin
               Aviso('C�DIGO DA FACA INV�LIDA!!!'#13'� necess�rio informar o c�digo da faca.');
               abort;
             end;
       11,12 : CalculaConsumos;
       13: if not ExisteMaquina then
             if not EMaquina.AAbreLocalizacao then
             begin
               Aviso('C�DIGO DA MAQUINA INV�LIDA!!!'#13'� necess�rio informar o c�digo da maquina.');
               abort;
             end;
      end;
  end;
end;

{******************************************************************************}
function TFAmostraConsumo.ExisteCor: Boolean;
begin
  Result:= True;
  if Grade.Cells[3,Grade.ALinha] <> '' then
  begin
    result := FunProdutos.ExisteCor(Grade.Cells[3,Grade.ALinha]);
    if result then
    begin
      ecor.Text := Grade.Cells[3,Grade.ALinha];
      ECor.Atualiza;
    end;
  end;
end;

{******************************************************************************}
function TFAmostraConsumo.ExisteFaca : Boolean;
begin
  Result:= True;
  if Grade.Cells[9,Grade.ALinha] <> '' then
  begin
    result := FunProdutos.ExisteFaca(StrToInt(Grade.Cells[9,Grade.ALinha]),VprDConsumoAmostra.Faca);
    if result then
    begin
      VprDConsumoAmostra.CodFaca := VprDConsumoAmostra.Faca.CodFaca;
      Grade.Cells[10,Grade.ALinha] := VprDConsumoAmostra.Faca.NomFaca;
      CalculaConsumos;
    end;
  end;
end;

{******************************************************************************}
function TFAmostraConsumo.ExisteMaquina : Boolean;
begin
  result := true;
  if Grade.cells[13,Grade.ALinha] <> '' then
  begin
    result := FunProdutos.ExisteMaquina(StrToInt(Grade.Cells[13,Grade.ALinha]),VprDConsumoAmostra.Maquina);
    if result then
    begin
      VprDConsumoAmostra.CodMaquina := VprDConsumoAmostra.Maquina.CodMaquina;
      Grade.Cells[14,Grade.ALinha] := VprDConsumoAmostra.Maquina.NomMaquina;
      if Grade.Cells[11,Grade.ALinha] <> '' then
        VprDConsumoAmostra.LarMolde:= StrToFloat(Grade.Cells[11,Grade.ALinha])
      else
        VprDConsumoAmostra.LarMolde := 0;
      if Grade.Cells[12,Grade.ALinha] <> '' then
        VprDConsumoAmostra.AltMolde:= StrToFloat(Grade.Cells[12,Grade.ALinha])
      else
        VprDConsumoAmostra.AltMolde := 0;
      CalculaConsumos;
    end;
  end;
end;

{******************************************************************************}
function TFAmostraConsumo.ExisteUM : Boolean;
begin
  if (VprDConsumoAmostra.UMAnterior = Grade.cells[5,Grade.ALinha]) then
    result := true
  else
  begin
    result := (VprDConsumoAmostra.UnidadeParentes.IndexOf(Grade.Cells[5,Grade.Alinha]) >= 0);
    if result then
    begin
      VprDConsumoAmostra.DesUM := Grade.Cells[5,Grade.Alinha];
      VprDConsumoAmostra.ValUnitario := FunProdutos.ValorPelaUnidade(VprDConsumoAmostra.UMAnterior,VprDConsumoAmostra.DesUM,VprDConsumoAmostra.SeqProduto,
                                               VprDConsumoAmostra.ValUnitario);
      VprDConsumoAmostra.UMAnterior := VprDConsumoAmostra.DesUM;
      Grade.Cells[7,Grade.ALinha]:= FormatFloat(varia.MascaraValorUnitario,VprDConsumoAmostra.ValUnitario);
      CalculaValorTotalItem;
    end;
  end;
end;

{******************************************************************************}
procedure TFAmostraConsumo.CalculaValorTotalItem;
begin
  if Grade.Cells[6,Grade.ALinha] <> '' then
    VprDConsumoAmostra.Qtdproduto:= StrToFloat(DeletaChars(Grade.Cells[6,Grade.ALinha],'.'))
  else
    VprDConsumoAmostra.Qtdproduto := 0;
  if Grade.Cells[7,Grade.ALinha] <> '' then
    VprDConsumoAmostra.ValUnitario:= StrToFloat(DeletaChars(Grade.Cells[7,Grade.ALinha],'.'))
  else
    VprDConsumoAmostra.ValUnitario := 0;
  if VprDConsumoAmostra.QtdPecasemMetro <> 0 then
    VprDConsumoAmostra.ValTotal := ((VprDConsumoAmostra.ValUnitario*VprDConsumoAmostra.ValIndiceConsumo)/VprDConsumoAmostra.QtdPecasemMetro)*VprDConsumoAmostra.Qtdproduto
  else
    VprDConsumoAmostra.ValTotal := VprDConsumoAmostra.Qtdproduto * VprDConsumoAmostra.ValUnitario;
  Grade.Cells[8,grade.ALinha] := FormatFloat(varia.MascaraValor,VprDConsumoAmostra.ValTotal);
end;

{******************************************************************************}
procedure TFAmostraConsumo.CalculaValorVenda;
begin
  FunAmostra.CalculaValorVendaUnitario(VprDAmostra);
  EValVenda.AValor := VprDAmostra.ValVendaUnitario;
end;

{******************************************************************************}
procedure TFAmostraConsumo.CarGrade;
begin
  FunAmostra.CarConsumosAmostra(VprDAmostra,ECorKit.AInteiro);
  Grade.ADados := VprDAmostra.Consumos;
  Grade.CarregaGrade;
  GServicos.ADados := VprDAmostra.Servicos;
  GServicos.CarregaGrade;
  GServicoFixo.ADados := VprDAmostra.ServicoFixo;
  GServicoFixo.CarregaGrade;
  VprCorAmostraAnterior := ECorKit.AInteiro;
end;

{******************************************************************************}
procedure TFAmostraConsumo.CalculaConsumos;
begin
  if (VprDConsumoAmostra.LarMolde <> 0 )or(VprDConsumoAmostra.AltMolde <> 0) or
     (VprDConsumoAmostra.CodFaca <> 0) or (VprDConsumoAmostra.CodMaquina <> 0) then
    if VprDConsumoAmostra.AltProduto = 0 then
    begin
      aviso('ALTURA DO PRODUTO N�O PREENCHIDA!!!'#13'� necess�rio informar a altura do produto');
      VprDConsumoAmostra.QtdPecasemMetro := 0;
    end;
  CarregaDadosClasse;
  VprDConsumoAmostra.QtdPecasemMetro := 0;
  if VprDConsumoAmostra.CodFaca <> 0 then
  begin
    VprDConsumoAmostra.QtdPecasemMetro := FunProdutos.RQtdPecaemMetro(VprDConsumoAmostra.AltProduto,100,VprDConsumoAmostra.Faca.QtdProvas,VprDConsumoAmostra.Faca.AltFaca,VprDConsumoAmostra.Faca.LarFaca,false,VprDConsumoAmostra.ValIndiceConsumo);
    VprDConsumoAmostra.Qtdproduto := 1 / VprDConsumoAmostra.QtdPecasemMetro;
  end
  else
    if (VprDConsumoAmostra.LarMolde <> 0 )and
       (VprDConsumoAmostra.AltMolde <> 0) then
    begin
      VprDConsumoAmostra.QtdPecasemMetro := FunProdutos.RQtdPecaemMetro(VprDConsumoAmostra.AltProduto,100,1,VprDConsumoAmostra.AltMolde,VprDConsumoAmostra.LarMolde,false,VprDConsumoAmostra.ValIndiceConsumo);
    end;

  CarQtdPecaMetroGrade;
  CalculaValorTotalItem;
end;

{******************************************************************************}
procedure TFAmostraConsumo.CalculaValorTotalServico;
begin
  VprDServicoAmostra.ValTotal := VprDServicoAmostra.ValUnitario * VprDServicoAmostra.QtdServico;
  GServicos.Cells[6,GServicos.ALinha] := FormatFloat('R$ #,###,###,###,##0.000',VprDServicoAmostra.ValTotal);
end;

{******************************************************************************}
procedure TFAmostraConsumo.CalculaValorTotalServicoFixo;
begin
  VprDServicoFixoAmostra.ValTotal := VprDServicoFixoAmostra.ValUnitario * VprDServicoFixoAmostra.QtdServico;
  GServicoFixo.Cells[6,GServicoFixo.ALinha] := FormatFloat('R$ #,###,###,###,##0.000',VprDServicoFixoAmostra.ValTotal);
end;

{******************************************************************************}
function TFAmostraConsumo.ExisteProduto: Boolean;
begin
  if (Grade.Cells[1,Grade.ALinha] <> '') then
  begin
    if Grade.Cells[1,Grade.ALinha] = VprProdutoAnterior then
      result := true
    else
    begin
      VprDConsumoAmostra.CodProduto := Grade.Cells[1,Grade.ALinha];
      Result:= FunProdutos.ExisteProduto(Grade.Cells[1,Grade.ALinha], VprDConsumoAmostra);
      if result then
      begin
        VprDConsumoAmostra.UnidadeParentes.free;
        VprDConsumoAmostra.UnidadeParentes := FunProdutos.RUnidadesParentes(VprDConsumoAmostra.DesUM);
        VprProdutoAnterior := VprDConsumoAmostra.CodProduto;
        Grade.Cells[2,Grade.ALinha] := VprDConsumoAmostra.NomProduto;
        Grade.Cells[5,Grade.ALinha] := VprDConsumoAmostra.DesUM;
        Grade.Cells[6,Grade.ALinha] := FormatFloat(Varia.MascaraQtd,VprDConsumoAmostra.Qtdproduto);
        Grade.Cells[7,Grade.ALinha] := FormatFloat(Varia.MascaraValorUnitario,VprDConsumoAmostra.ValUnitario);;
      end;
    end;
  end
  else
    result := false;
end;

{******************************************************************************}
function TFAmostraConsumo.ExisteServico : Boolean;
begin
  if (GServicos.Cells[1,GServicos.ALinha] <> '') then
  begin
    if (GServicos.Cells[1,GServicos.ALinha] = VprServicoAnterior)  then
      result := true
    else
    begin
      result := FunServico.ExisteServico(StrtoInt(GServicos.Cells[1,GServicos.ALinha]),VprDServicoAmostra);
      if result then
      begin
        VprServicoAnterior := GServicos.Cells[1,GServicos.ALinha];
        GServicos.Cells[2,GServicos.Alinha] := VprDServicoAmostra.NomServico;
        GServicos.Cells[4,GServicos.ALinha] :=  FormatFloat('###,###,###,##0.000',VprDServicoAmostra.QtdServico);
        GServicos.Cells[5,GServicos.ALinha] :=  FormatFloat('###,###,###,##0.0000',VprDServicoAmostra.ValUnitario);
        CalculaValorTotalServico;
      end;
    end;
  end
  else
    result := false;
end;

{******************************************************************************}
function TFAmostraConsumo.ExisteServicoFixo : Boolean;
begin
  if (GServicoFixo.Cells[1,GServicoFixo.ALinha] <> '') then
  begin
    if (GServicoFixo.Cells[1,GServicoFixo.ALinha] = VprServicoFixoAnterior)  then
      result := true
    else
    begin
      result := FunServico.ExisteServico(StrtoInt(GServicoFixo.Cells[1,GServicoFixo.ALinha]),VprDServicoFixoAmostra);
      if result then
      begin
        VprServicoFixoAnterior := GServicoFixo.Cells[1,GServicoFixo.ALinha];
        GServicoFixo.Cells[2,GServicoFixo.Alinha] := VprDServicoFixoAmostra.NomServico;
        GServicoFixo.Cells[4,GServicoFixo.ALinha] :=  FormatFloat('###,###,###,##0.000',VprDServicoFixoAmostra.QtdServico);
        GServicoFixo.Cells[5,GServicoFixo.ALinha] :=  FormatFloat('###,###,###,##0.0000',VprDServicoFixoAmostra.ValUnitario);
        CalculaValorTotalServicoFixo;
      end;
    end;
  end
  else
    result := false;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    114: case Grade.Col of
           1: LocalizaProduto;
           3: ECor.AAbreLocalizacao;
           9: EFaca.AAbreLocalizacao;
          13: EMaquina.AAbreLocalizacao; 
         end;
  end;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GradeKeyPress(Sender: TObject; var Key: Char);
begin
  case Grade.Col of
    6,7,11,12: if Key = '.' then
         Key:= ',';
  end;
end;

{******************************************************************************}
function TFAmostraConsumo.LocalizaProduto: Boolean;
begin
  FlocalizaProduto := TFlocalizaProduto.criarSDI(Application,'',True);
  Result:= FlocalizaProduto.LocalizaProduto(VprDConsumoAmostra);
  FlocalizaProduto.free;
  if Result then  // se o usuario nao cancelou a consulta
  begin
    VprDConsumoAmostra.UnidadeParentes.free;
    VprDConsumoAmostra.UnidadeParentes := FunProdutos.RUnidadesParentes(VprDConsumoAmostra.DesUM);
    VprProdutoAnterior:= VprDConsumoAmostra.CodProduto;
    Grade.Cells[1,Grade.ALinha] := VprDConsumoAmostra.CodProduto;
    Grade.Cells[2,Grade.ALinha] := VprDConsumoAmostra.NomProduto;
    Grade.Cells[5,Grade.ALinha] := VprDConsumoAmostra.DesUM;
    Grade.Cells[7,Grade.ALinha] := FormatFloat(varia.MascaraValorUnitario, VprDConsumoAmostra.ValUnitario);
  end;
end;

{******************************************************************************}
function  TFAmostraConsumo.LocalizaServico : Boolean;
begin
  FlocalizaServico := TFlocalizaServico.criarSDI(Application,'',FPrincipal.VerificaPermisao('FlocalizaServico'));
  result := FlocalizaServico.LocalizaServico(VprDServicoAmostra);
  FlocalizaServico.free; // destroi a classe;

  if result then  // se o usuario nao cancelou a consulta
  begin
    VprDServicoAmostra.QtdServico := 1;
    GServicos.Cells[1,GServicos.ALinha] := IntToStr(VprDServicoAmostra.CodServico);
    GServicos.Cells[2,GServicos.ALinha] := VprDServicoAmostra.NomServico;
    GServicos.Cells[4,GServicos.ALinha] :=  FormatFloat('###,###,###,##0.000',VprDServicoAmostra.QtdServico);
    GServicos.Cells[5,GServicos.ALinha] :=  FormatFloat('###,###,###,##0.0000',VprDServicoAmostra.ValUnitario);
    VprServicoAnterior := GServicos.Cells[1,GServicos.ALinha];
    CalculaValorTotalServico;
  end;
end;

{******************************************************************************}
function TFAmostraConsumo.LocalizaServicoFixo : Boolean;
begin
  FlocalizaServico := TFlocalizaServico.criarSDI(Application,'',FPrincipal.VerificaPermisao('FlocalizaServico'));
  result := FlocalizaServico.LocalizaServico(VprDServicoFixoAmostra);
  FlocalizaServico.free; // destroi a classe;

  if result then  // se o usuario nao cancelou a consulta
  begin
    VprDServicoFixoAmostra.QtdServico := 1;
    GServicoFixo.Cells[1,GServicoFixo.ALinha] := IntToStr(VprDServicoFixoAmostra.CodServico);
    GServicoFixo.Cells[2,GServicoFixo.ALinha] := VprDServicoFixoAmostra.NomServico;
    GServicoFixo.Cells[4,GServicoFixo.ALinha] :=  FormatFloat('###,###,###,##0.000',VprDServicoFixoAmostra.QtdServico);
    GServicoFixo.Cells[5,GServicoFixo.ALinha] :=  FormatFloat('###,###,###,##0.0000',VprDServicoFixoAmostra.ValUnitario);
    VprServicoFixoAnterior := GServicoFixo.Cells[1,GServicoFixo.ALinha];
    CalculaValorTotalServicoFixo;
  end;
end;

{******************************************************************************}
function TFAmostraConsumo.ConsumosAmostra(VpaDAmostra: TRBDAmostra): Boolean;
begin
  VprDAmostra:= VpaDAmostra;
  CarGrade;
  ShowModal;
  result := VprAcao;
end;

{******************************************************************************}
procedure TFAmostraConsumo.ECorRetorno(Retorno1, Retorno2: String);
begin
  Grade.Cells[3,grade.ALinha] := retorno1;
  Grade.Cells[4,Grade.ALinha] := Retorno2;
  VprDConsumoAmostra.NomCor := Retorno2;
  if Retorno1 <> '' then
    VprDConsumoAmostra.CodCor := StrToInt(Retorno1)
  else
    VprDConsumoAmostra.CodCor := 0;
end;

{******************************************************************************}
procedure TFAmostraConsumo.ECorKitCadastrar(Sender: TObject);
begin
  FCores := TFCores.CriarSDI(application, '', FPrincipal.VerificaPermisao('FCores'));
  FCores.BotaoCadastrar1.Click;
  FCores.Showmodal;
  FCores.free;
  Localiza.AtualizaConsulta;
end;

{******************************************************************************}
procedure TFAmostraConsumo.ECorKitRetorno(Retorno1, Retorno2: String);
var
  VpfResultado : String;
begin
  if retorno1 <> '' then
  begin
    if (ECorKit.AInteiro <> VprCorAmostraAnterior) and (VprCorAmostraAnterior <> 0) then
      VpfResultado := FunAmostra.GravaConsumoAmostra(VprDAmostra,VprCorAmostraAnterior );
    if VpfResultado <> '' then
    begin
      ECorKit.AInteiro := VprCorAmostraAnterior;
      aviso(VpfResultado);
    end
    else
      CarGrade;
  end;

end;

{******************************************************************************}
procedure TFAmostraConsumo.BGravarClick(Sender: TObject);
Var
  VpfResultado :String;
begin
  VpfResultado := FunAmostra.GravaConsumoAmostra(VprDAmostra,ECorKit.Ainteiro);
  if VpfResultado <> '' then
    aviso(VpfResultado)
  else
  begin
    VprAcao := true;
    close;
  end;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GradeEnter(Sender: TObject);
begin
  if ECorKit.AInteiro = 0 then
  begin
    aviso('COR DA AMOSTRA N�O PREENCHIDA!!!'#13'Antes de preencher o consumo da amostra � necess�rio selecionar a que cor a amostra se refere.');
    ECorKit.SetFocus;
  end;
end;

{******************************************************************************}
procedure TFAmostraConsumo.BCancelarClick(Sender: TObject);
begin
  VprAcao := false;
  close;
end;

{******************************************************************************}
procedure TFAmostraConsumo.EFacaRetorno(Retorno1, Retorno2: String);
begin
  if Retorno1 <> '' then
  begin
    FunProdutos.ExisteFaca(StrToInt(Retorno1),VprDConsumoAmostra.Faca);
    Grade.Cells[9,Grade.ALinha] := IntTostr(VprDConsumoAmostra.Faca.CodFaca);
    Grade.Cells[10,Grade.ALinha] := VprDConsumoAmostra.Faca.NomFaca;
  end
  else
    VprDConsumoAmostra.CodFaca := 0;
end;

{******************************************************************************}
procedure TFAmostraConsumo.EMaquinaRetorno(Retorno1, Retorno2: String);
begin
  if Retorno1 <> '' then
  begin
    FunProdutos.ExisteMaquina(StrToInt(Retorno1),VprDConsumoAmostra.Maquina);
    Grade.Cells[13,Grade.ALinha] := IntToStr(VprDConsumoAmostra.Maquina.CodMaquina);
    Grade.Cells[14,Grade.ALinha] := VprDConsumoAmostra.Maquina.NomMaquina;
  end
  else
    VprDConsumoAmostra.CodMaquina := 0;
end;

{******************************************************************************}
procedure TFAmostraConsumo.ECorCadastrar(Sender: TObject);
begin
  FCores := TFCores.CriarSDI(self,'',FPrincipal.VerificaPermisao('FCores'));
  FCores.BotaoCadastrar1.Click;
  FCores.ShowModal;
  FCores.free;
  Localiza.AtualizaConsulta;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GServicosCarregaItemGrade(Sender: TObject;
  VpaLinha: Integer);
begin
  VprDServicoAmostra := TRBDServicoAmostra(VprDAmostra.Servicos.Items[VpaLinha-1]);
  if VprDServicoAmostra.CodServico <> 0 then
    GServicos.Cells[1,VpaLinha] := IntToStr(VprDServicoAmostra.CodServico)
  else
    GServicos.Cells[1,VpaLinha] := '';
  GServicos.Cells[2,VpaLinha] := VprDServicoAmostra.NomServico;
  GServicos.Cells[3,VpaLinha] := VprDServicoAmostra.DesAdicional;
  GServicos.Cells[4,VpaLinha] := FormatFloat('###,###,###,##0.000',VprDServicoAmostra.QtdServico);
  GServicos.Cells[5,VpaLinha] := FormatFloat('###,###,###,##0.0000',VprDServicoAmostra.ValUnitario);
  GServicos.Cells[6,VpaLinha] := FormatFloat('R$ #,###,###,###,##0.000',VprDServicoAmostra.ValTotal)
end;

{******************************************************************************}
procedure TFAmostraConsumo.GServicosDadosValidos(Sender: TObject;
  var VpaValidos: Boolean);
begin
  VpaValidos := true;
  if GServicos.Cells[1,GServicos.ALinha] = '' then
  begin
    VpaValidos := false;
    aviso(CT_SERVICONAOCADASTRADO);
  end
  else
    if not ExisteServico then
    begin
      VpaValidos := false;
      aviso(CT_SERVICONAOCADASTRADO);
      GServicos.col := 1;
    end
    else
      if (GServicos.Cells[4,GServicos.ALinha] = '') then
      begin
        VpaValidos := false;
        aviso(CT_QTDSERVICOSINVALIDO);
        GServicos.Col := 4;
      end
      else
        if (GServicos.Cells[5,GServicos.ALinha] = '') then
        begin
          VpaValidos := false;
          aviso(CT_VALORUNITARIOINVALIDO);
          GServicos.Col := 5;
        end;
  if VpaValidos then
  begin
    CarDServicoAmostra;
    CalculaValorVenda;
   if VprDServicoAmostra.QtdServico = 0 then
    begin
      VpaValidos := false;
      aviso(CT_QTDSERVICOINVALIDO);
      GServicos.col := 4;
    end
    else
      if VprDServicoAmostra.ValUnitario = 0 then
      begin
        VpaValidos := false;
        aviso(CT_VALORUNITARIOINVALIDO);
        GServicos.Col := 5;
      end;
  end;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GServicosGetEditMask(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
  case ACol of
    1 :  Value := '00000;0; ';
  end;
end;

procedure TFAmostraConsumo.GServicosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    114 :
    begin                           // F3
      case GServicos.Col of
        1 :  LocalizaServico;
      end;
    end;
  end;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GServicosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = '.')and (GServicos.col <>3)  then
    key := DecimalSeparator;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GServicosMudouLinha(Sender: TObject;
  VpaLinhaAtual, VpaLinhaAnterior: Integer);
begin
  if VprDAmostra.Servicos.Count >0 then
  begin
    VprDServicoAmostra := TRBDServicoAmostra(VprDAmostra.Servicos.Items[VpaLinhaAtual-1]);
    VprServicoAnterior := IntTostr(VprDServicoAmostra.CodServico);
  end;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GServicosNovaLinha(Sender: TObject);
begin
  VprDServicoAmostra := VprDAmostra.AddServico;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GServicosSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if GServicos.AEstadoGrade in [egInsercao,EgEdicao] then
    if GServicos.AColuna <> ACol then
    begin
      case GServicos.AColuna of
        1 :if not ExisteServico then
           begin
             if not LocalizaServico then
             begin
               GServicos.Cells[1,GServicos.ALinha] := '';
               abort;
             end;
           end;
        4,5 :
             begin
               if GServicos.Cells[4,GServicos.ALinha] <> '' then
                 VprDServicoAmostra.QtdServico := StrToFloat(DeletaChars(GServicos.Cells[4,GServicos.ALinha],'.'))
               else
                 VprDServicoAmostra.QtdServico := 0;
               if GServicos.Cells[5,GServicos.ALinha] <> '' then
                 VprDServicoAmostra.ValUnitario := StrToFloat(DeletaChars(GServicos.Cells[5,GServicos.ALinha],'.'))
               else
                 VprDServicoAmostra.ValUnitario := 0;
               CalculaValorTotalServico;
             end;
      end;
    end;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GServicoFixoCarregaItemGrade(Sender: TObject;
  VpaLinha: Integer);
begin
  VprDServicoFixoAmostra := TRBDServicoFixoAmostra(VprDAmostra.ServicoFixo.Items[VpaLinha-1]);
  if VprDServicoFixoAmostra.CodServico <> 0 then
    GServicoFixo.Cells[1,VpaLinha] := IntToStr(VprDServicoFixoAmostra.CodServico)
  else
    GServicoFixo.Cells[1,VpaLinha] := '';
  GServicoFixo.Cells[2,VpaLinha] := VprDServicoFixoAmostra.NomServico;
  GServicoFixo.Cells[3,VpaLinha] := VprDServicoFixoAmostra.DesAdicional;
  GServicoFixo.Cells[4,VpaLinha] := FormatFloat('###,###,###,##0.000',VprDServicoFixoAmostra.QtdServico);
  GServicoFixo.Cells[5,VpaLinha] := FormatFloat('###,###,###,##0.0000',VprDServicoFixoAmostra.ValUnitario);
  GServicoFixo.Cells[6,VpaLinha] := FormatFloat('R$ #,###,###,###,##0.000',VprDServicoFixoAmostra.ValTotal)
end;

{******************************************************************************}
procedure TFAmostraConsumo.GServicoFixoDadosValidos(Sender: TObject;
  var VpaValidos: Boolean);
begin
  VpaValidos := true;
  if GServicoFixo.Cells[1,GServicoFixo.ALinha] = '' then
  begin
    VpaValidos := false;
    aviso(CT_SERVICONAOCADASTRADO);
  end
  else
    if not ExisteServicoFixo then
    begin
      VpaValidos := false;
      aviso(CT_SERVICONAOCADASTRADO);
      GServicoFixo.col := 1;
    end
    else
      if (GServicoFixo.Cells[4,GServicoFixo.ALinha] = '') then
      begin
        VpaValidos := false;
        aviso(CT_QTDSERVICOSINVALIDO);
        GServicoFixo.Col := 4;
      end
      else
        if (GServicoFixo.Cells[5,GServicoFixo.ALinha] = '') then
        begin
          VpaValidos := false;
          aviso(CT_VALORUNITARIOINVALIDO);
          GServicoFixo.Col := 5;
        end;
  if VpaValidos then
  begin
    CarDServicoFixoAmostra;
    CalculaValorVenda;
    if VprDServicoFixoAmostra.QtdServico = 0 then
    begin
      VpaValidos := false;
      aviso(CT_QTDSERVICOINVALIDO);
      GServicoFixo.col := 4;
    end
    else
      if VprDServicoFixoAmostra.ValUnitario = 0 then
      begin
        VpaValidos := false;
        aviso(CT_VALORUNITARIOINVALIDO);
        GServicoFixo.Col := 5;
      end;
  end;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GServicoFixoGetEditMask(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
  case ACol of
    1 :  Value := '00000;0; ';
  end;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GServicoFixoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    114 :
    begin                           // F3
      case GServicoFixo.Col of
        1 :  LocalizaServicoFixo;
      end;
    end;
  end;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GServicoFixoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = '.')and (GServicoFixo.col <>3)  then
    key := DecimalSeparator;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GServicoFixoMudouLinha(Sender: TObject;
  VpaLinhaAtual, VpaLinhaAnterior: Integer);
begin
  if VprDAmostra.ServicoFixo.Count >0 then
  begin
    VprDServicoFixoAmostra := TRBDServicoFixoAmostra(VprDAmostra.ServicoFixo.Items[VpaLinhaAtual-1]);
    VprServicoFixoAnterior := IntTostr(VprDServicoFixoAmostra.CodServico);
  end;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GServicoFixoNovaLinha(Sender: TObject);
begin
  VprDServicoFixoAmostra := VprDAmostra.AddServicoFixo;
end;

{******************************************************************************}
procedure TFAmostraConsumo.GServicoFixoSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if GServicoFixo.AEstadoGrade in [egInsercao,EgEdicao] then
    if GServicoFixo.AColuna <> ACol then
    begin
      case GServicoFixo.AColuna of
        1 :if not ExisteServicoFixo then
           begin
             if not LocalizaServicoFixo then
             begin
               GServicoFixo.Cells[1,GServicoFixo.ALinha] := '';
               abort;
             end;
           end;
        4,5 :
             begin
               if GServicoFixo.Cells[4,GServicoFixo.ALinha] <> '' then
                 VprDServicoFixoAmostra.QtdServico := StrToFloat(DeletaChars(GServicoFixo.Cells[4,GServicoFixo.ALinha],'.'))
               else
                 VprDServicoFixoAmostra.QtdServico := 0;
               if GServicoFixo.Cells[5,GServicoFixo.ALinha] <> '' then
                 VprDServicoFixoAmostra.ValUnitario := StrToFloat(DeletaChars(GServicoFixo.Cells[5,GServicoFixo.ALinha],'.'))
               else
                 VprDServicoFixoAmostra.ValUnitario := 0;
               CalculaValorTotalServicoFixo;
             end;
      end;
    end;
end;

procedure TFAmostraConsumo.GradeDepoisExclusao(Sender: TObject);
begin
  CalculaValorVenda;
end;

Initialization
{ *************** Registra a classe para evitar duplicidade ****************** }
 RegisterClasses([TFAmostraConsumo]);
end.

