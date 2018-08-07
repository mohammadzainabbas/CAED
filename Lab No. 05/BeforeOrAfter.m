function BeforeOrAfter()
disp('1) Before Echo ');
disp('2) After Echo ');
x=input('Enter your choice :');
switch x
    case 1
        BeforeEchoSound();
    case 2
        AfterEchoSound();
end
end
function AfterEchoSound()
a=getSound();
o=zeros(2000,1);
x=[a;o];
y=[o;a*.7];
z=x+y;
sound(z);
end
function BeforeEchoSound()
a=getSound();
o=zeros(2000,1);
y=[o;a*.7];
x=[a;o];
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