%clearvars;
%a = arduino('COM8', 'Uno', 'Libraries', 'Servo');
n = 3000;
arr = zeros([1 n]);
for k = 1:n
    arr(k)=writeAnalogPin(a,'A0');
   % pause(0.0002);
end

x = mean(arr);
%arr = 15*arr;
%sound(arr,5000);