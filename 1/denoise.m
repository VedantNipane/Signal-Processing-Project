[y, Fs] = audioread("equalizer_noisy.wav");
figure();
plot(abs(fftshift(fft(y))));
M = 6;
gain = [0, 1, 1, 1, 1, 1];
r = equalize(M, gain, y, Fs);
figure();
sound(10*r, Fs);