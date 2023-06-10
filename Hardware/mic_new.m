clearvars;
a = arduino('COM8', 'Uno', 'Libraries', 'Servo');
n = 1000;%Size can be varying
%arr = zeros([1 n]);
tic

    arr=readVoltage(a,'A0');
am = toc;
disp(am);