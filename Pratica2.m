%% Laboratório de Sistemas Dinâmicos
% Prática 02
% Data: 25/03/2024
% Autor: Mateus Henrique Teixeira
%% Limpar WorkSpace
clear;
close all;
clc;
%% 
% Script Prática 02
%% Ex. 01

syms a b c d;
M = [a b; c d];

D = det(M);
I = inv(M);
T = trace(M);

disp(D);
disp(I);
disp(T);

%% Ex. 02 (a)

n = 0:10;
x = (-1).^n;

plot(n,x);
stem(n,x,'k');
ylabel('x[n]');

%% Ex. 02 (b)

n = 0:0.2:10;
x = cos((pi/12).*n+pi/4);

plot(n,x);
stem(n,x,'k');
ylabel('x[n]');

%% Ex. 03

y = zeros(1,10);
y(1) = 10;
x = 2;

for n = 2:10
    y(n) = x + 2*y(n-1);
end

disp(y);

%% Ex. 04

y = zeros(1,10);
y(1) = 1;
y(2) = 2;

k = 0;
for n = 3:10
    y(n) = k - 2*(k-1) + y(n-1) - 0.24*y(n-2);
    k = k+1;
end

disp(y);

t = 0:9;
stem(t,y);