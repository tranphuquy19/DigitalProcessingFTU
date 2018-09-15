%sort tren a, b binding theo a
function [S] = sortZA(a, choose)
    S = a;
    if choose == 1
        for i =1 : length(a)-1
        for j = i+1 : length(a)
            if S(j, 1)>S(i, 1)
                temp = S(i, 1);
                temp2 = S(i, 2);
                S(i, 1) = S(j, 1);
                S(i, 2) = S(j, 2);
                S(j, 1) = temp;
                S(j, 2) = temp2;
            end
        end
        end
    elseif choose == 2
        for i =1 : length(a)-1
        for j = i+1 : length(a)
            if S(j, 2)>S(i, 2)
                temp = S(i, 2);
                temp2 = S(i, 1);
                S(i, 2) = S(j, 2);
                S(i, 1) = S(j, 1);
                S(j, 2) = temp;
                S(j, 1) = temp2;
            end
        end
        end
    end
end