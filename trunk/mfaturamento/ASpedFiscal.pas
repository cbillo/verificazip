unit ASpedFiscal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, formularios, StdCtrls, Buttons, Componentes1, Localizacao, ComCtrls,
  ExtCtrls, PainelGradiente, UnDados;

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
    procedure CarDClasse;
  public
    { Public declarations }
  end;

var
  FSpedFiscal: TFSpedFiscal;

implementation

uses Constantes, funData;

{$R *.DFM}


{ ****************** Na cria��o do Formul�rio ******************************** }
procedure TFSpedFiscal.FormCreate(Sender: TObject);
begin
  {  abre tabelas }
  { chamar a rotina de atualiza��o de menus }
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
end;

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
