%Lay tat ca cac dinh cuc bo
function [pk] = getPeaks(y)
    a = findpeaks(y);
    b = findpeaks(a);
    c = findpeaks(b);
    pk = c;
    if size(c) < 5
        pk = b;
    end
    
end