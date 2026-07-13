function varargout = converter(varargin)
% CONVERTER MATLAB code for converter.fig
%      CONVERTER, by itself, creates a new CONVERTER or raises the existing
%      singleton*.
%
%      H = CONVERTER returns the handle to a new CONVERTER or the handle to
%      the existing singleton*.
%
%      CONVERTER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONVERTER.M with the given input arguments.
%
%      CONVERTER('Property','Value',...) creates a new CONVERTER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before converter_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to converter_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help converter

% Last Modified by GUIDE v2.5 21-May-2023 15:58:42

% Begin initialization code 
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @converter_OpeningFcn, ...
                   'gui_OutputFcn',  @converter_OutputFcn, ...
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
% End initialization code 


% --- Executes just before converter is made visible.
function converter_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to converter (see VARARGIN)

% Choose default command line output for converter
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes converter wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = converter_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in degree.
function degree_Callback(hObject, eventdata, handles)
% hObject    handle to degree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of degree
set(handles.far,'value',0);
set(handles.kelvin,'value',0);
set(handles.text2,'string',out);
    set(handles.text4,'string',t1);
    set(handles.text3,'string',t2);
    
    
% --- Executes on button press in kelvin.
function kelvin_Callback(hObject, eventdata, handles)
% hObject    handle to kelvin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of kelvin
set(handles.far,'value',0);
set(handles.degree,'value',0);
    set(handles.text4,'string',out);
  
    set(handles.text2,'string',t1);
    set(handles.text3,'string',t2);
% --- Executes on button press in far.
function far_Callback(hObject, eventdata, handles)
% hObject    handle to far (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of far
set(handles.kelvin,'value',0);
set(handles.degree,'value',0);
    set(handles.text3,'string',out);

    set(handles.text2,'string',t1);
    set(handles.text4,'string',t2);

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
out=str2num(get(handles.t0,'String'));
d= get(handles.degree,'Value');
k= get(handles.kelvin,'Value');
f= get(handles.far,'Value');

if d==1|k==1|f==1
    
if d==1
    set(handles.degree,'Value',1);
    set(handles.text2,'string',out);
    t1=out+273;
    t2=9/5*out+32;
    set(handles.text4,'string',t1);
    set(handles.text3,'string',t2);
    
elseif k==1
    set(handles.kelvin,'Value',1);
    set(handles.text4,'string',out);
    t1=out-273;
    t2=9/5*out-459.67;
    set(handles.text2,'string',t1);
    set(handles.text3,'string',t2);
    
    else
    set(handles.far,'Value',1);
    set(handles.text3,'string',out);
    t1=5/9*(out-32);
    t2=5/9*(out+459.67);
    set(handles.text2,'string',t1);
    set(handles.text4,'string',t2);
    
end
else
set(handles.text2,'string','error: please enter input unit');
set(handles.text3,'string','error: please enter input unit');
set(handles.text4,'string','error: please enter input unit');
end
    
function t0_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function t0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
set(handles.text2,'string','');
set(handles.text3,'string','');
set(handles.text4,'string','');
set(handles.t0,'string','');
set(handles.kelvin,'value',0);
set(handles.degree,'value',0);
set(handles.far,'value',0);
