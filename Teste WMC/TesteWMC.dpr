program TesteWMC;

uses
  Vcl.Forms,
  Unit_Principal in 'Unit_Principal.pas' {Form_Principal},
  Unit_Con_Colaboradores in 'Unit_Con_Colaboradores.pas' {Form_Con_Colaboradores},
  Unit_Cad_Colaboradores in 'Unit_Cad_Colaboradores.pas' {Form_Cad_Colaboradores};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Principal, Form_Principal);
  Application.Run;
end.
