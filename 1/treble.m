[y, Fs] = audioread("treble.mpeg");
figure();
plot(abs(fftshift(fft(y))));
M = 6;
gain = [0, 1, 1, 10, 10, 10];
r = equalize(M, gain, y, Fs);
figure();
sound(10*r, Fs);