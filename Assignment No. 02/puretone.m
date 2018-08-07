function audio = puretone(frequency,duration,fs)
t = [0:0.001:duration];
audio = sin(2*pi*frequency.*t);
end