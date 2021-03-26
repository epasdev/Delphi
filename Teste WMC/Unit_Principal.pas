unit Unit_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, Data.DBXFirebird, Data.SqlExpr;

type
  TForm_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    SQLConnection1: TSQLConnection;
    procedure Clientes1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Principal: TForm_Principal;

implementation

{$R *.dfm}

uses Unit_Con_Colaboradores;

procedure TForm_Principal.Clientes1Click(Sender: TObject);
begin
  if Form_Con_Colaboradores = nil then
    Application.CreateForm(TForm_Con_Colaboradores,Form_Con_Colaboradores);
  with Form_Con_Colaboradores do begin
    CDS_Colab.Close;
    CDS_Colab.Open;
    Show;
  end;
end;

procedure TForm_Principal.FormCreate(Sender: TObject);
begin
  with SQLConnection1 do begin
    Connected := False;
    Params.Values['Database'] := 'database.fdb';
    Params.Values['User_Name'] := 'SYSDBA';
    Params.Values['Password'] := 'masterkey';
    Connected := True;
  end;
end;

end.
