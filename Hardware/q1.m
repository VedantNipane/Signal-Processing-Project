clearvars;
a = arduino('COM8', 'Uno', 'Libraries', 'Servo');
n = 1000;%Size can be varying
%arr = zeros([1 n]);
tic
for k = 1:n
    arr=readVoltage(a,'A0');
    %pause(0.1);
    writePWMVoltage(a,'D5',arr);
end
a = toc;
disp(a);