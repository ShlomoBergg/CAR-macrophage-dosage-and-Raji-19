clear all
close all
clc

rho =0.9032;
beta = 7.3156e+06;
replic_para=[rho,beta];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

kappa=5.793;
eta=4.131;
gamma=2.02;
killing_para=[kappa,eta,gamma];


n=2.0*10^(6);
m=10^(3)+1;
effector_con=linspace(0,n,m);
[C2, C1,C0,Delta]=bifurcation_function(replic_para,killing_para,effector_con);

for i=1:m
if Delta(i)<0
    Delta(i)=0, C1(i)=0, C0(i)=0;
    
end
end 

V1=(-C1-sqrt(Delta))./(2.*C2);
V2=(-C1+sqrt(Delta))./(2.*C2);



figure 
% target cells
hold on
plot(effector_con,V1,'c')
plot(effector_con,V2,'k')

plot(3*10^(5),0.1*10^(7),'bo', 3*10^(5),0.3*10^(7),'ro',3*10^(5),0.5*10^(7),'go', 3*10^(5),0.7*10^(7),'mo')
plot(10*10^(5),0.1*10^(7),'bo', 10*10^(5),0.3*10^(7),'ro',10*10^(5),0.5*10^(7),'go', 10*10^(5),0.7*10^(7),'mo')
plot(19*10^(5),0.1*10^(7),'bo', 19*10^(5),0.3*10^(7),'ro',19*10^(5),0.5*10^(7),'go', 19*10^(5),0.7*10^(7),'mo')
% % plot(3*10^(4),0.2*10^(7),'bo', 3*10^(4),0.4*10^(7),'ro',3*10^(4),0.6*10^(7),'go', 3*10^(4),0.8*10^(7),'mo')
% % % plot(4*10^(4),0.2*10^(7),'bo', 4*10^(4),0.4*10^(7),'ro',4*10^(4),0.6*10^(7),'go', 4*10^(4),0.8*10^(7),'mo')
axis([0 n 0 8*10^(6)])
ylabel('Raji cell concentration')
xlabel('CAR Macrophage concentration (cells/ml)')
hold off






















