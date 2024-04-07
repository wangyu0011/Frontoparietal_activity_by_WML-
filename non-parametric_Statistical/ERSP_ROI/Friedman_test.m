%%

load('ROI_mem_high1.mat');
H=DATA;
load('ROI_mem_middle1.mat');
M=DATA;
load('ROI_mem_low1.mat');
L=DATA;
%%%%%%%%%%%%%%%%%%%%%
A=[];
for k=1:6
DATA=[H(:,k),M(:,k),L(:,k)];
[p,tl,stats] = friedman(DATA);
A(k)=p;
end

results11=multcompare(stats);


[h, crit_p, adj_ci_cvrg, adj_p]=fdr_bh(A,.05,'pdep','yes');

