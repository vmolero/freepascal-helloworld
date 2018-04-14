{
    Compile: $ fpc -S2 -XD main.dpr
    It compiles but it doesn't work (yet)
}
program main;

function diHola():String; external 'dist\greetings.dll';
begin
    WriteLn(diHola);
    WriteLn('Cucu');
    ReadLn;
end.