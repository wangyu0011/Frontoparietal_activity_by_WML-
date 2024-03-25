%%
PATHIN='/.../step5_ERP_memory/';
PATHOUT1='/.../step7_EPP_memory_sub_band/Epoch_delta/';
cd(PATHIN)
list=dir('*.set');
for s=1:length(list)
    EEG = pop_loadset('filename',list(s).name,'filepath',PATHIN);
    [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
    waveletFunction = 'db4';
    [x1,x2,x3]=size(EEG.data);
    DATA_Delta=zeros(x1,x2,x3);
    DATA_Theta=zeros(x1,x2,x3);
    DATA_Alpha=zeros(x1,x2,x3);
    DATA_Beta=zeros(x1,x2,x3);
    %%% 5 level decomposition of signal to produce 1-D detail coefficients
    for i=1:x1
        for j=1:x3
            [C,L] = wavedec(EEG.data(i,:,j),8,waveletFunction);
            cD1 = detcoef(C,L,2);                   %NOISY
            cD2 = detcoef(C,L,3);                   %
            cD3 = detcoef(C,L,4);                   %
            cD4 = detcoef(C,L,5);                   %
            cD5 = detcoef(C,L,6);                   %Beta
            cD6 = detcoef(C,L,7);                   %Alpha
            cD7 = detcoef(C,L,8);                   %Delta
            cA7 = appcoef(C,L,'db4',8);               %Theta
            %%% reconstruction of signal from 1-D wavelet coefficients
            D3 = wrcoef('d',C,L,waveletFunction,6); %BETA 
            D4 = wrcoef('d',C,L,waveletFunction,7); %ALPHA 
            D5 = wrcoef('d',C,L,waveletFunction,8); %THETA 
            A5 = wrcoef('a',C,L,waveletFunction,8); %DELTA
            DATA_Delta(i,:,j)=A5;
            DATA_Theta(i,:,j)=D5;
            DATA_Alpha(i,:,j)=D4;
            DATA_Beta(i,:,j)=D3;
        end
    end
    EEG.data=DATA_Delta;
    EEG = eeg_checkset(EEG);
    EEG = pop_saveset(EEG, 'filename',list(s).name,'filepath',PATHOUT1);
    [ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
    STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
end
%%
PATHIN='/.../step5_ERP_memory/';
PATHOUT2='/.../step7_EPP_memory_sub_band/Epoch_theta/';
cd(PATHIN)
list=dir('*.set');
for s=1:length(list)
    EEG = pop_loadset('filename',list(s).name,'filepath',PATHIN);
    [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
    waveletFunction = 'db4';
    [x1,x2,x3]=size(EEG.data);
    DATA_Delta=zeros(x1,x2,x3);
    DATA_Theta=zeros(x1,x2,x3);
    DATA_Alpha=zeros(x1,x2,x3);
    DATA_Beta=zeros(x1,x2,x3);
    %%% 5 level decomposition of signal to produce 1-D detail coefficients
    for i=1:x1
        for j=1:x3
            [C,L] = wavedec(EEG.data(i,:,j),8,waveletFunction);
            cD1 = detcoef(C,L,2);                   %NOISY
            cD2 = detcoef(C,L,3);                   %
            cD3 = detcoef(C,L,4);                   %
            cD4 = detcoef(C,L,5);                   %
            cD5 = detcoef(C,L,6);                   %Beta
            cD6 = detcoef(C,L,7);                   %Alpha
            cD7 = detcoef(C,L,8);                   %Delta
            cA7 = appcoef(C,L,'db4',8);               %Theta
            %%% reconstruction of signal from 1-D wavelet coefficients
            D3 = wrcoef('d',C,L,waveletFunction,6); %BETA 
            D4 = wrcoef('d',C,L,waveletFunction,7); %ALPHA 
            D5 = wrcoef('d',C,L,waveletFunction,8); %THETA 
            A5 = wrcoef('a',C,L,waveletFunction,8); %DELTA
            DATA_Delta(i,:,j)=A5;
            DATA_Theta(i,:,j)=D5;
            DATA_Alpha(i,:,j)=D4;
            DATA_Beta(i,:,j)=D3;
        end
    end
    EEG.data=DATA_Theta;
    EEG = eeg_checkset( EEG );
    EEG = pop_saveset( EEG, 'filename',list(s).name,'filepath',PATHOUT2);
    [ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
    STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
end

%%
PATHIN='/.../step5_ERP_memory/';
PATHOUT3='/.../step7_EPP_memory_sub_band/Epoch_alpha/';
cd(PATHIN)
list=dir('*.set');
for s=1:length(list)
    EEG = pop_loadset('filename',list(s).name,'filepath',PATHIN);
    [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
    waveletFunction = 'db4';
    [x1,x2,x3]=size(EEG.data);
    DATA_Delta=zeros(x1,x2,x3);
    DATA_Theta=zeros(x1,x2,x3);
    DATA_Alpha=zeros(x1,x2,x3);
    DATA_Beta=zeros(x1,x2,x3);
    %%% 5 level decomposition of signal to produce 1-D detail coefficients
    for i=1:x1
        for j=1:x3
            [C,L] = wavedec(EEG.data(i,:,j),8,waveletFunction);
            cD1 = detcoef(C,L,2);                   %NOISY
            cD2 = detcoef(C,L,3);                   %
            cD3 = detcoef(C,L,4);                   %
            cD4 = detcoef(C,L,5);                   %
            cD5 = detcoef(C,L,6);                   %Beta
            cD6 = detcoef(C,L,7);                   %Alpha
            cD7 = detcoef(C,L,8);                   %Delta
            cA7 = appcoef(C,L,'db4',8);               %Theta
            %%% reconstruction of signal from 1-D wavelet coefficients
            D3 = wrcoef('d',C,L,waveletFunction,6); %BETA 
            D4 = wrcoef('d',C,L,waveletFunction,7); %ALPHA 
            D5 = wrcoef('d',C,L,waveletFunction,8); %THETA 
            A5 = wrcoef('a',C,L,waveletFunction,8); %DELTA
            DATA_Delta(i,:,j)=A5;
            DATA_Theta(i,:,j)=D5;
            DATA_Alpha(i,:,j)=D4;
            DATA_Beta(i,:,j)=D3;
        end
    end
    EEG.data=DATA_Alpha;
    EEG = eeg_checkset( EEG );
    EEG = pop_saveset( EEG, 'filename',list(s).name,'filepath',PATHOUT3);
    [ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
    STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
end
%%
PATHIN='/.../step5_ERP_memory/';
PATHOUT4='/.../step7_EPP_memory_sub_band/Epoch_beta/';
cd(PATHIN)
list=dir('*.set');
for s=1:length(list)
    EEG = pop_loadset('filename',list(s).name,'filepath',PATHIN);
    [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
    waveletFunction = 'db4';
    [x1,x2,x3]=size(EEG.data);
    DATA_Delta=zeros(x1,x2,x3);
    DATA_Theta=zeros(x1,x2,x3);
    DATA_Alpha=zeros(x1,x2,x3);
    DATA_Beta=zeros(x1,x2,x3);
    %%% 5 level decomposition of signal to produce 1-D detail coefficients
    for i=1:x1
        for j=1:x3
            [C,L] = wavedec(EEG.data(i,:,j),8,waveletFunction);
            cD1 = detcoef(C,L,2);                   %NOISY
            cD2 = detcoef(C,L,3);                   %
            cD3 = detcoef(C,L,4);                   %
            cD4 = detcoef(C,L,5);                   %
            cD5 = detcoef(C,L,6);                   %Beta
            cD6 = detcoef(C,L,7);                   %Alpha
            cD7 = detcoef(C,L,8);                   %Delta
            cA7 = appcoef(C,L,'db4',8);               %Theta
            %%% reconstruction of signal from 1-D wavelet coefficients
            D3 = wrcoef('d',C,L,waveletFunction,6); %BETA 
            D4 = wrcoef('d',C,L,waveletFunction,7); %ALPHA 
            D5 = wrcoef('d',C,L,waveletFunction,8); %THETA 
            A5 = wrcoef('a',C,L,waveletFunction,8); %DELTA
            DATA_Delta(i,:,j)=A5;
            DATA_Theta(i,:,j)=D5;
            DATA_Alpha(i,:,j)=D4;
            DATA_Beta(i,:,j)=D3;
        end
    end
    EEG.data=DATA_Alpha;
    EEG = eeg_checkset( EEG );
    EEG = pop_saveset( EEG, 'filename',list(s).name,'filepath',PATHOUT4);
    [ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
    STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
end
%%
























