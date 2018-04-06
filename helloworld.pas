unit helloworld;

interface

type
  THelloWorld = class(TObject)
    public
      constructor Create;
      function helloworld: String;
  end;

implementation

constructor THelloWorld.Create;
begin
  
end;

function THelloWorld.helloworld: String;
begin
    Result := 'Hello world';
end;
end.