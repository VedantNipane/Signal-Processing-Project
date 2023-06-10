%%%%%%%%%%%%%%%%%%%%%% 2.mp4 %%%%%%%%%%%%%%%
a = arduino('COM8', 'Uno', 'Libraries', 'Servo');
N=260;
[xn,Fs]=audioread('2.mp4');

y=zeros(1,length(xn));

for k=1:length(xn)-N
   
    A=xn(k:k+N);
    sort(A);
    if (rem(N,2)==0)
        y(k)=(A(N/2)+A(N/2+1))/2;
    else
        y(k)=A((N+1)/2);
    end
    
end
subplot(2,2,1);
sound(y,Fs);
plot(abs(fft(y)));
title("2.mp4");
demo=abs(fft(y));
[temp, index] =  max(demo);

if index>150
    disp("pad");
    writeDigitalPin(a,'D5',1);
    writeDigitalPin(a,'D6',0);
else
    disp("bat");
    writeDigitalPin(a,'D6',1);
    writeDigitalPin(a,'D5',0);
end
%pause(3);
%%%%% 1


[xn,Fs]=audioread('1.mp4');

y=zeros(1,length(xn));
for k=1:length(xn)-N
    A=xn(k:k+N);
    sort(A);
    if (rem(N,2)==0)
        y(k)=(A(N/2)+A(N/2+1))/2;
    else
        y(k)=A((N+1)/2);
    end
end
subplot(2,2,2);
sound(y,Fs);
plot(abs(fft(y)));
title("1.mp4");
demo=abs(fft(y));
[temp, index] =  max(demo);

if index>150
    disp("pad");
    writeDigitalPin(a,'D5',1);
    writeDigitalPin(a,'D6',0);
else
    disp("bat");
    writeDigitalPin(a,'D6',1);
    writeDigitalPin(a,'D5',0);
end
%pause(3);
%%%%%%%%%%%%%%%%%%%%%%%%% 1n.mp4 %%%%%%%%%%%%%%%%%%



[xn,Fs]=audioread('1n.mp4');

y=zeros(1,length(xn));
for k=1:length(xn)-N
    A=xn(k:k+N);
    sort(A);
    if (rem(N,2)==0)
        y(k)=(A(N/2)+A(N/2+1))/2;
    else
        y(k)=A((N+1)/2);
    end
end
subplot(2,2,3);
sound(y,Fs);
plot(abs(fft(y)));
title("1n.mp4");
demo=abs(fft(y));
[temp, index] =  max(demo);

if index>150
    disp("pad");
    writeDigitalPin(a,'D5',1);
    writeDigitalPin(a,'D6',0);
else
    disp("bat");
    writeDigitalPin(a,'D6',1);
    writeDigitalPin(a,'D5',0);
end
%pause(3);
%%%%%%%%%%%%%%%%%%% 2n.mp4 %%%%%%%%%%%%%%%%%%%



[xn,Fs]=audioread('2n.mp4');

y=zeros(1,length(xn));
for k=1:length(xn)-N
    A=xn(k:k+N);
    sort(A);
    if (rem(N,2)==0)
        y(k)=(A(N/2)+A(N/2+1))/2;
    else
        y(k)=A((N+1)/2);
    end
end
subplot(2,2,4);
sound(y,Fs);
plot(abs(fft(y)));
title("2n.mp4");
demo=abs(fft(y));
[temp, index] =  max(demo);

if index>150
    disp("pad");
    writeDigitalPin(a,'D5',1);
    writeDigitalPin(a,'D6',0);
else
    disp("bat");
    writeDigitalPin(a,'D6',1);
    writeDigitalPin(a,'D5',0);
end
%pause(3);