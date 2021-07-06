%Se obtiene el nombre, horas trabajadas, tarifa y
%se almacenan en sus variables respectivas
n = 'Nombre: ';
nombre = input(n, 's');

h = 'Horas Laboradas: ';
horas = input(h);

t = 'Tarifa x Hora: ';
tarifa = input(t);

% condicional para calcular el salario bruto dependiendo de las horas
% laboradas
if horas <= 35
    SBruto = horas * tarifa;
else
   horasextras = horas - 35;
    SBruto = horas * tarifa + (horasextras * (1.5  * tarifa));
end

% condicion para determinar los impuestos basados en el salario bruto

if SBruto <= 2000
    Impuestos = 0;
else 
    if SBruto <= 2200
        Impuestos = (SBruto - 2000) * 0.20;
    else
        Impuestos = 220 * 0.20 + (SBruto - 2200) * 0.30;
    end
end

% Calculo del salario neto
SNeto = (SBruto - Impuestos);

clc
% se muestra por pantalla los resultados obtenidos
fprintf('Nombre: %s \nSalario Bruto: %f\n',nombre,SBruto);
fprintf('Impuestos: %f \nSalario Neto: %f\n',Impuestos,SNeto);
