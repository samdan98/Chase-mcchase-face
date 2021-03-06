function varargout = THECHASEgame(varargin)
% THECHASEGAME MATLAB code for THECHASEgame.fig
%      THECHASEGAME, by itself, creates a new THECHASEGAME or raises the existing
%      singleton*.
%
%      H = THECHASEGAME returns the handle to a new THECHASEGAME or the handle to
%      the existing singleton*.
%
%      THECHASEGAME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in THECHASEGAME.M with the given input arguments.
%
%      THECHASEGAME('Property','Value',...) creates a new THECHASEGAME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before THECHASEgame_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to THECHASEgame_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help THECHASEgame

% Last Modified by GUIDE v2.5 20-Dec-2017 07:56:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @THECHASEgame_OpeningFcn, ...
                   'gui_OutputFcn',  @THECHASEgame_OutputFcn, ...
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


% --- Executes just before THECHASEgame is made visible.
function THECHASEgame_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to THECHASEgame (see VARARGIN)

% Choose default command line output for THECHASEgame
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes THECHASEgame wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = THECHASEgame_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in contestant1.
function contestant1_Callback(hObject, eventdata, handles)
% hObject    handle to contestant1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in contestant4.
function contestant4_Callback(hObject, eventdata, handles)
% hObject    handle to contestant4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in contestant3.
function contestant3_Callback(hObject, eventdata, handles)
% hObject    handle to contestant3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in contestant2.
function contestant2_Callback(hObject, eventdata, handles)
% hObject    handle to contestant2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in cashreward.
function cashreward_Callback(hObject, eventdata, handles)
% hObject    handle to cashreward (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object deletion, before destroying properties.
function uitable3_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to uitable3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
