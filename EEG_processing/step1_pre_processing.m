%%
PATH1='/.../step1_EEG_dataset/';
PATH2='/.../step3_EEG_ICA_data/';
for i=1:69
    EEG = pop_loadset('filename',[num2str(i),'.set'],'filepath',PATH1);
    [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
    EEG = pop_eegfiltnew(EEG, 0.5,45,6600,0,[],1);
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'gui','off'); 
    EEG = eeg_checkset( EEG );
    A=EEG.data-EEG.data(18,:)/2;
    EEG.data=A;
    EEG = eeg_checkset( EEG );
    EEG = pop_select( EEG,'nochannel',{'M1' 'HEO' 'VEO' 'EKG' 'TRIGGER'});
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 2,'gui','off'); 
    EEG = eeg_checkset( EEG );
    EEG = pop_runica(EEG, 'extended',1,'interupt','on');
    [ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
    EEG = eeg_checkset( EEG );
    EEG = pop_saveset( EEG, 'filename',[num2str(i),'.set'],'filepath',PATH2);
    [ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
    STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
end


