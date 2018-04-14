unit helloyou;

interface

type
  THelloYou = class(TObject)
    public
      constructor Create;
      function helloyou: String;
  end;

implementation

constructor THelloYou.Create;
begin
  
end;

function THelloYou.helloyou: String;
begin
    Result := 'Hello YOU again';
end;
end.