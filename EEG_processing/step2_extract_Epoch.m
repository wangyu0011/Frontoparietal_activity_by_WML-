%%
PATH1='/.../step4_EEG_clear_data/';
PATH2='/.../step5_ERP_memory/';
for i=1:23
    try
        EEG = pop_loadset('filename',['sub_',num2str(i),'.set'],'filepath',PATH1);
        [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
        EEG = eeg_checkset( EEG );
        EEG = pop_epoch( EEG, {  '17'  '18'  }, [-0.35         1.3], 'newname', 'EEG', 'epochinfo', 'yes');
        [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'gui','off'); 
        EEG = eeg_checkset( EEG );
        EEG = pop_rmbase( EEG, [-400    0]);
        [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 2,'gui','off'); 
        EEG = eeg_checkset( EEG );
        EEG = pop_saveset( EEG, 'filename',['sub_mem_',num2str(i),'.set'],'filepath',PATH2);
        [ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
        STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
    catch

    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PATH1='/media/wangyu/新加卷2/Paper1/EEG_data/EEG_pre_processing/step4_EEG_clear_data/';
PATH2='/media/wangyu/新加卷2/Paper1/EEG_data/EEG_pre_processing/step5_ERP_test/';
for i=1:23
    try
        EEG = pop_loadset('filename',['sub_',num2str(i),'.set'],'filepath',PATH1);
        [ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
        EEG = eeg_checkset( EEG );
        EEG = pop_epoch( EEG, {  '9'  '10'  }, [-0.35         1.3], 'newname', 'EEG', 'epochinfo', 'yes');
        [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'gui','off'); 
        EEG = eeg_checkset( EEG );
        EEG = pop_rmbase( EEG, [-400    0]);
        [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 2,'gui','off'); 
        EEG = eeg_checkset( EEG );
        EEG = pop_saveset( EEG, 'filename',['sub_mat_',num2str(i),'.set'],'filepath',PATH2);
        [ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
        STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
    catch

    end
end
