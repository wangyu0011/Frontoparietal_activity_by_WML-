%%  
load('Ave_ACC_H.mat');
H=DATA;
load('Ave_ACC_M.mat');
M=DATA;
load('Ave_ACC_L.mat');
L=DATA;
%%%%%%%%%%%%%%%%%%%%%
DATA=zeros(1,69);
fact=ones(1,23);
DATA=[H,M,L];
save('RT_data.mat','DATA');
[p,tl,stats] = friedman(DATA);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
results11=multcompare(stats);






