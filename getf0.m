%Tinh gia tri f0 | dung cho mien tan so
function [f0] = getf0(a)
    f1 =round(a(3, 2)/(a(1,2)-a(2,2)));
    f0 = a(3, 2) / f1;
end