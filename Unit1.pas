unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    UCOnvert: TButton;
    Memo3: TMemo;
    procedure UCOnvertClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function UCS4CharToUnicodeString(Ch: UCS4Char): UnicodeString;
var
  S : UCS4String;
begin
  SetLength(S, 2);
  S[0] := Ch;
  S[1] := 0;
  Result := UCS4StringToUnicodeString(S);
end;

procedure TForm1.UCOnvertClick(Sender: TObject);
var S : string;
begin
  S := Memo1.Text;
  S := StringReplace(S,'\u','\$',[rfReplaceAll]);
  Memo2.Text :=  UCS4CharToUnicodeString($20AC);//UCS4Char(s));

end;

end.
