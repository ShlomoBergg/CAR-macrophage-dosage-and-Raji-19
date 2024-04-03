clear all
close all
clc

rho =0.9032;
beta = 7.3156e+06;
replic_para=[rho,beta];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% kappa=7.732577476;
% eta=7.316686482;
% gamma=0.368985059;
kappa=5.793;
eta=4.131;
gamma=2.02;
lysing_para=[kappa,eta,gamma];

macrophage1=10*10^(5);
endurance1=58;
endurance_time1=linspace(0,endurance1,101);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
macrophage2=0;
endurance2=1;
endurance_time2=linspace(0,endurance2,101);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
macrophage3=0;
endurance3=1;
endurance_time3=linspace(0,endurance3,101);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ini_1=[0.1*10^(7),macrophage1];
ini_2=[0.3*10^(7),macrophage1];
ini_3=[0.5*10^(7),macrophage1];
ini_4=[0.7*10^(7),macrophage1];

[time_1_A, tumor_esti_1_A] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time1,ini_1);
[time_2_A, tumor_esti_2_A] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time1,ini_2);
[time_3_A, tumor_esti_3_A] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time1,ini_3);
[time_4_A, tumor_esti_4_A] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time1,ini_4);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ini_tumor_esti_1_A=[tumor_esti_1_A(end,1),tumor_esti_1_A(end,2)+macrophage2];
ini_tumor_esti_2_A=[tumor_esti_2_A(end,1),tumor_esti_2_A(end,2)+macrophage2];
ini_tumor_esti_3_A=[tumor_esti_3_A(end,1),tumor_esti_3_A(end,2)+macrophage2];
ini_tumor_esti_4_A=[tumor_esti_4_A(end,1),tumor_esti_4_A(end,2)+macrophage2];

[time_1_B, tumor_esti_1_B] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time2,ini_tumor_esti_1_A);
[time_2_B, tumor_esti_2_B] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time2,ini_tumor_esti_2_A);
[time_3_B, tumor_esti_3_B] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time2,ini_tumor_esti_3_A);
[time_4_B, tumor_esti_4_B] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time2,ini_tumor_esti_4_A);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ini_tumor_esti_1_B=[tumor_esti_1_B(end,1),tumor_esti_1_B(end,2)+macrophage3];
ini_tumor_esti_2_B=[tumor_esti_2_B(end,1),tumor_esti_2_B(end,2)+macrophage3];
ini_tumor_esti_3_B=[tumor_esti_3_B(end,1),tumor_esti_3_B(end,2)+macrophage3];
ini_tumor_esti_4_B=[tumor_esti_4_B(end,1),tumor_esti_4_B(end,2)+macrophage3];

[time_1_C, tumor_esti_1_C] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time3,ini_tumor_esti_1_B);
[time_2_C, tumor_esti_2_C] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time3,ini_tumor_esti_2_B);
[time_3_C, tumor_esti_3_C] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time3,ini_tumor_esti_3_B);
[time_4_C, tumor_esti_4_C] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time3,ini_tumor_esti_4_B);

% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % ini_tumor_esti_1_C=[tumor_esti_1_C(end,1),tumor_esti_1_C(end,2)+macrophage];
% % % ini_tumor_esti_2_C=[tumor_esti_2_C(end,1),tumor_esti_2_C(end,2)+macrophage];
% % % ini_tumor_esti_3_C=[tumor_esti_3_C(end,1),tumor_esti_3_C(end,2)+macrophage];
% % % ini_tumor_esti_4_C=[tumor_esti_4_C(end,1),tumor_esti_4_C(end,2)+macrophage];
% % % 
% % % [time_1_D, tumor_esti_1_D] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_1_C);
% % % [time_2_D, tumor_esti_2_D] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_2_C);
% % % [time_3_D, tumor_esti_3_D] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_3_C);
% % % [time_4_D, tumor_esti_4_D] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_4_C);
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % ini_tumor_esti_1_D=[tumor_esti_1_D(end,1),tumor_esti_1_D(end,2)+macrophage];
% % % ini_tumor_esti_2_D=[tumor_esti_2_D(end,1),tumor_esti_2_D(end,2)+macrophage];
% % % ini_tumor_esti_3_D=[tumor_esti_3_D(end,1),tumor_esti_3_D(end,2)+macrophage];
% % % ini_tumor_esti_4_D=[tumor_esti_4_D(end,1),tumor_esti_4_D(end,2)+macrophage];
% % % 
% % % [time_1_E, tumor_esti_1_E] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_1_D);
% % % [time_2_E, tumor_esti_2_E] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_2_D);
% % % [time_3_E, tumor_esti_3_E] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_3_D);
% % % [time_4_E, tumor_esti_4_E] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_4_D);
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % ini_tumor_esti_1_E=[tumor_esti_1_E(end,1),tumor_esti_1_E(end,2)+macrophage];
% % % ini_tumor_esti_2_E=[tumor_esti_2_E(end,1),tumor_esti_2_E(end,2)+macrophage];
% % % ini_tumor_esti_3_E=[tumor_esti_3_E(end,1),tumor_esti_3_E(end,2)+macrophage];
% % % ini_tumor_esti_4_E=[tumor_esti_4_E(end,1),tumor_esti_4_E(end,2)+macrophage];
% % % 
% % % [time_1_F, tumor_esti_1_F] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_1_E);
% % % [time_2_F, tumor_esti_2_F] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_2_E);
% % % [time_3_F, tumor_esti_3_F] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_3_E);
% % % [time_4_F, tumor_esti_4_F] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_4_E);
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % ini_tumor_esti_1_F=[tumor_esti_1_F(end,1),tumor_esti_1_F(end,2)+macrophage];
% % % ini_tumor_esti_2_F=[tumor_esti_2_F(end,1),tumor_esti_2_F(end,2)+macrophage];
% % % ini_tumor_esti_3_F=[tumor_esti_3_F(end,1),tumor_esti_3_F(end,2)+macrophage];
% % % ini_tumor_esti_4_F=[tumor_esti_4_F(end,1),tumor_esti_4_F(end,2)+macrophage];
% % % 
% % % [time_1_G, tumor_esti_1_G] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_1_F);
% % % [time_2_G, tumor_esti_2_G] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_2_F);
% % % [time_3_G, tumor_esti_3_G] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_3_F);
% % % [time_4_G, tumor_esti_4_G] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_4_F);
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % ini_tumor_esti_1_G=[tumor_esti_1_G(end,1),tumor_esti_1_G(end,2)+macrophage];
% % % ini_tumor_esti_2_G=[tumor_esti_2_G(end,1),tumor_esti_2_G(end,2)+macrophage];
% % % ini_tumor_esti_3_G=[tumor_esti_3_G(end,1),tumor_esti_3_G(end,2)+macrophage];
% % % ini_tumor_esti_4_G=[tumor_esti_4_G(end,1),tumor_esti_4_G(end,2)+macrophage];
% % % 
% % % [time_1_H, tumor_esti_1_H] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_1_G);
% % % [time_2_H, tumor_esti_2_H] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_2_G);
% % % [time_3_H, tumor_esti_3_H] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_3_G);
% % % [time_4_H, tumor_esti_4_H] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_4_G);
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % ini_tumor_esti_1_H=[tumor_esti_1_H(end,1),tumor_esti_1_H(end,2)+macrophage];
% % % ini_tumor_esti_2_H=[tumor_esti_2_H(end,1),tumor_esti_2_H(end,2)+macrophage];
% % % ini_tumor_esti_3_H=[tumor_esti_3_H(end,1),tumor_esti_3_H(end,2)+macrophage];
% % % ini_tumor_esti_4_H=[tumor_esti_4_H(end,1),tumor_esti_4_H(end,2)+macrophage];
% % % 
% % % [time_1_I, tumor_esti_1_I] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_1_H);
% % % [time_2_I, tumor_esti_2_I] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_2_H);
% % % [time_3_I, tumor_esti_3_I] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_3_H);
% % % [time_4_I, tumor_esti_4_I] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_4_H);
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % ini_tumor_esti_1_I=[tumor_esti_1_I(end,1),tumor_esti_1_I(end,2)+macrophage];
% % % ini_tumor_esti_2_I=[tumor_esti_2_I(end,1),tumor_esti_2_I(end,2)+macrophage];
% % % ini_tumor_esti_3_I=[tumor_esti_3_I(end,1),tumor_esti_3_I(end,2)+macrophage];
% % % ini_tumor_esti_4_I=[tumor_esti_4_I(end,1),tumor_esti_4_I(end,2)+macrophage];
% % % 
% % % [time_1_J, tumor_esti_1_J] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_1_I);
% % % [time_2_J, tumor_esti_2_J] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_2_I);
% % % [time_3_J, tumor_esti_3_J] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_3_I);
% % % [time_4_J, tumor_esti_4_J] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_4_I);
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % ini_tumor_esti_1_J=[tumor_esti_1_J(end,1),tumor_esti_1_J(end,2)+macrophage];
% % % ini_tumor_esti_2_J=[tumor_esti_2_J(end,1),tumor_esti_2_J(end,2)+macrophage];
% % % ini_tumor_esti_3_J=[tumor_esti_3_J(end,1),tumor_esti_3_J(end,2)+macrophage];
% % % ini_tumor_esti_4_J=[tumor_esti_4_J(end,1),tumor_esti_4_J(end,2)+macrophage];
% % % 
% % % [time_1_K, tumor_esti_1_K] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_1_J);
% % % [time_2_K, tumor_esti_2_K] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_2_J);
% % % [time_3_K, tumor_esti_3_K] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_3_J);
% % % [time_4_K, tumor_esti_4_K] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_4_J);
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % ini_tumor_esti_1_K=[tumor_esti_1_K(end,1),tumor_esti_1_K(end,2)+macrophage];
% % % ini_tumor_esti_2_K=[tumor_esti_2_K(end,1),tumor_esti_2_K(end,2)+macrophage];
% % % ini_tumor_esti_3_K=[tumor_esti_3_K(end,1),tumor_esti_3_K(end,2)+macrophage];
% % % ini_tumor_esti_4_K=[tumor_esti_4_K(end,1),tumor_esti_4_K(end,2)+macrophage];
% % % 
% % % [time_1_L, tumor_esti_1_L] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_1_K);
% % % [time_2_L, tumor_esti_2_L] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_2_K);
% % % [time_3_L, tumor_esti_3_L] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_3_K);
% % % [time_4_L, tumor_esti_4_L] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),endurance_time,ini_tumor_esti_4_K);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
time_1=[time_1_A;endurance1+time_1_B;endurance1+endurance2+time_1_C];%;3*endurance+time_1_D4*endurance+time_1_E;5*endurance+time_1_F;
% %     6*endurance+time_1_G;7*endurance+time_1_H;8*endurance+time_1_I;9*endurance+time_1_J;10*endurance+time_1_K;11*endurance+time_1_L];
time_2=[time_2_A;endurance1+time_2_B;endurance1+endurance2+time_2_C];%;3*endurance+time_2_D;4*endurance+time_2_E;5*endurance+time_2_F;
%     6*endurance+time_2_G;7*endurance+time_2_H;8*endurance+time_2_I;9*endurance+time_2_J;10*endurance+time_2_K;11*endurance+time_2_L];
time_3=[time_3_A;endurance1+time_3_B;endurance1+endurance2+time_3_C];%;3*endurance+time_3_D;4*endurance+time_3_E;5*endurance+time_3_F;
%     6*endurance+time_3_G;7*endurance+time_3_H;8*endurance+time_3_I;9*endurance+time_3_J;10*endurance+time_3_K;11*endurance+time_3_L];
time_4=[time_4_A;endurance1+time_4_B;endurance1+endurance2+time_4_C];%;3*endurance+time_4_D;4*endurance+time_4_E;5*endurance+time_4_F;
%     6*endurance+time_4_G;7*endurance+time_4_H;8*endurance+time_4_I;9*endurance+time_4_J;10*endurance+time_4_K;11*endurance+time_4_L];

tumor_esti_1=[tumor_esti_1_A;tumor_esti_1_B;tumor_esti_1_C];%;tumor_esti_1_D;tumor_esti_1_E;
%     tumor_esti_1_F,;tumor_esti_1_G;tumor_esti_1_H;tumor_esti_1_I;tumor_esti_1_J;tumor_esti_1_K;tumor_esti_1_L];
tumor_esti_2=[tumor_esti_2_A;tumor_esti_2_B;tumor_esti_2_C];%;tumor_esti_2_D;tumor_esti_2_E;
%     tumor_esti_2_F;tumor_esti_2_G;tumor_esti_2_H;tumor_esti_2_I;tumor_esti_2_J;tumor_esti_2_K;tumor_esti_2_L];
tumor_esti_3=[tumor_esti_3_A;tumor_esti_3_B;tumor_esti_3_C];%;tumor_esti_3_D;tumor_esti_3_E;
%     tumor_esti_3_F;tumor_esti_3_G;tumor_esti_3_H;tumor_esti_3_I;tumor_esti_3_J;tumor_esti_3_K;tumor_esti_3_L];
tumor_esti_4=[tumor_esti_4_A;tumor_esti_4_B;tumor_esti_4_C];%;tumor_esti_4_D;tumor_esti_4_E;
%     tumor_esti_4_F;tumor_esti_4_G;tumor_esti_4_H;tumor_esti_4_I;tumor_esti_4_J;tumor_esti_4_K;tumor_esti_4_L];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure
hold on
plot(time_1,tumor_esti_1(:,1),'b')
plot(time_2,tumor_esti_2(:,1),'r')
plot(time_3,tumor_esti_3(:,1),'g')
plot(time_4,tumor_esti_4(:,1),'m')
ylabel('Raji cell concentration (log(cells/ml))')
xlabel('Days post treatment')
axis([0 30 0 8*10^(6)])
hold off

figure
hold on
plot(time_1,tumor_esti_1(:,2),'b')
plot(time_2,tumor_esti_2(:,2),'r')
plot(time_3,tumor_esti_3(:,2),'g')
plot(time_4,tumor_esti_4(:,2),'m')
ylabel('Raji cell concentration (log(cells/ml))')
xlabel('Days post treatment')
axis([0 60 0 10^(6)])
hold off






















