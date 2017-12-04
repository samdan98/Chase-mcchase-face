function varargout = Questionbuilder(varargin)
% QUESTIONBUILDER MATLAB code for Questionbuilder.fig
%      QUESTIONBUILDER, by itself, creates a new QUESTIONBUILDER or raises the existing
%      singleton*.
%
%      H = QUESTIONBUILDER returns the handle to a new QUESTIONBUILDER or the handle to
%      the existing singleton*.
%
%      QUESTIONBUILDER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QUESTIONBUILDER.M with the given input arguments.
%
%      QUESTIONBUILDER('Property','Value',...) creates a new QUESTIONBUILDER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Questionbuilder_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Questionbuilder_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Questionbuilder

% Last Modified by GUIDE v2.5 02-Dec-2017 14:49:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Questionbuilder_OpeningFcn, ...
                   'gui_OutputFcn',  @Questionbuilder_OutputFcn, ...
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


% --- Executes just before Questionbuilder is made visible.
function Questionbuilder_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA
% varargin   command line arguments to Questionbuilder (see VARARGIN)

% Choose default command line output for Questionbuilder
handles.output = hObject;

% Update handles structure

 
x = 0;
handles.mydata2 = x;

gen_call
  






guidata(hObject, handles);

% UIWAIT makes Questionbuilder wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = Questionbuilder_OutputFcn(hObject, eventdata, handles) 
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
X= get(handles.pushbutton1, 'string');

Z = handles.MyData;
if strcmp(X,Z(2,1))
    msgbox('right')
%   handles.mydata2 = handles.mydata2 + 1000;
%   set(handles.edit2, 'String', num2str(handles.mydata2));
% 
%   disp(handles.mydata2)
else
    msgbox('wrong')
    
end


    gen_call


 
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X= get(handles.pushbutton2, 'string');

Z = MyData;
if strcmp(X,Z(2,1))
    msgbox('Right')
%      handles.mydata2 = handles.mydata2 + 1000;
%      set(handles.edit2, 'String', num2str(handles.mydata2));
%      disp(handles.mydata2)

else 
    msgbox('wrong')
   
 end
    gen_call



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X= get(handles.pushbutton3, 'string');

Z = handles.MyData;
if strcmp(X,Z(2,1))
    msgbox('right')
%    handles.mydata2 = handles.mydata2 + 1000;
%    set(handles.edit2, 'String', num2str(handles.mydata2));
% disp(handles.mydata2)
else 
    msgbox('wrong')
end
pause(1)
    gen_call
     
   





    



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

   





