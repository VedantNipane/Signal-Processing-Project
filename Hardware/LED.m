a = arduino('COM8', 'Uno', 'Libraries', 'Servo');

arr = [5,15,10,20];

for k = 1:length(arr)
    if(arr(k)>=11)
        writeDigitalPin(a,'D5',1);
        writeDigitalPin(a,'D6',0);
    else
        writeDigitalPin(a,'D6',1);
        writeDigitalPin(a,'D5',0);
    end
    pause(2);
end