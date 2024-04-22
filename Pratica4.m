%% Laboratório de Sistemas Dinâmicos
% Prática 04
% Data: 08/04/2024
% Autor: Mateus Henrique Teixeira
%% Limpar WorkSpace

clear;
clc;

%% Ex1 (a)

z = zpk([],[j -j],[1]);
step(z)

%% Ex1 (b)

z = zpk([],[-1+j -1-j],[1]);
step(z)

%% Ex1 (c)

z = zpk([],[-1 -1],[1]);
step(z)


%% Ex1 (d)

z = zpk([],[-2 -4],[1]);
step(z)

%% Ex2

s = tf('s');

k = [10 100 400];

    for n = 1:3
        y{n} = 10*k(n)/(s^2+20*s+k(n)); 
    end

ltiview(y{1},y{2},y{3});

%% Ex3 (a)

s = tf('s');

x = [0.1 1 10];

    for n = 1:3
        y{n} = series(1/(s+1),x(n)/(s+x(n))); 
    end

ltiview(y{1},y{2},y{3});

%% Ex3 (b)

