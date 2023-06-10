sample_len = 2000;
[xn,Fs1] = audioread('file_example_WAV_1MG.wav');
freq_arr = zeros([1 floor(length(xn)/sample_len)]);

for k = 1:(length(xn)/sample_len)
    xn_sampled = [xn(sample_len*(k-1)+1:sample_len*k,1)];
    xn_fft = fft(xn_sampled);
    xn_fft = fftshift(xn_fft);
    [ftt_max,index] = max(xn_fft(1001:sample_len));
    freq_max = index*Fs1/sample_len;
    freq_arr(k) = freq_max;
end

a = arduino('COM8', 'Uno', 'Libraries', 'Servo');
for m =1:length(freq_arr)
    playTone(a,"D5",freq_arr(m));
    pause(sample_len/Fs1);
end

    