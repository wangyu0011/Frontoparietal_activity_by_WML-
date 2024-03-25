%%
list1=[1,2,4,5];
list2=[14,15,16,18];
list_sub=[1,2,3,4,5,6,7,8,9,10,11,14,16,18,19,20,21,22,23,24,27,29,30];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('new12_MI_HbO_H.mat');
data=zeros(16,23);
for k=1:23
    data(:,k)=reshape(DATA(list_sub(k),list1,list2),1,16);
end
save('ROI_new12_MI_HbO_H.mat','data');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('new12_MI_HbO_M.mat');
data=zeros(16,23);
for k=1:23
    data(:,k)=reshape(DATA(list_sub(k),list1,list2),1,16);
end
save('ROI_new12_MI_HbO_M.mat','data');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('new12_MI_HbO_L.mat');
data=zeros(16,23);
for k=1:23
    data(:,k)=reshape(DATA(list_sub(k),list1,list2),1,16);
end
save('ROI_new12_MI_HbO_L.mat','data');
%%
list1=[1,2,4,5];
list2=[14,15,16,18];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('new12_MI_HbR_H.mat');
data=zeros(16,23);
for k=1:23
    data(:,k)=reshape(DATA(list_sub(k),list1,list2),1,16);
end
save('ROI_new12_MI_HbR_H.mat','data');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('new12_MI_HbR_M.mat');
data=zeros(16,23);
for k=1:23
    data(:,k)=reshape(DATA(list_sub(k),list1,list2),1,16);
end
save('ROI_new12_MI_HbR_M.mat','data');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('new12_MI_HbR_L.mat');
data=zeros(16,23);
for k=1:23
    data(:,k)=reshape(DATA(list_sub(k),list1,list2),1,16);
end
save('ROI_new12_MI_HbR_L.mat','data');












