%Ham main tinh F0 theo FFT - thuat toan tu nghien cuu
%Ham su dung cac ham con
%   findF0s(~, ~)
%   sortZA(~, ~)
%   getTop3Rows(~)
%   getf0(~)
function [e] = main_findF0_FFT(dfty, tt)
    a = findF0s(dfty, tt);
    b = sortZA(a, 1);
    c = getTop3Rows(b);
    d = sortZA(c, 2);
    e = getf0(d);
end

