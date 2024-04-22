%% Laboratório de Sistemas Dinâmicos
% Prática 05
% Data: 15/04/2024
% Autor: Mateus Henrique Teixeira
%% Limpar WorkSpace
clear;
close all;
clc;
%% 
% Script Prática 05

%% Ex1

num = [1 0];
%%den = conv([1 0.1],[1 3 25]);
den = [1];
bode(num,den);