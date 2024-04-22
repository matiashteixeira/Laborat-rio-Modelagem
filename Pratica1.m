%% Laboratório de Sistemas Dinâmicos
% Prática 01
% Data: 11/03/2024
% Autor: Mateus Henrique Teixeira
%% Limpar WorkSpace
clear;
close all;
clc;
%% 
% Script Prática 01
%% Ex. 01 (a)

A = [ 1 1 6; 5 -2 1; 8 2 -3];
B = [ 1 9; -5 -1; 9 1];

[linha, coluna] = size(B);

if(linha == coluna)
    disp('Matriz Quadrada');
else
    disp('Matriz não é quadrada');
end

%% Ex. 01 (b)

A = [ 1 1 6; 5 -2 1; 8 2 -3];
B = [ 2 9; -5 -1; 9 2];

y = A;

[linha, coluna] = size(y);
x = false;

for i = 1:linha
    for j = 1:coluna
        if(y(i,j) == 2)
            disp(['possui 2 na linha ',int2str(i),' coluna ',int2str(j)]);
            x = true;
        end
    end
end

if(x == false)
    disp('não possui 2');
end
    
%% Ex. 01 (c)

A = [ 1 1 6; 5 -2 1; 8 2 -3];
B = [ 2 9; -5 -1; 9 2];

y = B;

[linha, coluna] = size(y);
x = false;

for i = 1:linha
    for j = 1:coluna
        if(y(i,j) < 0)
            disp(['possui número negativo na linha ',int2str(i),' coluna ',int2str(j)]);
            x = true;
        end
    end
end

if(x == false)
    disp('não possui número negativo');
end

%% Ex. 02

w = 2*pi*3;
t = -10:0.01:10;
A = exp(-2*t);

y = A.*sin(w*t);

plot(t,y,'LineWidth',2);
title('Senoide Exponencialmente Convergente');
xlabel('Tempo (s)');
ylabel('Amplitude');
grid on;

%% Ex. 03

t = -100:100;

x = cos(t).*sin(20*t);

plot(t,x,'LineWidth',1.5);
title('Gráfico da função: cos(t)*sin(20t)');
xlabel('Tempo (s)');
ylabel('Amplitude');

%% Ex. 04 (a)

[R, P, K] = residue([6 6],[1 4.59 0.5798 0]);

disp('R: ');
disp(R);
disp('P: ');
disp(P);
disp('K: ');
disp(K);

%% Ex. 04 (b)

[R, P, K] = residue([1 2 3],[1 3 3 1]);

disp('R: ');
disp(R);
disp('P: ');
disp(P);
disp('K: ');
disp(K);

