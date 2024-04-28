%% Laboratório de Sistemas Dinâmicos
% Prática 05
% Data: 15/04/2024
% Autor: Mateus Henrique Teixeira
%% Limpar WorkSpace
clear;
clc;
%% 
% Script Prática 05
%% Ex1

num = [1];
den = [0.1 1];
bode(num,den);

%% Ex2

num = [10];
den = [0.1 1];
bode(num,den);

%% Ex3

num = [1];
den = [0.1 1 0];
bode(num,den);

%% Ex4

num = [1 0];
den = [0.1 1];
bode(num,den);

%% Ex5 (a)

num = [2 2];
den = [1 2];
bode(num,den);

%% Ex5 (b)

num = [1];
den = [1 0.1 1];
bode(num,den);

%% Ex5 (c)

num = [2 -2];
den = [1 2];
bode(num,den);

%% Ex5 (d)

num = [-2 2];
den = [1 2];
bode(num,den);

%% Ex5 (e)

num = [-10 10];
den = conv([1 2],[1 5]);
bode(num,den);