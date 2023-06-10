function out = quant_fun(Input1)
    disp(Input1);
    quant1=max(Input1)/(2^3-1);
    y1=round(Input1/quant1);
    %disp(quant1);
    signe=uint8((sign(y1)'+1)/2);
    out=[signe dec2bin(abs(y1),3)];
end

