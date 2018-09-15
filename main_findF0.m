%Ham tinh F0 tren mien thoi gian, thuc hien dem cac diem giua hai peaks
function [F0] = main_findF0(y, Fs)
    count = 0;
    pk = getPeaks(y);
    S = findf1_2(pk);
    f1 = S(1);
    f2 = S(2);
    for i = 1 : length(y)
        if y(i) == f1
            count = count +1;
            z = i;
        end
        if count > 0
            if y(i) == f2
                break;
            else
                count = count +1;
            end
        end
    end
    F0 = 1/((count)/Fs);
    count2 = count;
    s3 = S(3) + 1;
    if F0 > 210
        for e = 1 : length(y)
            if y(e) == pk(s3)
                break;
            else
                count2 = count2 +1;
            end
        end
        F02 = 1/((count2-count-z)/Fs);
        fprintf('\nMaybe f0 = %f\n', F02);
    end
    
end
