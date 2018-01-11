function varargout = lastRound2(varargin)
% lastRound2 MATLAB code for lastRound2.fig
%      lastRound2, by itself, creates a new lastRound2 or raises the existing
%      singleton*.
%
%      H = lastRound2 returns the handle to a new lastRound2 or the handle to
%      the existing singleton*.
%
%      lastRound2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in lastRound2.M with the given input arguments.
%
%      lastRound2('Property','Value',...) creates a new lastRound2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lastRound2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lastRound2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lastRound2

% Last Modified by GUIDE v2.5 10-Jan-2018 00:00:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lastRound2_OpeningFcn, ...
                   'gui_OutputFcn',  @lastRound2_OutputFcn, ...
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


% --- Executes just before lastRound2 is made visible.
function lastRound2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lastRound2 (see VARARGIN)

% Choose default command line output for lastRound2
handles.output = hObject;

%play opening theme tune

global point
point = 0;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lastRound2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lastRound2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)





% Get default command line output from handles structure

varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton1,'Enable','inactive')
set(handles.pushbutton2,'Enable','inactive')
set(handles.pushbutton3,'Enable','inactive')
X= get(handles.pushbutton1, 'string');

global A
global point
if strcmp(X,A(2,1))
     set(handles.figure1,'Color','green');
     pause(0.5)
   
    point = point +1;
else
     
 set(handles.figure1,'Color','red');
  pause(0.5)
    
end
q3


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton1,'Enable','inactive')
set(handles.pushbutton2,'Enable','inactive')
set(handles.pushbutton3,'Enable','inactive')
X= get(handles.pushbutton2, 'string');
global A
global point
if strcmp(X,A(2,1))
     set(handles.figure1,'Color','green');
     pause(0.5)
     point = point +1;
else
  
 set(handles.figure1,'Color','red');
  pause(0.5)
    
end
q3

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton1,'Enable','inactive')
set(handles.pushbutton2,'Enable','inactive')
set(handles.pushbutton3,'Enable','inactive')
X= get(handles.pushbutton3, 'string');
global A
global point

if strcmp(X,A(2,1))
     set(handles.figure1,'Color','green');
     pause(0.5)
   
    point = point +1;
else
     
 set(handles.figure1,'Color','red');
  pause(0.5)
    
end
q3
% --- Executes on button press in pushbutton4.



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
clear sound
[y,Fs] = audioread('Cash-Builder_Music.mp3');
sound(y,Fs)

set(handles.pushbutton1,'Visible','on')
set(handles.pushbutton2,'Visible','on')
set(handles.pushbutton3,'Visible','on')
set(handles.edit1,'Visible','on')
set(handles.edit2,'Visible','on')
set(handles.edit3,'Visible','on')
set(handles.pushbutton4,'Visible','off')
q3

 global point
 point = 0;
Timer = ;
for t=0:3
    Timer =3-t;
    set(handles.edit3,'string',Timer);
    pause(1)
if t==3

clear sound
set(handles.pushbutton1,'Enable','inactive')
set(handles.pushbutton2,'Enable','inactive')
set(handles.pushbutton3,'Enable','inactive')


ax2=axes('Units','pix','Position',[20 80 500 20]);
set(ax2,'Xtick',[],'Ytick',[],'Xlim',[0 1000]);
box on;
k=800;
for i=1:k
   
    axes(ax2)
    cla
	rectangle('Position',[0,0,(round(1000*i/k))+1,20],'FaceColor','r'); 
    text(480,10,[num2str(round(100*i/k)),'%']);
    pause(0.01)
end






end
    
end

% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
