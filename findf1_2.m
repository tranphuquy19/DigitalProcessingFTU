%Ham khao sat va tra ve gia tri cua cac dinh cuc bo ke nhau | dung cho f0
%   mien thoi gian
function [S] = findf1_2(pk)
    S = zeros(3,1);
    for i = 3 : length(pk)
        if pk(i) > pk(2)
            tb = pk(2)/pk(i);
            if tb>=0.85
                S(1) = pk(2);
                S(2) = pk(i);
                S(3) = i;
                break;
            end
        else
            tb = pk(i)/pk(2);
            if tb>=0.85
                S(1) = pk(2);
                S(2) = pk(i);
                S(3) = i;
                break;
            end
        end
    end
end