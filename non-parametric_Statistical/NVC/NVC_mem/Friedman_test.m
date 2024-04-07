%%
load('NVC_mem_alpha_HbO.mat');
[p,tl,stats] = friedman(DATA');
results11=multcompare(stats);
