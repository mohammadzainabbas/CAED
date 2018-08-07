function SoundManipular()
disp('Enter your choice :');
disp('1) Flip your sound ');
disp('2) Overlap your sound ');
disp('3) Increase Amplitude of your sound ');
disp('4) Decrease Amplitude of your sound ');
disp('5) Change Frequency of your sound ');
a=input('Your choice :');
switch a
    case 1
        x=Flip();
        disp('Flipped Sound is ');
        Play(x);
    case 2
        z=OverlapSound();
        disp('Overlap Sound is ');
        Play(z);
    case 3
        x=IncreaseAmplitude();
        disp('Your sound with increased amplitude ');
        Play(x);
    case 4
        x=DecreaseAmplitude();
        disp('Your sound with decreased amplitude ');
        Play(x);
    case 5
        ChangeFrequency();
end
end
function [y Fs]=getSound()
duration=input('Enter the duration of recording ');
%Record your voice for 5 seconds
recordingobject = audiorecorder;
disp('Start Speaking :');
recordblocking (recordingobject,duration);     %Connect audio device with MATLAB
disp('End Speaking :');
Fs = get(recordingobject, 'SampleRate');     %Sampling Rate in Fs
y=getaudiodata(recordingobject);        %Convert it in array
end
function Play(y)
sound(y);
end
function x=Flip()
[y Fs]=getSound();
x=flip(y);
end
function z=OverlapSound()
disp('First sound:');
[a b]=getSound();
pause(3);
disp('Second sound:');
[c d]=getSound();
z=a+c;
end
function y=IncreaseAmplitude()
[a b]=getSound();
x=input('Enter new amplitude : ');
y=a*x;
end
function y=DecreaseAmplitude()
[a b]=getSound();
x=input('Enter new amplitude : ');
y=a/x;
end
function ChangeFrequency()
[a b]=getSound();
disp('Sampling Frequency of your sound is : ');
disp(b);
NewFrequency=input('Enter new frequency ');
disp('New sound is :');
sound(a,b.*NewFrequency);
end
