clear
close all
clc
syms x
fprintf('Programa para calcular polinomios por diferencias divididas\n')
fprintf('Ingrese la opcion siguiente: \n')
fprintf('1. Nodos y funcion\n2. coordenadas\n')
control=input('');
switch (control)
    case control==1
        nod=[];
fnod=[];
cont=0;
        fu=input('Ingrese la funcion: ');
        cont=input('¿Cuantos nodos desea ingresar?: ');
        for i=1:cont
            fprintf('Nodo %d: ',i)
            nod(i)=input('');
        end
        for j=1:cont
            fnod(j)=double(subs(fu,nod(j)));
        end
        dd=ddiv(nod,fnod,cont);
  otherwise
        nod=[];
fnod=[];
        cont=input('¿Cuantas coordeneadas desea ingresar: ');
        for i=1:cont
            fprintf('Ingrese x%d: ',i)
            nod(i)=input('');
        end
         for j=1:cont
            fprintf('Ingrese y%d: ',j)
            fnod(j)=input('');
         end
        [dd,pol]=ddiv(nod,fnod,cont);
    poli=str2mat(pol);
end




