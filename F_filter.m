%Loc tat ca cac diem co tan so tu 100->450Hz
function [S] = F_filter(a)
    S = zeros(8, 2);
    count = 1;
    for i = 1 : length(a)
        if (a(i, 2)>=100) || (a(i, 2) <=450)
           S(count, 1) = a(i, 1);
           S(count, 2) = a(i, 2);
           count = count +1;
        end
    end
end