%% cose utili
clear; clc; close all;

%data1 = readtable("data.xlsx",'ReadVariableNames',false);
%x1 = data1(1:end,1);
%y1 = data1(1:end,2);
%z1 = data1(1:end,4);
%x1=table2array(x1); y1=table2array(y1); z1=table2array(z1); 
%x1=str2double(x1); y1=str2double(y1); z1=str2double(z1);

%oppure

data2 = dlmread('data.csv',',',0,0); %('data.csv',',',1,0); 1,0 significa non considerare la prima riga, per es se c'? una legenda

x2 = data2(1:20,1);
y2 = data2(1:20,2);
dx2 = data2(1:20,3);
dy2 = data2(1:20,4);

figure();
plot(x2,y2,'LineStyle','none','Marker','o','MarkerSize',4,'LineWidth',2);
hold on
errorbar(x2,y2,dy2,'o','MarkerSize',2,'MarkerEdgeColor','r','MarkerFaceColor','r','Color','r');
xlabel("V [V]");
ylabel("i [mA]");
title("Title");

grid on;


%fitting
fit1A = regressione_lineare(x2,y2,dy2);
%fit plot
x = -0.2:1e-01:21;
plot(x,fit1A.m*x+fit1A.b,'-','Color','b','LineWidth',1.2);
legend("data","data & err","fit")


%% esp0







