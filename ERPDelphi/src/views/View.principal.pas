unit View.principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.Outline, Vcl.Buttons,
  Vcl.Imaging.pngimage, System.ImageList, Vcl.ImgList, System.Actions,
  Vcl.ActnList;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlLogo: TPanel;
    pnlLineLogo: TPanel;
    pnlConteudoLogo: TPanel;
    lblTituloEmpresa: TLabel;
    lblDescricaoEmpresa: TLabel;
    pnlVersao: TPanel;
    lblVersaoTitulo: TLabel;
    lblVersao: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlImagemUsuario: TPanel;
    imgUserBranca: TImage;
    pnlDadosUsuarios: TPanel;
    lblUsuario: TLabel;
    lblPerfil: TLabel;
    pnlSair: TPanel;
    pnlShapeMenu: TPanel;
    ShapeMenu: TShape;
    pnlDadosMenu: TPanel;
    btnClientes: TSpeedButton;
    btnCaixa: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnConfiguracoes: TSpeedButton;
    btnSair: TSpeedButton;
    imgUserLaranja: TImage;
    pnlBackPrincipal: TPanel;
    pnlRodape: TPanel;
    pnlLicenciado: TPanel;
    pnlConteudoLicenca: TPanel;
    lblLicenciado: TLabel;
    lblTitLicenciado: TLabel;
    pnlEnfeite: TPanel;
    pnlConteudo: TPanel;
    imgBackground: TImage;
    procedure btnFecharClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblTituloEmpresaMouseEnter(Sender: TObject);
    procedure lblTituloEmpresaMouseLeave(Sender: TObject);
    procedure imgUserBrancaMouseEnter(Sender: TObject);
    procedure imgUserLaranjaMouseLeave(Sender: TObject);
  private
     procedure GET_LineMENU(Sender: TObject);
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
begin             //CAIXA
 GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin       //CLIENTES
 GET_LineMENU(sender);
end;

procedure TViewPrincipal.btnConfiguracoesClick(Sender: TObject);
begin    //CONFIG
 GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnFecharClick(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
begin    //FORNECEDORES
 GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin     //PRODUTOS
GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin      //SAIR
Application.Terminate;

end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin  //SHOW
GET_LineMENU(btnClientes);
end;

procedure TViewPrincipal.GET_LineMENU(Sender: TObject);
begin
  ShapeMenu.Left := 0;
  ShapeMenu.Top := 0;
  ShapeMenu.Height := TSpeedButton(Sender).Height;
  ShapeMenu.Top := TSpeedButton(Sender).Top;
  pnlShapeMenu.Repaint;
end;

procedure TViewPrincipal.imgUserBrancaMouseEnter(Sender: TObject);
begin
  imgUserBranca.Visible := False;
  imgUserLaranja.Visible := True;
end;

procedure TViewPrincipal.imgUserLaranjaMouseLeave(Sender: TObject);
begin
  imgUserBranca.Visible := True;
  imgUserLaranja.Visible := False;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseEnter(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := $000FBBD9;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseLeave(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := clWhite;
end;

end.

