library greetings;

uses 
  helloworld,
  helloyou;

procedure SayHi;

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
  
  WriteLn(output);
  end;
end;

exports 
  SayHi;

end.