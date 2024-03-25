%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PATH1='/.../step7_EPP_memory_sub_band/Epoch_alpha/';
PATH2='/.../sub_band_MI_alpha/'; 
list_F=[4,6,9,11];
list_P=[19,21,24,26];
p=0;
for i=1:23
   try
      EEG = pop_loadset('filename',['High_',num2str(i),'.set'],'filepath',PATH1);
      [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
      data=EEG.data;
      fd_bins=100;
      [~,~,x1]=size(data);
      MI=zeros(x1,4,4);
      for j=1:x1
          for k=1:4
             for t=1:4
                 x=data(list_F(k),:,j);
                 y=data(list_P(t),:,j);
                 [mi entropy fd_bins_wy]=mutualinformationx(x,y,fd_bins);
                 MI(j,k,t)=mi;
             end
          end
      end
      save([PATH2,'High_memory_alpha',num2str(i),'.mat'],'MI');
      STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
   catch
       
   end
end
%%




