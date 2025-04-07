{.- Se tienen N pares de datos que corresponden a largo y ancho de N rectángulos. Calcular  el área de aquellos
rectángulos cuyo perímetro resulte mayor que un dato K.
Indicar para N = 4 y K = 18 qué cálculos realizará sobre los siguientes datos:
6 3
5 8
4 6
10 2}

program G1_3;

const
  K = 18;
  N = 4;

function CalculaPerimetro(largo: real; ancho: real): real;
begin
    CalculaPerimetro := largo * 2 +  ancho * 2;
end;

function CalculaArea(largo: real; ancho: real): real;
begin
    CalculaArea := largo * ancho;
end;

var
  ancho, largo, perimetro, area: real;
  i: byte;
  txt: text;
begin
    assign(txt, 'txtG1_3.txt');
    reset(txt);

    writeln('K = ', K, '.');

    for i := 1 to N do
        begin
            area := 0;
            perimetro := 0;

            readln(txt, largo, ancho);

            perimetro := CalculaPerimetro(largo, ancho);
            writeln('Rectangulo ', i, ': Largo: ', largo:0:2, ', Ancho: ', ancho:0:2, ', Perimetro: ', perimetro:0:2, '.');

            if perimetro > K then
                begin
                    area := CalculaArea(largo, ancho);
                    writeln('Como el perimetro es mayor a K, el area es: ', area:0:2, '.');
                end
            else
                writeln('Como el perimetro no supera a K, no calculo su area.');

            writeln();

        end;

    close(txt);
    readln();
end.

