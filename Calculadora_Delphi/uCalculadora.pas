unit uCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    tela: TEdit;
    Um: TSpeedButton;
    Dois: TSpeedButton;
    Quatro: TSpeedButton;
    Seis: TSpeedButton;
    Cinco: TSpeedButton;
    Menos: TSpeedButton;
    Tres: TSpeedButton;
    Sete: TSpeedButton;
    Nove: TSpeedButton;
    Oito: TSpeedButton;
    Apagar: TSpeedButton;
    Zero: TSpeedButton;
    Mais: TSpeedButton;
    Vezes: TSpeedButton;
    Virgula: TSpeedButton;
    Igual: TSpeedButton;
    Divisao: TSpeedButton;
    procedure UmClick(Sender: TObject);
    procedure MaisClick(Sender: TObject);
    procedure MenosClick(Sender: TObject);
    procedure VezesClick(Sender: TObject);
    procedure DivisaoClick(Sender: TObject);
    procedure ApagarClick(Sender: TObject);
    procedure VirgulaClick(Sender: TObject);
    procedure IgualClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  DigitoUm : double;
  DigitoDois: double;
  funcao: integer;

implementation

{$R *.dfm}


procedure TForm1.FormShow(Sender: TObject);

begin

  DigitoUm := 0;

  DigitoDois := 0;

end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;

  Shift: TShiftState);

begin

  if Key = VK_NUMPAD1 then

    begin

      Um.Click;

    end;

  if Key = VK_NUMPAD2 then

    begin

      Dois.click;

    end;

  if Key = VK_NUMPAD3 then

    begin

       Tres.click;

    end;

  if Key = VK_NUMPAD4 then

    begin

       Quatro.click;

    end;

  if Key = VK_NUMPAD5 then

    begin

      Cinco.click;

    end;

  if Key = VK_NUMPAD6 then

    begin

      Seis.click;

    end;

  if Key = VK_NUMPAD7 then

    begin

      Sete.click;

    end;

  if Key = VK_NUMPAD8 then

    begin

      Oito.click;

    end;

  if Key = VK_NUMPAD9 then

    begin

      Nove.click;

    end;

  if Key = VK_NUMPAD0 then

    begin

      Zero.click;

    end;

  if Key = VK_ADD then

    begin

      Mais.click;

    end;

  if Key = VK_SUBTRACT then

    begin

      Menos.Click;

    end;

  if Key = VK_MULTIPLY then

    begin

      Vezes.Click;

    end;

  if Key = VK_DIVIDE then

    begin

       Divisao.Click;

    end;

  if Key = VK_RETURN then

    begin

      Igual.Click;

    end;

  if Key = VK_DECIMAL then

    begin

      Virgula.Click;

    end;

  if Key = VK_BACK then

    begin

      Apagar.Click;

    end;

end;

procedure TForm1.MaisClick(Sender: TObject);
begin
    DigitoUm := StrToFloat(tela.text);
    tela.Text := '';
    funcao := 1;
    Virgula.Enabled := true;
end;

procedure TForm1.MenosClick(Sender: TObject);
begin
    DigitoUm := StrToFloat(tela.text);
    tela.Text := '';
    funcao := 2;
    Virgula.Enabled := true;
end;

procedure TForm1.UmClick(Sender: TObject);
begin
      tela.Text := tela.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.VezesClick(Sender: TObject);
begin
    DigitoUm := StrToFloat(tela.text);
    tela.Text := '';
    funcao := 3;
    Virgula.Enabled := true;
end;

procedure TForm1.VirgulaClick(Sender: TObject);
begin
    if (tela.Text <> '')then
    begin
      tela.Text := tela.Text + ',';
      Virgula.Enabled := false;
    end
end;

procedure TForm1.ApagarClick(Sender: TObject);
begin
      tela.Text:='';
      Virgula.Enabled := true;
end;

procedure TForm1.DivisaoClick(Sender: TObject);
begin
    DigitoUm := StrToFloat(tela.text);
    tela.Text := '';
    funcao := 4;
    Virgula.Enabled := true;
end;

procedure TForm1.igualClick(Sender: TObject);
var
  soma: real;
begin
  DigitoDois:=StrToFloat(tela.Text);
  case (funcao) of
      1:
    begin
    soma:=DigitoUm+DigitoDois;
    tela.text:=FloatToStr(soma);
    end;
      2:
    begin
    soma:=DigitoUm-DigitoDois;
    tela.text:=FloatToStr(soma);
    end;
      3:
    begin
    soma:=DigitoUm*DigitoDois;
    tela.text:=FloatToStr(soma);
    end;
      4:
    begin
    if(DigitoDois<>0)then
      begin
        soma:=DigitoUm/DigitoDois;
        tela.text:=FloatToStr(soma);
      end
    else
      begin
        SHowMessage('Não e possivel fazer divisão por zero!!');
        tela.Text:='ERRO 404';
      end
    end
    end;      //finaliza o  case
    Virgula.Enabled := true;
  end;
end.
