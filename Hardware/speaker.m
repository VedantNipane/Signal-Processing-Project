a = arduino('COM8', 'Uno', 'Libraries', 'Servo');
%[xn,Fs1] = audioread('file_example_WAV_1MG.wav');
%sound(xn);

freq1 = 329.628;
freq2 = 261.63;
freq3 = 392.00;
freq4 = 196.00;

arr1 = [freq1,freq2,freq3,freq4,freq1, freq3, freq4, freq2, freq1,freq1];
durt = [0.1,0.11,0.3,0.4,0.3,0.4,0.2,0.3,0.4,0.3];
delay = [0.2,0.4,0.2,0.4,0.5,0.25,0.26,0.34,0.26,0.3];

for k = 1:3
    for m =1:length(arr1)
        playTone(a,"D5",arr1(m));
        pause(delay(m));
    end
    pause(0.5);
end

