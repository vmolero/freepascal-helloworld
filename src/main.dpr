program main;

uses 
  helloworld,
  helloyou;
var
  miClase: THelloWorld;
  otraClase: THelloYou;
begin
  miClase := THelloWorld.Create;
  otraClase := THelloYou.Create;
  try
    WriteLn(miClase.helloworld + ' ');
    WriteLn(otraClase.helloyou);
  finally
    miClase.Free;
    otraClase.Free;
  end;
end.