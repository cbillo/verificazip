unit ASpedFiscal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, formularios, StdCtrls, Buttons, Componentes1, Localizacao, ComCtrls,
  ExtCtrls, PainelGradiente, UnDados, UnSpedFiscal;

type
  TFSpedFiscal = class(TFormularioPermissao)
    PainelGradiente1: TPainelGradiente;
    PanelColor1: TPanelColor;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    StatusBar1: TStatusBar;
    EDatInicio: TCalendario;
    EDatFim: TCalendario;
    ECodFilial: TEditLocaliza;
    PanelColor2: TPanelColor;
    BGerar: TBitBtn;
    BFechar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BFecharClick(Sender: TObject);
    procedure BGerarClick(Sender: TObject);
  private
    { Private declarations }
    VprDSped : TRBDSpedFiscal;
    FunSpedFiscal : TRBFuncoesSpedFiscal;
    procedure CarDClasse;
  public
    { Public declarations }
  end;

var
  FSpedFiscal: TFSpedFiscal;

implementation

uses Constantes, funData, constmsg, APrincipal;

{$R *.DFM}


{ ****************** Na cria��o do Formul�rio ******************************** }
procedure TFSpedFiscal.FormCreate(Sender: TObject);
begin
  {  abre tabelas }
  { chamar a rotina de atualiza��o de menus }
  FunSpedFiscal := TRBFuncoesSpedFiscal.cria(FPrincipal.BaseDados);
  ECodFilial.AInteiro := Varia.CodigoEmpFil;
  ECodFilial.atualiza;
  EDatInicio.DateTime := PrimeiroDiaMesAnterior;
  EDatFim.Date := UltimoDiaMesAnterior;
  VprDSped := TRBDSpedFiscal.cria;
end;

{ **************************************************************************** }
procedure TFSpedFiscal.BFecharClick(Sender: TObject);
begin
   close;
end;

{ **************************************************************************** }
procedure TFSpedFiscal.BGerarClick(Sender: TObject);
begin
  CarDClasse;
  FunSpedFiscal.GeraSpedfiscal(VprDSped,StatusBar1);
  if (VprDSped.Incosistencias.Count > 0) then
  begin
    VprDSped.Incosistencias.SaveToFile('c:\InconsistenciasSped.txt');
    StatusBar1.Panels[0].Text := 'Foram gerados '+IntToStr(VprDSped.Incosistencias.Count)+' inconsistencias no arquivo "c:\Inconsistencias.txt"';
  end
  else
  begin
    VprDSped.Arquivo.SaveToFile('c:\spedeficacia.txt');
    StatusBar1.Panels[0].Text := 'Arquivo "c:\spedeficacia.txt" gerado com sucesso';
  end;
end;

{ **************************************************************************** }
procedure TFSpedFiscal.CarDClasse;
begin
  VprDSped.free;
  VprDSped := TRBDSpedFiscal.cria;
  VprDSped.Codfilial := ECodFilial.AInteiro;
  VprDSped.DatInicio := EDatInicio.Date;
  VprDSped.DatFinal := EDatFim.Date;
  VprDSped.CodFinalidade := cfRemessaOriginal;
end;

{ ******************* Quando o formulario e fechado ************************** }
procedure TFSpedFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  { fecha tabelas }
  { chamar a rotina de atualiza��o de menus }
  FunSpedFiscal.free;
  VprDSped.free;
  Action := CaFree;
end;

{(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((
                            A��es Diversas
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))}


Initialization
{ *************** Registra a classe para evitar duplicidade ****************** }
 RegisterClasses([TFSpedFiscal]);
end.
