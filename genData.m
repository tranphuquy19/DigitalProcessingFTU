%%Khoi tao cac gia tri can thiet

%%Quy_am \a_tan so lay mau Fs=8kHz_do dai tin hieu la 30 milisecond
[y,Fs]=audioread('data\QuyAudio\a-30ms-8kHz.wav');
max_value=max(abs(y));
y=y/max_value;
t=1/Fs:1/Fs:(length(y)/Fs);
dfty=abs(fft(y));
dfty=dfty(1:((length(dfty)-1)/2));
tt=linspace(1/Fs,Fs/2,length(dfty));

%%Son_am \o_tan so lay mau Fs=8kHz_do dai tin hieu la 30 milisecond
[y2,Fs2]=audioread('data\SonAudio\o-30ms-8kHz.wav');
max_value2=max(abs(y2));
y2=y2/max_value2;
t2=1/Fs2:1/Fs2:(length(y2)/Fs2);
dfty2=abs(fft(y2));
dfty2=dfty2(1:((length(dfty2)-1)/2));
tt2=linspace(1/Fs2,Fs2/2,length(dfty2));

%%Thu_am \e_tan so lay mau Fs=8kHz_do dai tin hieu la 30 milisecond
[y3,Fs3]=audioread('data\ThuAudio\e-30ms-8kHz.wav');
max_value3=max(abs(y3));
y3=y3/max_value3;
t3=1/Fs3:1/Fs3:(length(y3)/Fs3);
dfty3=abs(fft(y3));
dfty3=dfty3(1:(length(dfty3)/2));
tt3=linspace(1/Fs3,Fs3/2,length(dfty3));