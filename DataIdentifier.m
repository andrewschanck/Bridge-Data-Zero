function varargout = DataIdentifier(varargin)
% DATAIDENTIFIER MATLAB code for DataIdentifier.fig
%      DATAIDENTIFIER, by itself, creates a new DATAIDENTIFIER or raises the existing
%      singleton*.
%
%      H = DATAIDENTIFIER returns the handle to a new DATAIDENTIFIER or the handle to
%      the existing singleton*.
%
%      DATAIDENTIFIER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATAIDENTIFIER.M with the given input arguments.
%
%      DATAIDENTIFIER('Property','Value',...) creates a new DATAIDENTIFIER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DataIdentifier_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DataIdentifier_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DataIdentifier

% Last Modified by GUIDE v2.5 03-Oct-2016 16:25:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DataIdentifier_OpeningFcn, ...
                   'gui_OutputFcn',  @DataIdentifier_OutputFcn, ...
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


% --- Executes just before DataIdentifier is made visible.
function DataIdentifier_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DataIdentifier (see VARARGIN)
handles.slot1 = 0;
handles.slot2 = 0;
handles.slot3 = 0;
handles.slot4 = 0;
handles.slot5 = 0;
handles.slot6 = 0;
handles.slot7 = 0;
handles.slot8 = 0;
handles.slot9 = 0;
handles.slot10 = 0;

% Choose default command line output for DataIdentifier
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DataIdentifier wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = DataIdentifier_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
str = get(hObject,'String');
val = get(hObject,'Value');
switch str{val}
    case '-'
        handles.slot2 = 0;
    case '0.5D'
        handles.slot2 = '0.5D';
    case '1.0D'
        handles.slot2 = '1.0D';
    case '1.5D'
        handles.slot2 = '1.5D';
    case '2.0D'
        handles.slot2 = '2.0D';
    case '2.5D'
        handles.slot2 = '2.5D';
    case '3.0D'
        handles.slot2 = '3.0D';
    case '3.5D'
        handles.slot2 = '3.5D';
    case '4.0D'
        handles.slot2 = '4.0D';
    case '1 Lane Max'
        handles.slot2 = '1 Lane Max';
    case '2 Lane Max'
        handles.slot2 = '2 Lane Max';
end
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2
str = get(hObject,'String');
val = get(hObject,'Value');
switch str{val}
    case '-'
        handles.slot4 = 0;
    case '0.5D'
        handles.slot4 = '0.5D';
    case '1.0D'
        handles.slot4 = '1.0D';
    case '1.5D'
        handles.slot4 = '1.5D';
    case '2.0D'
        handles.slot4 = '2.0D';
    case '2.5D'
        handles.slot4 = '2.5D';
    case '3.0D'
        handles.slot4 = '3.0D';
    case '3.5D'
        handles.slot4 = '3.5D';
    case '4.0D'
        handles.slot4 = '4.0D';
    case '1 Lane Max'
        handles.slot4 = '1 Lane Max';
    case '2 Lane Max'
        handles.slot4 = '2 Lane Max';
end
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3
str = get(hObject,'String');
val = get(hObject,'Value');
switch str{val}
    case '-'
        handles.slot5 = 0;
    case '0.5D'
        handles.slot5 = '0.5D';
    case '1.0D'
        handles.slot5 = '1.0D';
    case '1.5D'
        handles.slot5 = '1.5D';
    case '2.0D'
        handles.slot5 = '2.0D';
    case '2.5D'
        handles.slot5 = '2.5D';
    case '3.0D'
        handles.slot5 = '3.0D';
    case '3.5D'
        handles.slot5 = '3.5D';
    case '4.0D'
        handles.slot5 = '4.0D';
    case '1 Lane Max'
        handles.slot5 = '1 Lane Max';
    case '2 Lane Max'
        handles.slot5 = '2 Lane Max';
end
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4
str = get(hObject,'String');
val = get(hObject,'Value');
switch str{val}
    case '-'
        handles.slot7 = 0;
    case '0.5D'
        handles.slot7 = '0.5D';
    case '1.0D'
        handles.slot7 = '1.0D';
    case '1.5D'
        handles.slot7 = '1.5D';
    case '2.0D'
        handles.slot7 = '2.0D';
    case '2.5D'
        handles.slot7 = '2.5D';
    case '3.0D'
        handles.slot7 = '3.0D';
    case '3.5D'
        handles.slot7 = '3.5D';
    case '4.0D'
        handles.slot7 = '4.0D';
    case '1 Lane Max'
        handles.slot7 = '1 Lane Max';
    case '2 Lane Max'
        handles.slot7 = '2 Lane Max';
end
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5
str = get(hObject,'String');
val = get(hObject,'Value');
switch str{val}
    case '-'
        handles.slot1 = 0;
    case '0.5D'
        handles.slot1 = '0.5D';
    case '1.0D'
        handles.slot1 = '1.0D';
    case '1.5D'
        handles.slot1 = '1.5D';
    case '2.0D'
        handles.slot1 = '2.0D';
    case '2.5D'
        handles.slot1 = '2.5D';
    case '3.0D'
        handles.slot1 = '3.0D';
    case '3.5D'
        handles.slot1 = '3.5D';
    case '4.0D'
        handles.slot1 = '4.0D';
    case '1 Lane Max'
        handles.slot1 = '1 Lane Max';
    case '2 Lane Max'
        handles.slot1 = '2 Lane Max';
end
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6
str = get(hObject,'String');
val = get(hObject,'Value');
switch str{val}
    case '-'
        handles.slot9 = 0;
    case '0.5D'
        handles.slot9 = '0.5D';
    case '1.0D'
        handles.slot9 = '1.0D';
    case '1.5D'
        handles.slot9 = '1.5D';
    case '2.0D'
        handles.slot9 = '2.0D';
    case '2.5D'
        handles.slot9 = '2.5D';
    case '3.0D'
        handles.slot9 = '3.0D';
    case '3.5D'
        handles.slot9 = '3.5D';
    case '4.0D'
        handles.slot9 = '4.0D';
    case '1 Lane Max'
        handles.slot9 = '1 Lane Max';
    case '2 Lane Max'
        handles.slot9 = '2 Lane Max';
end
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7
str = get(hObject,'String');
val = get(hObject,'Value');
switch str{val}
    case '-'
        handles.slot3 = 0;
    case '0.5D'
        handles.slot3 = '0.5D';
    case '1.0D'
        handles.slot3 = '1.0D';
    case '1.5D'
        handles.slot3 = '1.5D';
    case '2.0D'
        handles.slot3 = '2.0D';
    case '2.5D'
        handles.slot3 = '2.5D';
    case '3.0D'
        handles.slot3 = '3.0D'; 
    case '3.5D'
        handles.slot3 = '3.5D';
    case '4.0D'
        handles.slot3 = '4.0D';
    case '1 Lane Max'
        handles.slot3 = '1 Lane Max';
    case '2 Lane Max'
        handles.slot3 = '2 Lane Max';
end
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu8.
function popupmenu8_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu8 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu8
str = get(hObject,'String');
val = get(hObject,'Value');
switch str{val}
    case '-'
        handles.slot6 = 0;
    case '0.5D'
        handles.slot6 = '0.5D';
    case '1.0D'
        handles.slot6 = '1.0D';
    case '1.5D'
        handles.slot6 = '1.5D';
    case '2.0D'
        handles.slot6 = '2.0D';
    case '2.5D'
        handles.slot6 = '2.5D';
    case '3.0D'
        handles.slot6 = '3.0D';
    case '3.5D'
        handles.slot6 = '3.5D';
    case '4.0D'
        handles.slot6 = '4.0D';
    case '1 Lane Max'
        handles.slot6 = '1 Lane Max';
    case '2 Lane Max'
        handles.slot6 = '2 Lane Max';
end
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function popupmenu8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu9.
function popupmenu9_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu9 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu9
str = get(hObject,'String');
val = get(hObject,'Value');
switch str{val}
    case '-'
        handles.slot10 = 0;
    case '0.5D'
        handles.slot10 = '0.5D';
    case '1.0D'
        handles.slot10 = '1.0D';
    case '1.5D'
        handles.slot10 = '1.5D';
    case '2.0D'
        handles.slot10 = '2.0D';
    case '2.5D'
        handles.slot10 = '2.5D';
    case '3.0D'
        handles.slot10 = '3.0D';
    case '3.5D'
        handles.slot10 = '3.5D';
    case '4.0D'
        handles.slot10 = '4.0D';
    case '1 Lane Max'
        handles.slot10 = '1 Lane Max';
    case '2 Lane Max'
        handles.slot10 = '2 Lane Max';
end
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function popupmenu9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu10.
function popupmenu10_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu10 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu10
str = get(hObject,'String');
val = get(hObject,'Value');
switch str{val}
    case '-'
        handles.slot8 = 0;
    case '0.5D'
        handles.slot8 = '0.5D';
    case '1.0D'
        handles.slot8 = '1.0D';
    case '1.5D'
        handles.slot8 = '1.5D';
    case '2.0D'
        handles.slot8 = '2.0D';
    case '2.5D'
        handles.slot8 = '2.5D';
    case '3.0D'
        handles.slot8 = '3.0D';
    case '3.5D'
        handles.slot8 = '3.5D';
    case '4.0D'
        handles.slot8 = '4.0D';
    case '1 Lane Max'
        handles.slot8 = '1 Lane Max';
    case '2 Lane Max'
        handles.slot8 = '2 Lane Max';
end
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function popupmenu10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global datafile
[file,folder] = uigetfile;
datafile = [folder file];

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global truck lane rep datafile
slots = {handles.slot1,handles.slot2,handles.slot3,handles.slot4...
    handles.slot5,handles.slot6,handles.slot7,handles.slot8...
    handles.slot9,handles.slot10};
for ii = 1:length(slots)
    slots(cellfun('islogical',slots)) = [];
end
dataID(datafile,truck,lane,rep,slots);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
global lane
lane = get(hObject,'String');

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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
global rep
rep = get(hObject,'String');

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
global truck
truck = get(hObject,'String');

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
