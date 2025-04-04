{- Se desea calcular el impuesto a pagar según la ganancia anual de acuerdo a la siguiente tabla:

GANUAL < 10000 IMPU = 0
10000 <= GANUAL < 15000 IMPU = 2% de (GANUAL - 10000)
15000 <= GANUAL IMPU = 300 + 5% de (GANUAL - 15000)

Indicar para cada una de los siguientes valores de ganancia, si es correcto el impuesto que figura a la derecha.
Justificar.

a. 10000 0
b. 20000 305
c. 8000 0
d. 13000 60}

program G1_1;
var
  txt : text;
  gAnual, resEsperado, presuntoResultado: real;
  inciso: string[2];
begin
    assign(txt, 'txtG1_1.txt');
    reset(txt);

    while not eof(txt) do
    begin
        resEsperado := 0;

        readln(txt, inciso, gAnual, presuntoResultado);

        if (gAnual >= 10000) and (gAnual < 15000) then
           resEsperado := (gAnual - 10000)*0.02
        else if gAnual >= 15000 then
           resEsperado := 300 + (gAnual - 15000)*0.05;

        if resEsperado = presuntoResultado then
            writeln(inciso, ' El resultado es correcto! Resultado: ', resEsperado:0:2)
        else
            writeln(inciso, ' El resultado es incorrecto... Resultado esperado: ', resEsperado:0:2, ' Presunto resultado: ', presuntoResultado:0:2);
    end;

    close(txt);
    readln();

end.

