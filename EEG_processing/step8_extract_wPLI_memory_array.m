%%
PATH1='/.../sub_band_memory_high/Epoch_alpha/';
PATH2='/.../PLI_WML_fft_best/';
list_F=[4,6,9,11];
list_P=[19,21,24,26];
DATA1=zeros(23,16);
DATA2=zeros(23,16);
DATA3=zeros(23,16);
t=0;
for s=1:30
    try
        EEG = pop_loadset('filename',[num2str(s),'.set'],'filepath',PATH1);
        [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
        EEG = eeg_checkset( EEG );
        X=EEG.data;
        [x1,x2,x3]=size(X);
        pli=[];
        wpli=[];
        dwpli=[];t=t+1;
        for k=1:x3
            for k1=1:4
                for k2=1:4
                    XX1=X(list_F(k1),1:1550,k);
                    XX2=X(list_P(k2),1:1550,k);
                    sig1=fft(XX1,2048);
                    sig2=fft(XX2,2048);
                    f = (0:length(sig1)-1)*1000/length(sig1);
                    % cross-spectral density
                    cdd = sig1(2:95) .* conj(sig2(2:95));
                    cdi = imag(cdd);
                    % phase-lag index
                    pli(k,k1,k2) = abs(mean(sign(imag(cdd)),2));
                    % weighted phase-lag index (eq. 8 in Vink et al. NeuroImage 2011)
                    wpli(k,k1,k2)= abs( mean( abs(cdi).*sign(cdi) ,2) )./mean(abs(cdi),2);
                    % debiased weighted phase-lag index (shortcut, as implemented in fieldtrip)
                    imagsum      = sum(cdi,2);
                    imagsumW     = sum(abs(cdi),2);
                    debiasfactor = sum(cdi.^2,2);
                    dwpli(k,k1,k2)=(imagsum.^2 - debiasfactor)./(imagsumW.^2 - debiasfactor);
                end
            end
        end    
        STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
        YY1=reshape(mean(pli,1),1,16);
        YY2=reshape(mean(wpli,1),1,16);
        YY3=reshape(mean(dwpli,1),1,16);
        DATA1(t,:)=YY1;
        DATA2(t,:)=YY2;
        DATA3(t,:)=YY3;
    catch
        
    end
end  
save([PATH2,'High_mem_ERP_alpha_1.mat'],'DATA1');
save([PATH2,'High_mem_ERP_alpha_2.mat'],'DATA2');
save([PATH2,'High_mem_ERP_alpha_3.mat'],'DATA3');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PATH1='/.../sub_band_memory_middle/Epoch_alpha/';
PATH2='/.../PLI_WML_fft_best/';
list_F=[4,6,9,11];
list_P=[19,21,24,26];
DATA1=zeros(23,16);
DATA2=zeros(23,16);
DATA3=zeros(23,16);
t=0;
for s=1:30
    try
        EEG = pop_loadset('filename',[num2str(s),'.set'],'filepath',PATH1);
        [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
        EEG = eeg_checkset( EEG );
        X=EEG.data;
        [x1,x2,x3]=size(X);
        pli=[];
        wpli=[];
        dwpli=[];t=t+1;
        for k=1:x3
            for k1=1:4
                for k2=1:4
                    XX1=X(list_F(k1),1:1550,k);
                    XX2=X(list_P(k2),1:1550,k);
                    sig1=fft(XX1,2048);
                    sig2=fft(XX2,2048);
                    f = (0:length(sig1)-1)*1000/length(sig1);
                    % cross-spectral density
                    cdd = sig1(2:95) .* conj(sig2(2:95));
                    cdi = imag(cdd);
                    % phase-lag index
                    pli(k,k1,k2) = abs(mean(sign(imag(cdd)),2));
                    % weighted phase-lag index (eq. 8 in Vink et al. NeuroImage 2011)
                    wpli(k,k1,k2)= abs( mean( abs(cdi).*sign(cdi) ,2) )./mean(abs(cdi),2);
                    % debiased weighted phase-lag index (shortcut, as implemented in fieldtrip)
                    imagsum      = sum(cdi,2);
                    imagsumW     = sum(abs(cdi),2);
                    debiasfactor = sum(cdi.^2,2);
                    dwpli(k,k1,k2)=(imagsum.^2 - debiasfactor)./(imagsumW.^2 - debiasfactor);
                end
            end
        end    
        STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
        YY1=reshape(mean(pli,1),1,16);
        YY2=reshape(mean(wpli,1),1,16);
        YY3=reshape(mean(dwpli,1),1,16);
        DATA1(t,:)=YY1;
        DATA2(t,:)=YY2;
        DATA3(t,:)=YY3;
    catch
        
    end
end  
save([PATH2,'Middle_mem_ERP_alpha_1.mat'],'DATA1');
save([PATH2,'Middle_mem_ERP_alpha_2.mat'],'DATA2');
save([PATH2,'Middle_mem_ERP_alpha_3.mat'],'DATA3');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PATH1='/.../sub_band_memory_low/Epoch_alpha/';
PATH2='/.../PLI_WML_fft_best/';
list_F=[4,6,9,11];
list_P=[19,21,24,26];
DATA1=zeros(23,16);
DATA2=zeros(23,16);
DATA3=zeros(23,16);
t=0;
for s=1:30
    try
        EEG = pop_loadset('filename',[num2str(s),'.set'],'filepath',PATH1);
        [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
        EEG = eeg_checkset( EEG );
        X=EEG.data;
        [x1,x2,x3]=size(X);
        pli=[];
        wpli=[];
        dwpli=[];t=t+1;
        for k=1:x3
            for k1=1:4
                for k2=1:4
                    XX1=X(list_F(k1),1:1550,k);
                    XX2=X(list_P(k2),1:1550,k);
                    sig1=fft(XX1,2048);
                    sig2=fft(XX2,2048);
                    f = (0:length(sig1)-1)*1000/length(sig1);
                    % cross-spectral density
                    cdd = sig1(2:95) .* conj(sig2(2:95));
                    cdi = imag(cdd);
                    % phase-lag index
                    pli(k,k1,k2) = abs(mean(sign(imag(cdd)),2));
                    % weighted phase-lag index (eq. 8 in Vink et al. NeuroImage 2011)
                    wpli(k,k1,k2)= abs( mean( abs(cdi).*sign(cdi) ,2) )./mean(abs(cdi),2);
                    % debiased weighted phase-lag index (shortcut, as implemented in fieldtrip)
                    imagsum      = sum(cdi,2);
                    imagsumW     = sum(abs(cdi),2);
                    debiasfactor = sum(cdi.^2,2);
                    dwpli(k,k1,k2)=(imagsum.^2 - debiasfactor)./(imagsumW.^2 - debiasfactor);
                end
            end
        end    
        STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
        YY1=reshape(mean(pli,1),1,16);
        YY2=reshape(mean(wpli,1),1,16);
        YY3=reshape(mean(dwpli,1),1,16);
        DATA1(t,:)=YY1;
        DATA2(t,:)=YY2;
        DATA3(t,:)=YY3;
    catch
        
    end
end  
save([PATH2,'Low_mem_ERP_alpha_1.mat'],'DATA1');
save([PATH2,'Low_mem_ERP_alpha_2.mat'],'DATA2');
save([PATH2,'Low_mem_ERP_alpha_3.mat'],'DATA3');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
PATH1='/.../sub_band_memory_high/Epoch_theta/';
PATH2='/.../PLI_WML_fft_best/';
list_F=[4,6,9,11];
list_P=[19,21,24,26];
DATA1=zeros(23,16);
DATA2=zeros(23,16);
DATA3=zeros(23,16);
t=0;
for s=1:30
    try
        EEG = pop_loadset('filename',[num2str(s),'.set'],'filepath',PATH1);
        [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
        EEG = eeg_checkset( EEG );
        X=EEG.data;
        [x1,x2,x3]=size(X);
        pli=[];
        wpli=[];
        dwpli=[];t=t+1;
        for k=1:x3
            for k1=1:4
                for k2=1:4
                    XX1=X(list_F(k1),1:1550,k);
                    XX2=X(list_P(k2),1:1550,k);
                    sig1=fft(XX1,2048);
                    sig2=fft(XX2,2048);
                    f = (0:length(sig1)-1)*1000/length(sig1);
                    % cross-spectral density
                    cdd = sig1(2:95) .* conj(sig2(2:95));
                    cdi = imag(cdd);
                    % phase-lag index
                    pli(k,k1,k2) = abs(mean(sign(imag(cdd)),2));
                    % weighted phase-lag index (eq. 8 in Vink et al. NeuroImage 2011)
                    wpli(k,k1,k2)= abs( mean( abs(cdi).*sign(cdi) ,2) )./mean(abs(cdi),2);
                    % debiased weighted phase-lag index (shortcut, as implemented in fieldtrip)
                    imagsum      = sum(cdi,2);
                    imagsumW     = sum(abs(cdi),2);
                    debiasfactor = sum(cdi.^2,2);
                    dwpli(k,k1,k2)=(imagsum.^2 - debiasfactor)./(imagsumW.^2 - debiasfactor);
                end
            end
        end    
        STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
        YY1=reshape(mean(pli,1),1,16);
        YY2=reshape(mean(wpli,1),1,16);
        YY3=reshape(mean(dwpli,1),1,16);
        DATA1(t,:)=YY1;
        DATA2(t,:)=YY2;
        DATA3(t,:)=YY3;
    catch
        
    end
end  
save([PATH2,'High_mem_ERP_theta_1.mat'],'DATA1');
save([PATH2,'High_mem_ERP_theta_2.mat'],'DATA2');
save([PATH2,'High_mem_ERP_theta_3.mat'],'DATA3');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PATH1='/.../sub_band_memory_middle/Epoch_theta/';
PATH2='/.../PLI_WML_fft_best/';
list_F=[4,6,9,11];
list_P=[19,21,24,26];
DATA1=zeros(23,16);
DATA2=zeros(23,16);
DATA3=zeros(23,16);
t=0;
for s=1:30
    try
        EEG = pop_loadset('filename',[num2str(s),'.set'],'filepath',PATH1);
        [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
        EEG = eeg_checkset( EEG );
        X=EEG.data;
        [x1,x2,x3]=size(X);
        pli=[];
        wpli=[];
        dwpli=[];t=t+1;
        for k=1:x3
            for k1=1:4
                for k2=1:4
                    XX1=X(list_F(k1),1:1550,k);
                    XX2=X(list_P(k2),1:1550,k);
                    sig1=fft(XX1,2048);
                    sig2=fft(XX2,2048);
                    f = (0:length(sig1)-1)*1000/length(sig1);
                    % cross-spectral density
                    cdd = sig1(2:95) .* conj(sig2(2:95));
                    cdi = imag(cdd);
                    % phase-lag index
                    pli(k,k1,k2) = abs(mean(sign(imag(cdd)),2));
                    % weighted phase-lag index (eq. 8 in Vink et al. NeuroImage 2011)
                    wpli(k,k1,k2)= abs( mean( abs(cdi).*sign(cdi) ,2) )./mean(abs(cdi),2);
                    % debiased weighted phase-lag index (shortcut, as implemented in fieldtrip)
                    imagsum      = sum(cdi,2);
                    imagsumW     = sum(abs(cdi),2);
                    debiasfactor = sum(cdi.^2,2);
                    dwpli(k,k1,k2)=(imagsum.^2 - debiasfactor)./(imagsumW.^2 - debiasfactor);
                end
            end
        end    
        STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
        YY1=reshape(mean(pli,1),1,16);
        YY2=reshape(mean(wpli,1),1,16);
        YY3=reshape(mean(dwpli,1),1,16);
        DATA1(t,:)=YY1;
        DATA2(t,:)=YY2;
        DATA3(t,:)=YY3;
    catch
        
    end
end  
save([PATH2,'Middle_mem_ERP_theta_1.mat'],'DATA1');
save([PATH2,'Middle_mem_ERP_theta_2.mat'],'DATA2');
save([PATH2,'Middle_mem_ERP_theta_3.mat'],'DATA3');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PATH1='/.../sub_band_memory_low/Epoch_theta/';
PATH2='/.../PLI_WML_fft_best/';
list_F=[4,6,9,11];
list_P=[19,21,24,26];
DATA1=zeros(23,16);
DATA2=zeros(23,16);
DATA3=zeros(23,16);
t=0;
for s=1:30
    try
        EEG = pop_loadset('filename',[num2str(s),'.set'],'filepath',PATH1);
        [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
        EEG = eeg_checkset( EEG );
        X=EEG.data;
        [x1,x2,x3]=size(X);
        pli=[];
        wpli=[];
        dwpli=[];t=t+1;
        for k=1:x3
            for k1=1:4
                for k2=1:4
                    XX1=X(list_F(k1),1:1550,k);
                    XX2=X(list_P(k2),1:1550,k);
                    sig1=fft(XX1,2048);
                    sig2=fft(XX2,2048);
                    f = (0:length(sig1)-1)*1000/length(sig1);
                    % cross-spectral density
                    cdd = sig1(2:95) .* conj(sig2(2:95));
                    cdi = imag(cdd);
                    % phase-lag index
                    pli(k,k1,k2) = abs(mean(sign(imag(cdd)),2));
                    % weighted phase-lag index (eq. 8 in Vink et al. NeuroImage 2011)
                    wpli(k,k1,k2)= abs( mean( abs(cdi).*sign(cdi) ,2) )./mean(abs(cdi),2);
                    % debiased weighted phase-lag index (shortcut, as implemented in fieldtrip)
                    imagsum      = sum(cdi,2);
                    imagsumW     = sum(abs(cdi),2);
                    debiasfactor = sum(cdi.^2,2);
                    dwpli(k,k1,k2)=(imagsum.^2 - debiasfactor)./(imagsumW.^2 - debiasfactor);
                end
            end
        end    
        STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
        YY1=reshape(mean(pli,1),1,16);
        YY2=reshape(mean(wpli,1),1,16);
        YY3=reshape(mean(dwpli,1),1,16);
        DATA1(t,:)=YY1;
        DATA2(t,:)=YY2;
        DATA3(t,:)=YY3;
    catch
        
    end
end  
save([PATH2,'Low_mem_ERP_theta_1.mat'],'DATA1');
save([PATH2,'Low_mem_ERP_theta_2.mat'],'DATA2');
save([PATH2,'Low_mem_ERP_theta_3.mat'],'DATA3');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
PATH1='/.../sub_band_memory_high/Epoch_delta/';
PATH2='/.../PLI_WML_fft_best/';
list_F=[4,6,9,11];
list_P=[19,21,24,26];
DATA1=zeros(23,16);
DATA2=zeros(23,16);
DATA3=zeros(23,16);
t=0;
for s=1:30
    try
        EEG = pop_loadset('filename',[num2str(s),'.set'],'filepath',PATH1);
        [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
        EEG = eeg_checkset( EEG );
        X=EEG.data;
        [x1,x2,x3]=size(X);
        pli=[];
        wpli=[];
        dwpli=[];t=t+1;
        for k=1:x3
            for k1=1:4
                for k2=1:4
                    XX1=X(list_F(k1),1:1550,k);
                    XX2=X(list_P(k2),1:1550,k);
                    sig1=fft(XX1,2048);
                    sig2=fft(XX2,2048);
                    f = (0:length(sig1)-1)*1000/length(sig1);
                    % cross-spectral density
                    cdd = sig1(2:95) .* conj(sig2(2:95));
                    cdi = imag(cdd);
                    % phase-lag index
                    pli(k,k1,k2) = abs(mean(sign(imag(cdd)),2));
                    % weighted phase-lag index (eq. 8 in Vink et al. NeuroImage 2011)
                    wpli(k,k1,k2)= abs( mean( abs(cdi).*sign(cdi) ,2) )./mean(abs(cdi),2);
                    % debiased weighted phase-lag index (shortcut, as implemented in fieldtrip)
                    imagsum      = sum(cdi,2);
                    imagsumW     = sum(abs(cdi),2);
                    debiasfactor = sum(cdi.^2,2);
                    dwpli(k,k1,k2)=(imagsum.^2 - debiasfactor)./(imagsumW.^2 - debiasfactor);
                end
            end
        end    
        STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
        YY1=reshape(mean(pli,1),1,16);
        YY2=reshape(mean(wpli,1),1,16);
        YY3=reshape(mean(dwpli,1),1,16);
        DATA1(t,:)=YY1;
        DATA2(t,:)=YY2;
        DATA3(t,:)=YY3;
    catch
        
    end
end  
save([PATH2,'High_mem_ERP_delta_1.mat'],'DATA1');
save([PATH2,'High_mem_ERP_delta_2.mat'],'DATA2');
save([PATH2,'High_mem_ERP_delta_3.mat'],'DATA3');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PATH1='/.../sub_band_memory_middle/Epoch_delta/';
PATH2='/.../PLI_WML_fft_best/';
list_F=[4,6,9,11];
list_P=[19,21,24,26];
DATA1=zeros(23,16);
DATA2=zeros(23,16);
DATA3=zeros(23,16);
t=0;
for s=1:30
    try
        EEG = pop_loadset('filename',[num2str(s),'.set'],'filepath',PATH1);
        [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
        EEG = eeg_checkset( EEG );
        X=EEG.data;
        [x1,x2,x3]=size(X);
        pli=[];
        wpli=[];
        dwpli=[];t=t+1;
        for k=1:x3
            for k1=1:4
                for k2=1:4
                    XX1=X(list_F(k1),1:1550,k);
                    XX2=X(list_P(k2),1:1550,k);
                    sig1=fft(XX1,2048);
                    sig2=fft(XX2,2048);
                    f = (0:length(sig1)-1)*1000/length(sig1);
                    % cross-spectral density
                    cdd = sig1(2:95) .* conj(sig2(2:95));
                    cdi = imag(cdd);
                    % phase-lag index
                    pli(k,k1,k2) = abs(mean(sign(imag(cdd)),2));
                    % weighted phase-lag index (eq. 8 in Vink et al. NeuroImage 2011)
                    wpli(k,k1,k2)= abs( mean( abs(cdi).*sign(cdi) ,2) )./mean(abs(cdi),2);
                    % debiased weighted phase-lag index (shortcut, as implemented in fieldtrip)
                    imagsum      = sum(cdi,2);
                    imagsumW     = sum(abs(cdi),2);
                    debiasfactor = sum(cdi.^2,2);
                    dwpli(k,k1,k2)=(imagsum.^2 - debiasfactor)./(imagsumW.^2 - debiasfactor);
                end
            end
        end    
        STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
        YY1=reshape(mean(pli,1),1,16);
        YY2=reshape(mean(wpli,1),1,16);
        YY3=reshape(mean(dwpli,1),1,16);
        DATA1(t,:)=YY1;
        DATA2(t,:)=YY2;
        DATA3(t,:)=YY3;
    catch
        
    end
end  
save([PATH2,'Middle_mem_ERP_delta_1.mat'],'DATA1');
save([PATH2,'Middle_mem_ERP_delta_2.mat'],'DATA2');
save([PATH2,'Middle_mem_ERP_delta_3.mat'],'DATA3');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PATH1='/.../sub_band_memory_low/Epoch_delta/';
PATH2='/.../PLI_WML_fft_best/';
list_F=[4,6,9,11];
list_P=[19,21,24,26];
DATA1=zeros(23,16);
DATA2=zeros(23,16);
DATA3=zeros(23,16);
t=0;
for s=1:30
    try
        EEG = pop_loadset('filename',[num2str(s),'.set'],'filepath',PATH1);
        [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
        EEG = eeg_checkset( EEG );
        X=EEG.data;
        [x1,x2,x3]=size(X);
        pli=[];
        wpli=[];
        dwpli=[];t=t+1;
        for k=1:x3
            for k1=1:4
                for k2=1:4
                    XX1=X(list_F(k1),1:1550,k);
                    XX2=X(list_P(k2),1:1550,k);
                    sig1=fft(XX1,2048);
                    sig2=fft(XX2,2048);
                    f = (0:length(sig1)-1)*1000/length(sig1);
                    % cross-spectral density
                    cdd = sig1(2:95) .* conj(sig2(2:95));
                    cdi = imag(cdd);
                    % phase-lag index
                    pli(k,k1,k2) = abs(mean(sign(imag(cdd)),2));
                    % weighted phase-lag index (eq. 8 in Vink et al. NeuroImage 2011)
                    wpli(k,k1,k2)= abs( mean( abs(cdi).*sign(cdi) ,2) )./mean(abs(cdi),2);
                    % debiased weighted phase-lag index (shortcut, as implemented in fieldtrip)
                    imagsum      = sum(cdi,2);
                    imagsumW     = sum(abs(cdi),2);
                    debiasfactor = sum(cdi.^2,2);
                    dwpli(k,k1,k2)=(imagsum.^2 - debiasfactor)./(imagsumW.^2 - debiasfactor);
                end
            end
        end    
        STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
        YY1=reshape(mean(pli,1),1,16);
        YY2=reshape(mean(wpli,1),1,16);
        YY3=reshape(mean(dwpli,1),1,16);
        DATA1(t,:)=YY1;
        DATA2(t,:)=YY2;
        DATA3(t,:)=YY3;
    catch
        
    end
end  
save([PATH2,'Low_mem_ERP_delta_1.mat'],'DATA1');
save([PATH2,'Low_mem_ERP_delta_2.mat'],'DATA2');
save([PATH2,'Low_mem_ERP_delta_3.mat'],'DATA3');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
PATH1='/.../sub_band_memory_high/Epoch_beta/';
PATH2='/.../PLI_WML_fft_best/';
list_F=[4,6,9,11];
list_P=[19,21,24,26];
DATA1=zeros(23,16);
DATA2=zeros(23,16);
DATA3=zeros(23,16);
t=0;
for s=1:30
    try
        EEG = pop_loadset('filename',[num2str(s),'.set'],'filepath',PATH1);
        [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
        EEG = eeg_checkset( EEG );
        X=EEG.data;
        [x1,x2,x3]=size(X);
        pli=[];
        wpli=[];
        dwpli=[];t=t+1;
        for k=1:x3
            for k1=1:4
                for k2=1:4
                    XX1=X(list_F(k1),1:1550,k);
                    XX2=X(list_P(k2),1:1550,k);
                    sig1=fft(XX1,2048);
                    sig2=fft(XX2,2048);
                    f = (0:length(sig1)-1)*1000/length(sig1);
                    % cross-spectral density
                    cdd = sig1(2:95) .* conj(sig2(2:95));
                    cdi = imag(cdd);
                    % phase-lag index
                    pli(k,k1,k2) = abs(mean(sign(imag(cdd)),2));
                    % weighted phase-lag index (eq. 8 in Vink et al. NeuroImage 2011)
                    wpli(k,k1,k2)= abs( mean( abs(cdi).*sign(cdi) ,2) )./mean(abs(cdi),2);
                    % debiased weighted phase-lag index (shortcut, as implemented in fieldtrip)
                    imagsum      = sum(cdi,2);
                    imagsumW     = sum(abs(cdi),2);
                    debiasfactor = sum(cdi.^2,2);
                    dwpli(k,k1,k2)=(imagsum.^2 - debiasfactor)./(imagsumW.^2 - debiasfactor);
                end
            end
        end    
        STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
        YY1=reshape(mean(pli,1),1,16);
        YY2=reshape(mean(wpli,1),1,16);
        YY3=reshape(mean(dwpli,1),1,16);
        DATA1(t,:)=YY1;
        DATA2(t,:)=YY2;
        DATA3(t,:)=YY3;
    catch
        
    end
end  
save([PATH2,'High_mem_ERP_beta_1.mat'],'DATA1');
save([PATH2,'High_mem_ERP_beta_2.mat'],'DATA2');
save([PATH2,'High_mem_ERP_beta_3.mat'],'DATA3');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PATH1='/.../sub_band_memory_middle/Epoch_beta/';
PATH2='/.../PLI_WML_fft_best/';
list_F=[4,6,9,11];
list_P=[19,21,24,26];
DATA1=zeros(23,16);
DATA2=zeros(23,16);
DATA3=zeros(23,16);
t=0;
for s=1:30
    try
        EEG = pop_loadset('filename',[num2str(s),'.set'],'filepath',PATH1);
        [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
        EEG = eeg_checkset( EEG );
        X=EEG.data;
        [x1,x2,x3]=size(X);
        pli=[];
        wpli=[];
        dwpli=[];t=t+1;
        for k=1:x3
            for k1=1:4
                for k2=1:4
                    XX1=X(list_F(k1),1:1550,k);
                    XX2=X(list_P(k2),1:1550,k);
                    sig1=fft(XX1,2048);
                    sig2=fft(XX2,2048);
                    f = (0:length(sig1)-1)*1000/length(sig1);
                    % cross-spectral density
                    cdd = sig1(2:95) .* conj(sig2(2:95));
                    cdi = imag(cdd);
                    % phase-lag index
                    pli(k,k1,k2) = abs(mean(sign(imag(cdd)),2));
                    % weighted phase-lag index (eq. 8 in Vink et al. NeuroImage 2011)
                    wpli(k,k1,k2)= abs( mean( abs(cdi).*sign(cdi) ,2) )./mean(abs(cdi),2);
                    % debiased weighted phase-lag index (shortcut, as implemented in fieldtrip)
                    imagsum      = sum(cdi,2);
                    imagsumW     = sum(abs(cdi),2);
                    debiasfactor = sum(cdi.^2,2);
                    dwpli(k,k1,k2)=(imagsum.^2 - debiasfactor)./(imagsumW.^2 - debiasfactor);
                end
            end
        end    
        STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
        YY1=reshape(mean(pli,1),1,16);
        YY2=reshape(mean(wpli,1),1,16);
        YY3=reshape(mean(dwpli,1),1,16);
        DATA1(t,:)=YY1;
        DATA2(t,:)=YY2;
        DATA3(t,:)=YY3;
    catch
        
    end
end  
save([PATH2,'Middle_mem_ERP_beta_1.mat'],'DATA1');
save([PATH2,'Middle_mem_ERP_beta_2.mat'],'DATA2');
save([PATH2,'Middle_mem_ERP_beta_3.mat'],'DATA3');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PATH1='/.../sub_band_memory_low/Epoch_beta/';
PATH2='/.../PLI_WML_fft_best/';
list_F=[4,6,9,11];
list_P=[19,21,24,26];
DATA1=zeros(23,16);
DATA2=zeros(23,16);
DATA3=zeros(23,16);
t=0;
for s=1:30
    try
        EEG = pop_loadset('filename',[num2str(s),'.set'],'filepath',PATH1);
        [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
        EEG = eeg_checkset( EEG );
        X=EEG.data;
        [x1,x2,x3]=size(X);
        pli=[];
        wpli=[];
        dwpli=[];t=t+1;
        for k=1:x3
            for k1=1:4
                for k2=1:4
                    XX1=X(list_F(k1),1:1550,k);
                    XX2=X(list_P(k2),1:1550,k);
                    sig1=fft(XX1,2048);
                    sig2=fft(XX2,2048);
                    f = (0:length(sig1)-1)*1000/length(sig1);
                    % cross-spectral density
                    cdd = sig1(2:95) .* conj(sig2(2:95));
                    cdi = imag(cdd);
                    % phase-lag index
                    pli(k,k1,k2) = abs(mean(sign(imag(cdd)),2));
                    % weighted phase-lag index (eq. 8 in Vink et al. NeuroImage 2011)
                    wpli(k,k1,k2)= abs( mean( abs(cdi).*sign(cdi) ,2) )./mean(abs(cdi),2);
                    % debiased weighted phase-lag index (shortcut, as implemented in fieldtrip)
                    imagsum      = sum(cdi,2);
                    imagsumW     = sum(abs(cdi),2);
                    debiasfactor = sum(cdi.^2,2);
                    dwpli(k,k1,k2)=(imagsum.^2 - debiasfactor)./(imagsumW.^2 - debiasfactor);
                end
            end
        end    
        STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
        YY1=reshape(mean(pli,1),1,16);
        YY2=reshape(mean(wpli,1),1,16);
        YY3=reshape(mean(dwpli,1),1,16);
        DATA1(t,:)=YY1;
        DATA2(t,:)=YY2;
        DATA3(t,:)=YY3;
    catch
        
    end
end  
save([PATH2,'Low_mem_ERP_beta_1.mat'],'DATA1');
save([PATH2,'Low_mem_ERP_beta_2.mat'],'DATA2');
save([PATH2,'Low_mem_ERP_beta_3.mat'],'DATA3');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





