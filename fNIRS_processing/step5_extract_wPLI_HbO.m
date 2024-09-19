%%
PATH1='/.../fNIRS_data/PLI_WML_fft/sub2_HbO/';
PATH2='/.../fNIRS_data/PLI_WML_fft/';
list_F=[1,2,4,5];
list_P=[14,15,16,18];
DATA1=zeros(23,16);
DATA2=zeros(23,16);
DATA3=zeros(23,16);
t=0;
for s=1:23
    try
        load([PATH1,'High',num2str(s),'.mat']);
        X=DATA;
        [x1,x2,x3]=size(X);
        pli=[];
        wpli=[];
        dwpli=[];
        t=t+1;
        x1
        for k=1:x1
            for k1=1:4
                for k2=1:4
                    XX1=X(k,1:2243,list_F(k1));
                    XX2=X(k,1:2243,list_P(k2));
                    sig1=hilbert(XX1);%hilbert
                    sig2=hilbert(XX2);
                    % cross-spectral density
                    cdd = sig1 .* conj(sig2);
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
        YY1=reshape(mean(pli,1),1,16);
        YY2=reshape(mean(wpli,1),1,16);
        YY3=reshape(mean(dwpli,1),1,16);
        DATA1(t,:)=YY1;
        DATA2(t,:)=YY2;
        DATA3(t,:)=YY3;
    catch
        
    end
end  
save([PATH2,'High_HbO_1.mat'],'DATA1');
save([PATH2,'High_HbO_2.mat'],'DATA2');
save([PATH2,'High_HbO_3.mat'],'DATA3');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PATH1='/.../fNIRS_data/PLI_WML_fft/sub2_HbO/';
PATH2='/.../fNIRS_data/PLI_WML_fft/';
list_F=[1,2,4,5];
list_P=[14,15,16,18];
DATA1=zeros(23,16);
DATA2=zeros(23,16);
DATA3=zeros(23,16);
t=0;
for s=1:23
    try
        load([PATH1,'Middle',num2str(s),'.mat']);
        X=DATA;
        [x1,x2,x3]=size(X);
        pli=[];
        wpli=[];
        dwpli=[];
        t=t+1;
        x1
        for k=1:x1
            for k1=1:4
                for k2=1:4
                    XX1=X(k,1:2243,list_F(k1));
                    XX2=X(k,1:2243,list_P(k2));
                    sig1=hilbert(XX1);%hilbert
                    sig2=hilbert(XX2);
                    % cross-spectral density
                    cdd = sig1 .* conj(sig2);
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
        YY1=reshape(mean(pli,1),1,16);
        YY2=reshape(mean(wpli,1),1,16);
        YY3=reshape(mean(dwpli,1),1,16);
        DATA1(t,:)=YY1;
        DATA2(t,:)=YY2;
        DATA3(t,:)=YY3;
    catch
        
    end
end  
save([PATH2,'Middle_HbO_1.mat'],'DATA1');
save([PATH2,'Middle_HbO_2.mat'],'DATA2');
save([PATH2,'Middle_HbO_3.mat'],'DATA3');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PATH1='/.../fNIRS_data/PLI_WML_fft/sub2_HbO/';
PATH2='/.../fNIRS_data/PLI_WML_fft/';
list_F=[1,2,4,5];
list_P=[14,15,16,18];
DATA1=zeros(23,16);
DATA2=zeros(23,16);
DATA3=zeros(23,16);
t=0;
for s=1:23
    try
        load([PATH1,'Low',num2str(s),'.mat']);
        X=DATA;
        [x1,x2,x3]=size(X);
        pli=[];
        wpli=[];
        dwpli=[];
        t=t+1;
        x1
        for k=1:x1
            for k1=1:4
                for k2=1:4
                    XX1=X(k,1:2243,list_F(k1));
                    XX2=X(k,1:2243,list_P(k2));
                    sig1=hilbert(XX1);%hilbert
                    sig2=hilbert(XX2);
                    % cross-spectral density
                    cdd = sig1 .* conj(sig2);
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
        YY1=reshape(mean(pli,1),1,16);
        YY2=reshape(mean(wpli,1),1,16);
        YY3=reshape(mean(dwpli,1),1,16);
        DATA1(t,:)=YY1;
        DATA2(t,:)=YY2;
        DATA3(t,:)=YY3;
    catch
        
    end
end  
save([PATH2,'Low_HbO_1.mat'],'DATA1');
save([PATH2,'Low_HbO_2.mat'],'DATA2');
save([PATH2,'Low_HbO_3.mat'],'DATA3');


















