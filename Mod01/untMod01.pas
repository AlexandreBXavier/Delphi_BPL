unit untMod01;

interface

uses
     Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
     Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, untModel, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls,
     System.ImageList, Vcl.ImgList;

type
     TfrmMod01 = class(TfrmModelo)
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     frmMod01: TfrmMod01;

implementation

{$R *.dfm}

uses untDM;

initialization

RegisterClass(TfrmMod01);

finalization

UnRegisterClass(TfrmMod01);

end.
