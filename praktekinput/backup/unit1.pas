unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnsimpan: TButton;
    btnReset: TButton;
    cbkota: TComboBox;
    cbxFoto: TCheckBox;
    cbxKTP: TCheckBox;
    cbxijazah: TCheckBox;
    Edit1: TEdit;
    Memo1: TMemo;
    rgjeniskelamin: TRadioGroup;
    procedure btnResetClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure buttonClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnsimpanClick(Sender: TObject);
begin
 memo1.lines.add(edit1.Text);

 if(rgjeniskelamin.itemIndex=0) then
 begin
   memo1.lines.add('laki-laki');
 end
 else  if(rgjeniskelamin.itemIndex=1) then
 begin
    memo1.lines.add('perempuan');
 end;

 memo1.lines.add(cbkota.text);

   if(cbxFoto.Checked)then
   memo1.lines.add('Foto ada');

   if(cbxKTP.Checked)then
   memo1.lines.add('KTP ada');

   if(cbxijazah.Checked)then
   memo1.lines.add('ijazah ada');
end;

procedure TForm1.btnResetClick(Sender: TObject);
begin
  edit1.text:='';
  memo1.clear;
  rgjeniskelamin.itemIndex:=-1;
  cbkota.itemIndex:=1;
  cbkota.text:='';
end;

procedure TForm1.buttonClick(Sender: TObject);
begin

end;

end.

