%%
PATH1='/.../MI_fNIRS/';
PATH2='/.../MI_test/';
PATH='/.../';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
H=load([PATH1,'ROI_new12_MI_HbO_H.mat']);
NIRS=H.data;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
H=load([PATH2,'ROI_High_mat_beta.mat']);
EEG=H.data;
[x1,x2] = corr(NIRS',EEG');
rho=zeros(16,1);
for i=1:16
    rho(i)=x1(i,i);
end
pval=zeros(16,1);
for i=1:16
    pval(i)=x2(i,i);
end
save([PATH,'mat_High_beta_HbO_rho.mat'],'rho');
save([PATH,'mat_High_beta_HbO_pval.mat'],'pval');


