
quant1=max(Input1)/(2^7-1);
y=round(Input1/quant);
signe=uint8((sign(y)'+1)/2);
out=[signe dec2bin(abs(y),7)];