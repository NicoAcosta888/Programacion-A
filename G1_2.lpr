{- Dada una fecha (día, mes, año) indicar a que estación del año pertenece (primavera, verano, otoño, invierno).
Responder los resultados obtenidos para cada uno de los siguientes datos:
a. 01 12 1989
b. 29 02 2004
c. 21 06 2005
d. 29 02 2000
e. 20 09 1999
}

program G1_2;
var
  dia, mes, inciso: string[2];
  fecha: string[4];
  c: char;
  txt: text;

begin
    assign(txt, 'txtG1_2.txt');
    reset(txt);

    fecha := '';
    while not eof(txt) do
    begin
        readln(txt,inciso, c, dia, c, mes);

        fecha := mes + dia;
        if fecha = '0229' then
            writeln(inciso, ' Verano.')
            else if ((fecha >= '1221') and (fecha <= '1231')) or ((fecha >= '0101') and (fecha < '0321')) then
                     writeln(inciso, ' Verano.')
                 else if fecha < '0621' then
                          writeln(inciso, ' Otonio.')
                      else if fecha < '0921' then
                               writeln(inciso, ' Invierno.')
                           else
                               writeln(inciso, ' Primavera.');
    end;

    close(txt);
    readln();
end.

