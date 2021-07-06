% Calculo de dos Propiedades Térmicas para algunas sustancias
% T en grados celcius, k en W/m*°C, Cp en kJ/kg*°C

 function [k,Cp]=proptermicas(T,sust)

switch sust 
    case 'agua'
        k = 3.485e-08.*T^3 -1.353e-05.*T^2 + 0.002049.*T + 0.4781; 
        Cp = -1.58e-07*T.^3 +  3.87e-05*T.^2 -0.002283*T + 4.216;
        
    case  'metano'
        k = 1.671e-07*T.^2 + 0.0001302*T + 0.03057;
        Cp = -2.182e-08 *T.^3 + 1.19e-05*T.^2 + 0.001525*T + 2.184;
        
    case  'aire'
        k = 1.397e-11*T.^3 -3.432e-08*T.^2 + 7.708e-05*T + 0.02425;
        Cp = 1.353e-13*T.^4 -3.464e-10*T.^3 + 1.813e-07*T.^2 + 0.0002026*T + 1.04;
        
    case 'cobre'
        k = 2.531e-13*T.^4 -5.063e-10*T.^3 + 3.063e-07*T.^2 -0.0001152*T + 0.4022;
        Cp = 1.361e-09*T.^3 -8.266e-07*T.^2 + 0.0002403*T + 0.3791;

    otherwise
        error('La sustancia no esta en la base de datos')
end
