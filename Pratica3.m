%% Laboratório de Sistemas Dinâmicos
% Prática 03
% Data: 01/04/2024
% Autor: Mateus Henrique Teixeira
%% Limpar WorkSpace

clear;
clc;
%% 
% Script Prática 03
%% Ex1 (a)

s = tf('s');

p = s^2+2*s+1;
q = s+1;

u = p*q;

printsys(u.num{1},u.den{1});

%% Ex1 (b)

s = tf('s');

p = s^2+2*s+1;
q = s+1;

u = q/p;

fprintf('Polos: ');
fprintf('%d ', pole(u));

fprintf('\nZeros: ');
fprintf('%d ', zero(u));

%% Ex1 (c)

s = tf('s');

p = s^2+2*s+1;
q = s+1;

disp(evalfr(p,-1));

%% Ex1 (d)

s = tf('s');

p = s^2+2*s+1;
q = s+1;

pzmap(q/p);

%% Ex2 (a)

s = tf('s');
M1 = 1/(s+1);
M2 = 1/(s+3);

T = series(M1,M2);
printsys(T.num{1},T.den{1});

%% Ex2 (b)

t = 0:0.1:10;

y = step(T,t);
plot(t,y);

%% Ex2 (c)

t = 0:0.1:10;

y1 = step(M1,t);
subplot(2,1,1);
plot(t,y1);

y2 = step(M2,t);
subplot(2,1,2);
plot(t,y2);

%% Ex2 (d)

t = 0:0.1:10;


