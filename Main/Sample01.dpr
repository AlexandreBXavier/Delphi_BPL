program Sample01;

uses
  System.Classes,
  System.SysUtils,
  Winapi.Windows,
  Vcl.Themes,
  Vcl.Styles,
  Vcl.Dialogs,
  Vcl.Forms,
  untDataModule in 'untDataModule.pas' {frmDataModule: TDataModule},
  untMain in 'untMain.pas' {frmMain},
  untSplash in 'untSplash.pas' {frmSplash};

{$R *.res}
{$IF defined(VER220) or defined(VER210) or defined(VER185) or defined(VER150)}
{$R WindowsXP.res}
{$IFEND}

var
     SystemName: PChar;

begin
     if (ParamStr(1) = 'Restart') then
          SystemName := 'EXE BPL - Restart'
     else
          SystemName := 'EXE BPL';
     //
     CreateMutex(Nil, False, SystemName);
     // Verificar se o executável já foi iniciado...
     if (GetLastError <> ERROR_ALREADY_EXISTS) then
     begin
          Application.Initialize;
          Application.MainFormOnTaskbar := True;
          Application.Title := 'EXE BPL';
          TStyleManager.TrySetStyle('Windows10');
          //
          try
               Application.CreateForm(TfrmDataModule, frmDataModule);
  Application.CreateForm(TfrmMain, frmMain);
  Application.ProcessMessages;
               //
               try
                    frmSplash := TFrmSplash.Create(Application);
                    //
                    frmSplash.ShowModal;
               finally
                    frmSplash.Close
               end;
          finally
               Application.Run;
          end;
     end;

end.
