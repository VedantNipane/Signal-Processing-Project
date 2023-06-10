[music, Fs] = audioread("vocal_music.wav");
[drums] = audioread("random_drum.mp3");
musicsignal=[music(:, 1);zeros(length(drums(:, 1))-length(music(:, 1)), 1)];
drum = drums(:, 1);
musicsignal = musicsignal/norm(musicsignal);
drum = drum/norm(drum);
maxm = max(max(abs(drum), max(abs(musicsignal))));
drum = drum/maxm;
musicsignal = musicsignal/maxm;

%%%% part for stft
windowLength = 128;
fftLength = 512;
overlapLength = 96;
win = hann(windowLength,"periodic");

DRUMSTFT = stft(drum, Fs, Window=win,OverlapLength=overlapLength,FFTLength=fftLength,FrequencyRange="onesided");
MUSICSIGNALSTFT = stft(musicsignal, Fs, Window=win,OverlapLength=overlapLength,FFTLength=fftLength,FrequencyRange="onesided");


notch = abs(DRUMSTFT) >= abs(MUSICSIGNALSTFT);

classified_voice_ft = MUSICSIGNALSTFT.*(notch);
classified_voice = istft(classified_voice_ft,Window=win,OverlapLength=overlapLength,FFTLength=fftLength,FrequencyRange="onesided");
sound(10*classified_voice, Fs);

