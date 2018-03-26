unit untModel;

interface

uses
     Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
     Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, System.ImageList, Vcl.ImgList;

type
     TfrmModelo = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
          procedure Button1Click(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     frmModelo: TfrmModelo;

implementation

{$R *.dfm}

procedure TfrmModelo.Button1Click(Sender: TObject);
begin
     Close;
end;

procedure TfrmModelo.Button2Click(Sender: TObject);
begin
     ShowMessage(Edit1.Text);
end;

procedure TfrmModelo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

end.
