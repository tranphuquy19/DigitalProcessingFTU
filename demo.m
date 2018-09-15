%File demo code MatLab - deadline Thu 7, ngay 5, thang 5. Nhom 15 (16 cu~)

%Noi dung bao cao:
%   Tinh toan tan so giong noi f0 tu cac du lieu thu duoc tu buoi thuc hanh
% thu 2, tren mien tan so va thoi gian

%Tao cac gia tri, cac bien can thiet (y, Fs, dfty, tt)
genData;

%Ve do thi
drawData;
%**************************************************************************

%TIM HIEU VE THUAT TOAN TIM F0 TREN MIEN TAN SO

%Tim F0 tren mien tan so thong qua FFT
main_findF0_FFT(dfty, tt)
    
%Tim cac dinh co chua gia tri can thiet de tinh f0 
    a = findF0s(dfty, tt)
    
    plot(tt, dfty) %~Ve do thi
    xlabel('Hz')
    ylabel('dB')
    title('Linear Spectrum')
%Sap xep giam dan theo gia tri bien do dB
    b = sortZA(a, 1)
%Lay ra 3 gia tri dau tien sau sort
    c = getTop3Rows(b)
%Sap xep giam dan theo gia tri tan so Hz    
    d = sortZA(c, 2)
%Tinh f0
    e = getf0(d)
    
%Ket qua thu duoc cua tung ban
    fprintf('\nQuy f0 = %f\n', main_findF0_FFT(dfty, tt));
    fprintf('Son f0 = %f\n', main_findF0_FFT(dfty2, tt2));
    fprintf('Thu f0 = %f\n', main_findF0_FFT(dfty3, tt3));
%*************************************************************************

%TIM HIEU THUAT TOAN TINH F0 TREN MIEN THOI GIAN

%Tinh f0 tren mien thoi gian
    main_findF0(y3, Fs3)
 
%Tim cac dinh cuc bo (local max - peaks) cua tin hieu
    a = findpeaks(y3)
    
        plot(t3, y3)%~Ve do thi
        xlabel('Second')
        ylabel('Bien do')
        
    b = findpeaks(a)
    
    c = findpeaks(b)

%Tu cac dinh chung ta co. Tim ra 2 dinh dai dien cho moi chu ki T, va cac nhau 1 khoang = T
%Tim giua 2 dinh do, co bao nhieu diem nam giua 2 dinh (luu vao $Count)
%Ta di tinh f0:
%    Ta co: 2 dinh pk1, pk2 & Fs (tan so lay mau)
%       Chu ki: T = Count/Fs;
%       
%       Vi du: Tan so lay mau Fs = 8k, giua 2 dinh pk1 & pk2 co Count = 4k;
%       ==>Trong 1s thu duoc 8k diem || Giua 2 dinh co 4k diem -> T =
%       4k/8k=0.5s
%Tan so f0 = 1/T

%--------------------------------------------------------------------------
%NHUOC DIEM CUA THUAT TOAN TIM F0 TREN MIEN THOI GIAN

%   Doi voi cac tin hieu ma trong 1 chu ki T, co 2 OR nhieu peak co gia tri
%   gan bang nhau thi qua trinh chon pk1, pk2 se co kha nang sai sot
%Vi du:
    plot(t2, y2) %~Tin hieu thu duoc cua ban Son (am \o)
    xlabel('Second')
    ylabel('Bien do')
%Khac phuc nhuoc diem:
%   Neu ket qua tra ve 1 gia tri, ma ta nghi ngo no sai (vd: tan so f0 tra
%   ve cua 1 ban nam >250Hz thi ta phai xet tiep cac peaks sau do
%   Lay pk3 sau pk2, Count(luc sau) = Count(ban dau) + Count(pk2->pk3)
%   T = Count(luc sau) / Fs || f0 = 1/T;

%Ket qua thu duoc cua tung ban
    fprintf('\nQuy f0 = %f\n', main_findF0(y, Fs));
    fprintf('Son f0 = %f\n', main_findF0(y2, Fs2));
    fprintf('Thu f0 = %f\n', main_findF0(y3, Fs3));
    
%Ket: nhom 16 co su tham gia cua cac ban
%   Tran Phu Quy (coding, thuat toan, xu li du lieu dau vao)
%   Nguyen Thi Anh Thu (Chinh sua, viet bao cao)
%   Nguyen Truong Son   (Thu am, tim cac sai sot)
% 
%   Moi thuat toan, script trong bao cao deu do 100% nhom tu lam va nghien
%   cuu khong co Copy tu nguon nao.
%   Sai so:
    imshow(imread('data\saiso.PNG'));
%   Tai lieu tham khao: Tu trang MathWorks ham findpeaks(y) link:https://www.mathworks.com/help/signal/ref/findpeaks.html

%***********************THANK YOU FOR WATCHING****************************%

    