unit untSplash;

interface

uses
     Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
     Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
     TfrmSplash = class(TForm)
          Timer1: TTimer;
          Label1: TLabel;
          procedure Timer1Timer(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     frmSplash: TfrmSplash;

implementation

{$R *.dfm}

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
     Close;
end;

end.
