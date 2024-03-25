%%      time-frequency analysis 
% clear all;
Rawfiles='/.../step5_ERP_memory/';
PATH='/.../step6_ERSP_memory/';
for i=1:23
    try
    EEG = pop_loadset([Rawfiles,num2str(i),'.set']);
    for elec = 1:30
        [ersp,itc,powbase,times,freqs,erspboot,itcboot]=pop_newtimef(EEG, 1, elec, [-350  1299], [2 6] ,'elocs', EEG.chanlocs, 'chaninfo',...
           EEG.chaninfo, 'caption', 'P6', 'baseline',[0], 'freqs', [4 45], 'ntimesout',200, 'plotphase', 'off', 'padratio',4);
        Timefreq{elec}.ersp=ersp;
        Timefreq{elec}.itc=itc;
        Timefreq{elec}.powbase=powbase;
        Timefreq{elec}.times=times;
        Timefreq{elec}.freqs=freqs;
        Timefreq{elec}.erspboot=erspboot;
        Timefreq{elec}.itcboot=itcboot;
    end
    save([PATH,num2str(i),'.mat'],'Timefreq');
    STUDY = []; CURRENTSTUDY = 0; ALLEEG = []; EEG=[]; CURRENTSET=[];
    close all;  
    catch
    end
end











