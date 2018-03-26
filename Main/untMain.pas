unit untMain;

interface

uses
     Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
     TfrmMain = class(TForm)
          Button1: TButton;
          procedure FormShow(Sender: TObject);
          procedure Button1Click(Sender: TObject);
     private
          { Private declarations }
          PackageModel: HModule;
          PackageModule01: HModule;
     public
          { Public declarations }
     end;

var
     frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.Button1Click(Sender: TObject);
var
     AClass: TPersistentClass;
begin
     if PackageModule01 <> 0 then
     begin
          AClass := GetClass('TfrmMod01');

          if AClass <> nil then
               with TComponentClass(AClass).Create(Application) as TCustomForm do
               begin
                    ShowModal;
               end;
     end;
     //
     //UnLoadPackage(PackageModule01);
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
     PackageModel := LoadPackage('PkgModel.bpl');
     //
     Application.ProcessMessages;
     //
     PackageModule01 := LoadPackage('Mod01.bpl');
end;

end.
