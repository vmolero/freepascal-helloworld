program main;

uses helloworld;
var
  miClase: THelloWorld;
begin
  miClase := THelloWorld.Create;
  try
    WriteLn(miClase.helloworld);  
  finally
    miClase.Free;
  end;
end.