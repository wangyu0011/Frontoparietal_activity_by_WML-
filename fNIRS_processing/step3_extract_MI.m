%%
PATH1='/.../sub2_HbO/';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DATA=zeros(23,18,18);
p=0;
for i=1:30
%    try
      A=load([PATH1,'High',num2str(i),'.mat']); 
      data=A.DATA;
      p=p+1;
      fd_bins=100;
      [x1,~,~]=size(data);
      MI=zeros(x1,18,18);
      for j=1:x1
          for k=1:18
             for t=1:18
                 x=data(j,:,k);
                 y=data(j,:,t);
                 [mi entropy fd_bins_wy]=mutualinformationx(x,y,fd_bins);
                 MI(j,k,t)=mi;
             end
          end
      end
      DATA(p,:,:)=reshape(mean(MI,1),18,18);
%    catch
%        
%    end
end
save('new12_MI_HbO_H','DATA');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DATA=zeros(23,18,18);
p=0;
for i=1:30
%    try
      A=load([PATH1,'Middle',num2str(i),'.mat']); 
      data=A.DATA;
      p=p+1;
      fd_bins=100;
      [x1,~,~]=size(data);
      MI=zeros(x1,18,18);
      for j=1:x1
          for k=1:18
             for t=1:18
                 x=data(j,:,k);
                 y=data(j,:,t);
                 [mi entropy fd_bins_wy]=mutualinformationx(x,y,fd_bins);
                 MI(j,k,t)=mi;
             end
          end
      end
      DATA(p,:,:)=reshape(mean(MI,1),18,18);
%    catch
%        
%    end
end
save('new12_MI_HbO_M','DATA');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DATA=zeros(23,18,18);
p=0;
for i=1:30
%    try
      A=load([PATH1,'Low',num2str(i),'.mat']); 
      data=A.DATA;
      p=p+1;
      [x1,~,~]=size(data);
      fd_bins=100;
      MI=zeros(x1,18,18);
      for j=1:x1
          for k=1:18
             for t=1:18
                 x=data(j,:,k);
                 y=data(j,:,t);
                 [mi entropy fd_bins_wy]=mutualinformationx(x,y,fd_bins);
                 MI(j,k,t)=mi;
             end
          end
      end
      DATA(p,:,:)=reshape(mean(MI,1),18,18);
%    catch
%        
%    end
end
save('new12_MI_HbO_L','DATA');
%%
PATH1='.../sub2_HbR/';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DATA=zeros(23,18,18);
p=0;
for i=1:30
%    try
      A=load([PATH1,'High',num2str(i),'.mat']); 
      data=A.DATA;
      p=p+1;
      fd_bins=100;
      [x1,~,~]=size(data);
      MI=zeros(x1,18,18);
      for j=1:x1
          for k=1:18
             for t=1:18
                 x=data(j,:,k);
                 y=data(j,:,t);
                 [mi entropy fd_bins_wy]=mutualinformationx(x,y,fd_bins);
                 MI(j,k,t)=mi;
             end
          end
      end
      DATA(p,:,:)=reshape(mean(MI,1),18,18);
%    catch
%        
%    end
end
save('new12_MI_HbR_H','DATA');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DATA=zeros(23,18,18);
p=0;
for i=1:30
%    try
      A=load([PATH1,'Middle',num2str(i),'.mat']); 
      data=A.DATA;
      p=p+1;
      fd_bins=100;
      [x1,~,~]=size(data);
      MI=zeros(x1,18,18);
      for j=1:x1
          for k=1:18
             for t=1:18
                 x=data(j,:,k);
                 y=data(j,:,t);
                 [mi entropy fd_bins_wy]=mutualinformationx(x,y,fd_bins);
                 MI(j,k,t)=mi;
             end
          end
      end
      DATA(p,:,:)=reshape(mean(MI,1),18,18);
%    catch
%        
%    end
end
save('new12_MI_HbR_M','DATA');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DATA=zeros(23,18,18);
p=0;
for i=1:30
%    try
      A=load([PATH1,'Low',num2str(i),'.mat']); 
      data=A.DATA;
      p=p+1;
      [x1,~,~]=size(data);
      fd_bins=100;
      MI=zeros(x1,18,18);
      for j=1:x1
          for k=1:18
             for t=1:18
                 x=data(j,:,k);
                 y=data(j,:,t);
                 [mi entropy fd_bins_wy]=mutualinformationx(x,y,fd_bins);
                 MI(j,k,t)=mi;
             end
          end
      end
      DATA(p,:,:)=reshape(mean(MI,1),18,18);
%    catch
%        
%    end
end
save('new12_MI_HbR_L','DATA');
%%
PATH1='/.../sub2_HbT/';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DATA=zeros(23,18,18);
p=0;
for i=1:30
%    try
      A=load([PATH1,'High',num2str(i),'.mat']); 
      data=A.DATA;
      p=p+1;
      fd_bins=100;
      [x1,~,~]=size(data);
      MI=zeros(x1,18,18);
      for j=1:x1
          for k=1:18
             for t=1:18
                 x=data(j,:,k);
                 y=data(j,:,t);
                 [mi entropy fd_bins_wy]=mutualinformationx(x,y,fd_bins);
                 MI(j,k,t)=mi;
             end
          end
      end
      DATA(p,:,:)=reshape(mean(MI,1),18,18);
%    catch
%        
%    end
end
save('new12_MI_HbT_H','DATA');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DATA=zeros(23,18,18);
p=0;
for i=1:30
%    try
      A=load([PATH1,'Middle',num2str(i),'.mat']); 
      data=A.DATA;
      p=p+1;
      fd_bins=100;
      [x1,~,~]=size(data);
      MI=zeros(x1,18,18);
      for j=1:x1
          for k=1:18
             for t=1:18
                 x=data(j,:,k);
                 y=data(j,:,t);
                 [mi entropy fd_bins_wy]=mutualinformationx(x,y,fd_bins);
                 MI(j,k,t)=mi;
             end
          end
      end
      DATA(p,:,:)=reshape(mean(MI,1),18,18);
%    catch
%        
%    end
end
save('new12_MI_HbT_M','DATA');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DATA=zeros(23,18,18);
p=0;
for i=1:30
%    try
      A=load([PATH1,'Low',num2str(i),'.mat']); 
      data=A.DATA;
      p=p+1;
      [x1,~,~]=size(data);
      fd_bins=100;
      MI=zeros(x1,18,18);
      for j=1:x1
          for k=1:18
             for t=1:18
                 x=data(j,:,k);
                 y=data(j,:,t);
                 [mi entropy fd_bins_wy]=mutualinformationx(x,y,fd_bins);
                 MI(j,k,t)=mi;
             end
          end
      end
      DATA(p,:,:)=reshape(mean(MI,1),18,18);
%    catch
%        
%    end
end
save('new12_MI_HbT_L','DATA');




