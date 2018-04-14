library greetings;

uses 
  helloworld,
  helloyou;

function SayHi():String;

var
  miClase: THelloWorld;
  otraClase: THelloYou;
  output: String;
begin
  miClase := THelloWorld.Create;
  otraClase := THelloYou.Create;
  try
    output := miClase.helloworld + otraClase.helloyou;
  finally
    miClase.Free;
    otraClase.Free;
  end;

  Result := output;
end;

exports 
  SayHi;

end.