function varargout = secondround2(varargin)
% SECONDROUND2 MATLAB code for secondround2.fig
%      SECONDROUND2, by itself, creates a new SECONDROUND2 or raises the existing
%      singleton*.
%
%      H = SECONDROUND2 returns the handle to a new SECONDROUND2 or the handle to
%      the existing singleton*.
%
%      SECONDROUND2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SECONDROUND2.M with the given input arguments.
%
%      SECONDROUND2('Property','Value',...) creates a new SECONDROUND2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before secondround2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to secondround2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help secondround2

% Last Modified by GUIDE v2.5 09-Jan-2018 18:27:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @secondround2_OpeningFcn, ...
                   'gui_OutputFcn',  @secondround2_OutputFcn, ...
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


% --- Executes just before secondround2 is made visible.
function secondround2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to secondround2 (see VARARGIN)

% Choose default command line output for secondround2
handles.output = hObject;


%Loads up the image of bradley walsh
bg_image = imread('bradleywalsh.jpg');
set(handles.pushbutton13, 'CData', bg_image);
guidata(hObject, handles);
%create a score for the chaser
global chaser
%set chaser score to 0
chaser =0;

% UIWAIT makes secondround2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = secondround2_OutputFcn(hObject, eventdata, handles) 
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
% numbutton is used inorder for the button to be clicked is known when you
% run chasercatch
global numbutton
numbutton = 1;
chasercatch


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global numbutton
numbutton = 2;
chasercatch


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global numbutton
numbutton = 3;
chasercatch

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton7,'String','');
set(handles.pushbutton8,'String','');
set (handles.pushbutton8,'Enable','inactive')
set (handles.pushbutton7,'Enable','inactive')
set (handles.pushbutton6,'Enable','inactive')
set(handles.pushbutton12,'Visible','on')
set (handles.pushbutton6,'BackgroundColor','blue')
global Score
Score = 2;


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton8,'String','');
set(handles.pushbutton6,'String','');
set (handles.pushbutton8,'Enable','inactive')
set (handles.pushbutton7,'Enable','inactive')
set (handles.pushbutton6,'Enable','inactive')
set(handles.pushbutton12,'Visible','on')
set (handles.pushbutton7,'BackgroundColor','blue')
global Score
Score = 3;


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set (handles.pushbutton8,'Enable','inactive')
set (handles.pushbutton7,'Enable','inactive')
set (handles.pushbutton6,'Enable','inactive')
set(handles.pushbutton12,'Visible','on')
set (handles.pushbutton8,'BackgroundColor','blue')
set(handles.pushbutton7,'String','');
set(handles.pushbutton6,'String','');
global Score
Score = 4;


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA

set(handles.pushbutton10,'Visible','off')
set(handles.edit3,'String','lets see who you will be up against today')


[y,Fs] = audioread('Chaser_walk_on_theme.mp3');
sound(y,Fs)
pause(0.5)
% genrates a number 1 to 3 each number is assigned a picture and generate
% when that number is chosen it displays the corresponding picture. this
% is done a 1000 times to give the impression of shuffling through opponents
for t = 1:1000
   x = randi(3);
   
    if x ==1
    bg_image = imread('chaser1.jpg');
    set(handles.pushbutton4, 'CData', bg_image);
    elseif   x == 2 
    bg_image = imread('chaser2.jpg');
    set(handles.pushbutton4, 'CData', bg_image);
    else
    bg_image = imread('chaser3.jpg');
    set(handles.pushbutton4, 'CData', bg_image);
    end
    
   pause(0.0018)
end

% when the final x is determined. The text box says who is your opponent
if x ==1
    set(handles.edit3,'String','It is the Beast')
elseif x==2
    set(handles.edit3,'String','It is the Governess')
else 
      set(handles.edit3,'String','It is the Barrister')
end
pause(3)
 set(handles.edit3,'String','Are you ready to begin?')
  set(handles.pushbutton10,'Visible','Off')
%Using the amount of cash won in the first round this calculates how much the chaser offers for his upper and lower offers  
global cash
upper = (1.4:0.2:3);
lower = (-1:0.2: 1);


upperoffer= cash + cash *upper(randi(length(upper)));
loweroffer = cash*lower(randi(length(lower)));
set(handles.edit3,'String','Select the amount you would like to play for')
 set(handles.pushbutton7,'string',cash)
 pause(1)
 set(handles.pushbutton6,'string',upperoffer)
 pause(1)
 set(handles.pushbutton8,'string',loweroffer)
 


    

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton1,'ForegroundColor','black');
set(handles.pushbutton2,'ForegroundColor','black');
set(handles.pushbutton3,'ForegroundColor','black');
set(handles.pushbutton1,'BackgroundColor',[1 1 1]);
set(handles.pushbutton2,'BackgroundColor',[1 1 1]);
set(handles.pushbutton3,'BackgroundColor',[1 1 1]);
set(handles.pushbutton1,'Enable','on')
set(handles.pushbutton2,'Enable','on')
set(handles.pushbutton3,'Enable','on')
set(handles.pushbutton1,'string','');
set(handles.pushbutton2,'string','');
set(handles.pushbutton3,'string','');
set(handles.edit3,'String','')
set(handles.pushbutton12,'visible','off')
secondroundquestionbank

global sec
global timer_switch
timer_switch = 0;
sec =5;
% plays the timer music and starts the timer. 
[y,Fs] = audioread('5_sec_countdown.mp3');
sound(y,Fs)
set(handles.pushbutton1,'Enable','on')
set(handles.pushbutton2,'Enable','on')
set(handles.pushbutton3,'Enable','on')
for t = 1:6
    
    if timer_switch ==1
       break  
    elseif t == 6
        set(handles.pushbutton1,'Enable','off')
        set(handles.pushbutton2,'Enable','off')
        set(handles.pushbutton3,'Enable','off')      
    end
   
    set(handles.edit4,'String',sec)
    pause(1)
    set(handles.edit4,'Visible','on')
    sec = sec - 1;
    end
    
   

disp(sec)
%runs when the timer hits 0
if sec == -1
set(handles.edit4,'Visible','off')
set(handles.edit3,'String','You have run out of time!!!')

chasercatch

pause(2)

end
set(handles.edit4,'Visible','off')
set(handles.pushbutton12,'visible','on')

   


 
 
