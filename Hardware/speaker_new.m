sample_len = 2000;
[xn,Fs1] = audioread('file_example_WAV_1MG.wav');
%freq_arr = zeros([1 floor(length(xn)/sample_len)]);
a = arduino('COM8', 'Uno', 'Libraries', 'Servo');

xn_new = zeros([1 sample_len]);
for k = 1:sample_len/2
    xn_new(k) = k*Fs1/sample_len;
end

for k = 1:(length(xn)/sample_len)
    xn_sampled = [xn(sample_len*(k-1)+1:sample_len*k,1)];
    xn_fft = fft(xn_sampled);
    %xn_fft = transpose(fftshift(xn_fft));
    freq_arr = (1:sample_len)*Fs1/sample_len;
    %rev_freq = flip((freq_arr), 1);
    %freq_arr = [rev_freq,freq_arr];
    disp('Hello');
%     [freq,index] = xn_fft(1001:sample_len);
    %freq_max = index*Fs1/sample_len;
    %freq_arr(k) = freq_max
    for m = 1:length(freq_arr)
        playTone(a,"D5",freq_arr(m),sample_len/Fs1);
    end
end
   