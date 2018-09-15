%Lay tat ca cac diem co the la dinh cua do thi tren mien tan so
function [A] = findF0s(dfty, t)
    A = zeros(14, 2);
    count = 1;
%     for i = 2 : (length(dfty))
%         last = dfty(i);
%         fist = dfty(i-1);
%         if count == 5
%             break;
%         end        
%         if last > fist
%             continue;
%         elseif last<fist
%             A(count, 1) = dfty(i);
%             A(count, 2) = t(i);
%             count = count +1;
%         end
%     end
    
    for e = 2 : (length(dfty))
        last = dfty(e);
        fist = dfty(e-1);
        if count == 15
            break;
        end        
        if (last < fist)
            continue;
        elseif last>fist
            A(count, 1) = dfty(e);
            A(count, 2) = t(e);
            count = count +1;
        end
    end    
end