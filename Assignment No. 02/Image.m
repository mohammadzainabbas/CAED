function varargout = Image(varargin)
% IMAGE MATLAB code for Image.fig
%      IMAGE, by itself, creates a new IMAGE or raises the existing
%      singleton*.
%
%      H = IMAGE returns the handle to a new IMAGE or the handle to
%      the existing singleton*.
%
%      IMAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMAGE.M with the given input arguments.
%
%      IMAGE('Property','Value',...) creates a new IMAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Image_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Image_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Image

% Last Modified by GUIDE v2.5 30-Mar-2016 23:17:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Image_OpeningFcn, ...
                   'gui_OutputFcn',  @Image_OutputFcn, ...
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


% --- Executes just before Image is made visible.
function Image_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Image (see VARARGIN)

% Choose default command line output for Image
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
    
% UIWAIT makes Image wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Image_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function filename = pushbutton1_Callback(hObject, eventdata, handles)
[FileName,FilePath]=uigetfile('*.jpg;*.png;*.bmp','Select an Image File');
filename = fullfile(FilePath,FileName);
data = get(hObject,'UserData');
data.img = imread(filename);
original = data.img;
data.org = original;
set(hObject,'UserData',data);
imshow(filename);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
data = get(handles.pushbutton1,'UserData');
image = data.img;
flip = imrotate(image,-90);
data.img = flip;
imshow(flip);
set(handles.pushbutton1,'UserData',data);
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
data = get(handles.pushbutton1,'UserData');
image = data.img;
flip = imrotate(image,90);
data.img = flip;
imshow(flip);
set(handles.pushbutton1,'UserData',data);
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
data = get(handles.pushbutton1,'UserData');
image = data.img;
n = inputdlg('Enter Zoom In Factor','Input');
factor = str2num(n{1});
camzoom(factor);
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
data = get(handles.pushbutton1,'UserData');
image = data.img;
n = inputdlg('Enter Zoom Out Factor','Input');
factor = str2num(n{1});
camzoom(factor);
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
data = get(handles.pushbutton1,'UserData');
image = data.img;
image = image.*1.05;
data.img = image;
imshow(image);
set(handles.pushbutton1,'UserData',data);
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
data = get(handles.pushbutton1,'UserData');
image = data.img;
image = image./1.05;
data.img = image;
imshow(image);
set(handles.pushbutton1,'UserData',data);
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
data = get(handles.pushbutton1,'UserData');
image = data.img;
crop = imcrop(image);
data.img = crop;
imshow(crop);
set(handles.pushbutton1,'UserData',data);
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
data = get(handles.pushbutton1,'UserData');
image = data.img;
[name,path] = uiputfile('*.jpg;*.png;*.bmp','Save Image','untitled.jpg');
filepath = fullfile(path,name);
imwrite(image,filepath);
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
data = get(handles.pushbutton1,'UserData');
image = data.org;
imshow(image);
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
