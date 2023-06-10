%%%%%%%%%%%%% 2.mp4 %%%%%%%%%%
a = arduino('COM8', 'Uno', 'Libraries', 'Servo');
N=100;
[xn,Fs]=audioread('2.mp4');

p=length(xn);
z=zeros(1,p);
% for q=1:p
%     z(1,q)=n(q,1);
% end
z=transpose(xn);

A=zeros(1,N);
y=[A,z];

w=zeros(1,p+N);

for k=2:length(w)
    w(k)=w(k-1)+y(k);
end

t=zeros(1,p+N);

for k=1:length(w)
    if ((k-N)>0)
        t(k)=(w(k)-w(k-N))/N;
    end
    if ((k-N)<0)
        t(k)=w(k)/N;
    end
end

demo=abs(fft(t));
[temp, index]=max(demo);

if index>150
    disp("pad");
    writeDigitalPin(a,'D5',1);
    writeDigitalPin(a,'D6',0);
else
    disp("bat");
    writeDigitalPin(a,'D6',1);
    writeDigitalPin(a,'D5',0);
end

xq=1:length(t);
subplot(2,2,1);
sound(t,Fs);
plot(xq,abs(fft(t)));
title("2.mp4");

%%%%%%%%%%%%%%%%%%%%%%% 2n.mp4 %%%%%%%%%%%%%%%%%%%%

[xn,Fs]=audioread('2n.mp4');

p=length(xn);
z=zeros(1,p);
% for q=1:p
%     z(1,q)=n(q,1);
% end
z=transpose(xn);

A=zeros(1,N);
y=[A,z];

w=zeros(1,p+N);

for k=2:length(w)
    w(k)=w(k-1)+y(k);
end

t=zeros(1,p+N);

for k=1:length(w)
    if ((k-N)>0)
        t(k)=(w(k)-w(k-N))/N;
    end
    if ((k-N)<0)
        t(k)=w(k)/N;
    end
end

demo=abs(fft(t));
[temp, index]=max(demo);

if index>150
    disp("pad");
    writeDigitalPin(a,'D5',1);
    writeDigitalPin(a,'D6',0);
else
    disp("bat");
    writeDigitalPin(a,'D6',1);
    writeDigitalPin(a,'D5',0);
end

xq=1:length(t);
subplot(2,2,2);
sound(t,Fs);
plot(xq,abs(fft(t)));
title("2n.mp4");

%%%%%%%%%%%%%%%%%%%%% 1.mp4 %%%%%%%%%%%%%%%%%%%%

N=100;
[xn,Fs]=audioread('1.mp4');

p=length(xn);
z=zeros(1,p);
% for q=1:p
%     z(1,q)=n(q,1);
% end
z=transpose(xn);

A=zeros(1,N);
y=[A,z];

w=zeros(1,p+N);

for k=2:length(w)
    w(k)=w(k-1)+y(k);
end

t=zeros(1,p+N);

for k=1:length(w)
    if ((k-N)>0)
        t(k)=(w(k)-w(k-N))/N;
    end
    if ((k-N)<0)
        t(k)=w(k)/N;
    end
end

demo=abs(fft(t));
[temp, index]=max(demo);


if index>150
    disp("pad");
    writeDigitalPin(a,'D5',1);
    writeDigitalPin(a,'D6',0);
else
    disp("bat");
    writeDigitalPin(a,'D6',1);
    writeDigitalPin(a,'D5',0);
end

xq=1:length(t);
subplot(2,2,3);
sound(t,Fs);
plot(xq,abs(fft(t)));
title("1.mp4");

%---------------------- 1n



[xn,Fs]=audioread('1n.mp4');

p=length(xn);
z=zeros(1,p);
% for q=1:p
%     z(1,q)=n(q,1);
% end
z=transpose(xn);

A=zeros(1,N);
y=[A,z];

w=zeros(1,p+N);

for k=2:length(w)
    w(k)=w(k-1)+y(k);
end

t=zeros(1,p+N);

for k=1:length(w)
    if ((k-N)>0)
        t(k)=(w(k)-w(k-N))/N;
    end
    if ((k-N)<0)
        t(k)=w(k)/N;
    end
end

demo=abs(fft(t));
[temp, index]=max(demo);
disp(index);


if index>150
    disp("pad");
    writeDigitalPin(a,'D5',1);
    writeDigitalPin(a,'D6',0);
else
    disp("bat");
    writeDigitalPin(a,'D6',1);
    writeDigitalPin(a,'D5',0);
end

xq=1:length(t);
subplot(2,2,4);
sound(t,Fs);
plot(xq,abs(fft(t)));
title("1n.mp4");


