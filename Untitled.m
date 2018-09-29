clear
close all
clc
disp('Programa para calcular polinomios por diferencias divididas\n')
disp('Ingrese la opcion siguiente: \n')
disp('1. Nodos y funcion\n2. coordenadas')
control=input('');
switch (control)
    case control==1
        fu=input('Ingrese la funcion: ');
        cont=input('¿Cuantos nodos desea ingresar?: ');
        for i=1:cont
            fprintf('Nodo %d: ',i)
            nod(i)=input('');
        end
        for j=1:cont
            fnod(j)=double(subs(fu,nod(i)));
        end
    case control==2
        cont=input('¿Cuantas coordeneadas desea ingresar: ');
        for i=1:cont
            fprintf('Ingrese x%d: ',i)
            nod(i)=input('');
        end
         for j=1:cont
            fprintf('Ingrese y%d: ',j)
            fnod(j)=input('');
        end
    otherwise
end
