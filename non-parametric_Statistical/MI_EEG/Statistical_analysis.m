%%
load('ROI_High_mat_alpha.mat');
R=data;
load('ROI_Low_mat_alpha.mat');
S=data;
fp=fopen('mat_alpha_H_L_ttest.txt','a');
t=0;
P_R=zeros(1,16);
P_L=zeros(1,16);
for i=1:16
    t=t+1;
    [p_r,h_r] = signrank(S(i,:),R(i,:),'Tail','right');
    [p_l,h_l] = signrank(S(i,:),R(i,:),'Tail','left');
    P_R(t)=p_r;
    P_L(t)=p_l;
    if p_r<0.06||p_l<0.06
        fprintf(fp,'%10s\r\n',[]);
        fprintf(fp,'%10s\r\n',['##############----chan',num2str(i),'----#############']);
        fprintf(fp,'%10s','h_right=');
        fprintf(fp,'%8d\r\n',h_r);
        fprintf(fp,'%10s','p_right=');
        fprintf(fp,'%8d\r\n',p_r);

        fprintf(fp,'%10s','h_left=');
        fprintf(fp,'%8d\r\n',h_l);
        fprintf(fp,'%10s','p_left=');
        fprintf(fp,'%8d\r\n',p_l);

        close all;
    end
    close all;
end
% save('HbO_MI_R_H_M.mat','P_R');
% save('HbO_MI_L_H_M.mat','P_L');
% %%
% 
% 
% [h, crit_p, adj_ci_cvrg, adj_p]=fdr_bh(P_L,.05,'pdep','yes');
% 
% [h, crit_p, adj_ci_cvrg, adj_p]=fdr_bh(P_R,.05,'pdep','yes');




