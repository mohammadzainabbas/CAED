function varargout = SoundManupilator(varargin)
% SOUNDMANUPILATOR MATLAB code for SoundManupilator.fig
%      SOUNDMANUPILATOR, by itself, creates a new SOUNDMANUPILATOR or raises the existing
%      singleton*.
%
%      H = SOUNDMANUPILATOR returns the handle to a new SOUNDMANUPILATOR or the handle to
%      the existing singleton*.
%
%      SOUNDMANUPILATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SOUNDMANUPILATOR.M with the given input arguments.
%
%      SOUNDMANUPILATOR('Property','Value',...) creates a new SOUNDMANUPILATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SoundManupilator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SoundManupilator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SoundManupilator

% Last Modified by GUIDE v2.5 30-Mar-2016 00:00:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SoundManupilator_OpeningFcn, ...
                   'gui_OutputFcn',  @SoundManupilator_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before SoundManupilator is made visible.
function SoundManupilator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SoundManupilator (see VARARGIN)

% Choose default command line output for SoundManupilator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SoundManupilator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SoundManupilator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
text = get(handles.text3,'Visible');
text1 = get(handles.text4,'Visible');
data = get(hObject,'UserData');
time = inputdlg('Enter duration of the recording','Time');
t = str2num(time{1});
obj = audiorecorder;
text1 = 'off';
set(handles.text4,'Visible',text1);
text = 'on';
set(handles.text3,'Visible',text);
recordblocking(obj,t);
text = 'off';
set(handles.text3,'Visible',text);
text1 = 'on';
set(handles.text4,'Visible',text1);
audio = getaudiodata(obj);
data.snd = audio;
set(hObject,'UserData',data);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
data = get(handles.pushbutton1,'UserData');
audio = data.snd;
[name,path] = uiputfile('*.wav', 'Save Audio File','untitled.wav');
filepath = fullfile(path,name);
audiowrite(filepath,audio,8000);
set(handles.pushbutton1,'UserData',data);
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
data = get(handles.pushbutton1,'UserData');
audio = data.snd;
sound(audio);
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
data = get(handles.pushbutton1,'UserData');
audio = data.snd;
fre = inputdlg('Enter Frequency:','Change Frequency');
frequency = str2num(fre{1});
soundsc(audio,frequency);
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
data = get(handles.pushbutton1,'UserData');
audio = data.snd;
volume = inputdlg('Enter amount of Volume Up:','Increase Volume');
vol = str2num(volume{1});
incr = audio*vol;
data.snd = incr;
set(handles.pushbutton1,'UserData',data);
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
data = get(handles.pushbutton1,'UserData');
audio = data.snd;
volume = inputdlg('Enter amount of Volume Down:','Decrease Volume');
vol = str2num(volume{1});
decr = audio*(1/vol);
data.snd = decr;
set(handles.pushbutton1,'UserData',data);
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
obj = audiorecorder;
t1 = inputdlg('Enter Duration:','Sound 1');
time1 = str2num(t1{1});
recordblocking(obj,time1);
audio1 = getaudiodata(obj);
t2 = inputdlg('Enter Duration:','Sound 2');
time2 = str2num(t2{1});
recordblocking(obj,time2);
audio2 = getaudiodata(obj);
mix = audio1+audio2;
data.snd = mix;
set(handles.pushbutton1,'UserData',data);
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
data = get(handles.pushbutton1,'UserData');
audio = data.snd;
o=zeros(2000,1);
aud=[o;audio*.7];
x=[audio;o];
echo=x+aud;
sound(echo);
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
data = get(handles.pushbutton1,'UserData');
audio = data.snd;
start = inputdlg('Enter Start Time:','Audio Extraction');
strt = (str2num(start{1}))*8000;
ending = inputdlg('Enter End Time:','Audio Extraction');
en = (str2num(ending{1}))*8000;
extract = audio(strt:en,1);
data.snd = extract;
set(handles.pushbutton1,'UserData',data);
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
