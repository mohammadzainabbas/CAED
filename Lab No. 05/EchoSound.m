function EchoSound()
a=getSound();
o=zeros(2000,1);
x=[a;o];
y=[o;a*0.6];
z=x+y;
sound(z);
end
function y=getSound()
duration=input('Enter the duration of recording ');
%Record your voice for 5 seconds
recordingobject = audiorecorder;
disp('Start Speaking :');
recordblocking (recordingobject,duration);     %Connect audio device with MATLAB
disp('End Speaking :');
%Fs = get(recordingobject, 'SampleRate');     %Sampling Rate in Fs
y=getaudiodata(recordingobject);        %Convert it in array
end