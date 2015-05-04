
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    EECS 448: Homework #3 Program
%    Group 6 (Brandon Teh, Jeanette Rusli, Jacob Suddock, Cole Jurgen)
%    
%    Last Updated: March 8, 2015
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                            Figure Setup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = EECS448_HW3(varargin)
% EECS448_HW3 MATLAB code for EECS448_HW3.fig
%      EECS448_HW3, by itself, creates a new EECS448_HW3 or raises the existing
%      singleton*.
%
%      H = EECS448_HW3 returns the handle to a new EECS448_HW3 or the handle to
%      the existing singleton*.
%
%      EECS448_HW3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EECS448_HW3.M with the given input arguments.
%
%      EECS448_HW3('Property','Value',...) creates a new EECS448_HW3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EECS448_HW3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EECS448_HW3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EECS448_HW3

% Last Modified by GUIDE v2.5 08-Mar-2015 23:36:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EECS448_HW3_OpeningFcn, ...
                   'gui_OutputFcn',  @EECS448_HW3_OutputFcn, ...
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


% --- Executes just before EECS448_HW3 is made visible.
function EECS448_HW3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EECS448_HW3 (see VARARGIN)

% Choose default command line output for EECS448_HW3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

set(hObject,'Name','Image Viewer');

% UIWAIT makes EECS448_HW3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = EECS448_HW3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                            Radio Buttons
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes on button press in chooseTypeNat.
function chooseTypeNat_Callback(hObject, eventdata, handles)
% hObject    handle to chooseTypeNat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chooseTypeNat

set(handles.chooseTypeMed,'Value',get(handles.chooseTypeMed,'Min'));
set(handles.chooseTypeRad,'Value',get(handles.chooseTypeRad,'Min'));
set(handles.chooseTypeAst,'Value',get(handles.chooseTypeAst,'Min'));
set(hObject,'Value',get(hObject,'Max'));

file = dir('Natural Scenes');

index = 3;

for i = 1:length(file)-2
array{i} = file(index).name;
index = index + 1;
end

set(handles.listbox1, 'String', array);


% --- Executes on button press in chooseTypeMed.
function chooseTypeMed_Callback(hObject, eventdata, handles)
% hObject    handle to chooseTypeMed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chooseTypeMed

set(handles.chooseTypeNat,'Value',get(handles.chooseTypeNat,'Min'));
set(handles.chooseTypeRad,'Value',get(handles.chooseTypeRad,'Min'));
set(handles.chooseTypeAst,'Value',get(handles.chooseTypeAst,'Min'));
set(hObject,'Value',get(hObject,'Max'));

file = dir('Medical Imaging');

index = 3;

for i = 1:length(file)-2
array{i} = file(index).name;
index = index + 1;
end

set(handles.listbox1, 'String', array);


% --- Executes on button press in chooseTypeRad.
function chooseTypeRad_Callback(hObject, eventdata, handles)
% hObject    handle to chooseTypeRad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chooseTypeRad

set(handles.chooseTypeNat,'Value',get(handles.chooseTypeNat,'Min'));
set(handles.chooseTypeMed,'Value',get(handles.chooseTypeMed,'Min'));
set(handles.chooseTypeAst,'Value',get(handles.chooseTypeAst,'Min'));
set(hObject,'Value',get(hObject,'Max'));

file = dir('Radar Backscatter Data');

index = 3;

for i = 1:length(file)-2
array{i} = file(index).name;
index = index + 1;
end

set(handles.listbox1, 'String', array);


% --- Executes on button press in chooseTypeAst.
function chooseTypeAst_Callback(hObject, eventdata, handles)
% hObject    handle to chooseTypeAst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chooseTypeAst

set(handles.chooseTypeNat,'Value',get(handles.chooseTypeNat,'Min'));
set(handles.chooseTypeMed,'Value',get(handles.chooseTypeMed,'Min'));
set(handles.chooseTypeRad,'Value',get(handles.chooseTypeRad,'Min'));
set(hObject,'Value',get(hObject,'Max'));

file = dir('Hubble Telescope or Other Astronomical Imaging');

index = 3;

for i = 1:length(file)-2
array{i} = file(index).name;
index = index + 1;
end

set(handles.listbox1, 'String', array);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              List Box
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              Buttons
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes on button press in openBtn.
function openBtn_Callback(hObject, eventdata, handles)

clearvars -global img im inImage; %Resets img to protect against dimension mismatch

global img;

set(handles.updateBtn,'Visible','On');
set(handles.resetBtn,'Visible','On');
set(handles.uipanel3,'Visible','On');
set(handles.openingText,'Visible','On');

pause(.5);

temp = get(handles.listbox1,'Value');

if get(handles.chooseTypeNat,'Value') == 1 %NATURAL IMAGE
    file = dir('Natural Scenes');
    index = 3;
    for i = 1:length(file)-2
        s = strcat('Natural Scenes/',file(index).name);
        if temp == i
            img = makehdr({s,s,s},'ExposureValues',[-1,0,1]);
        end
        index = index + 1;
    end
elseif get(handles.chooseTypeMed,'Value') == 1 %MEDICAL IMAGE
    file = dir('Medical Imaging');
    index = 3;
    for i = 1:length(file)-2
        s = strcat('Medical Imaging/',file(index).name);
        if temp == i
            im = dicomread(s);
            inImage = im2double(im);
            img = cat(3,inImage,inImage,inImage);
        end
        index = index + 1;
    end
elseif get(handles.chooseTypeRad,'Value') == 1 %RADAR IMAGE
    if temp == 1
        im = load('Radar Backscatter Data/may09_03.022-may09_03.027.mat');
        inImage = im2double(im.A);
        img = cat(3,inImage,inImage,inImage);
    else
        im = load('Radar Backscatter Data/Data_20090331_BM01.mat');
        inImage = im2double(im.Data);
        img = cat(3,inImage,inImage,inImage);
    end
else                                           %ASTRONOMICAL IMAGE
    file = dir('Hubble Telescope or Other Astronomical Imaging');
    index = 3;
    for i = 1:length(file)-2
        s = strcat('Hubble Telescope or Other Astronomical Imaging/',file(index).name);
        if temp == i
            im = fitsread(s);
            inImage = im + abs(min(im(:)));
            img = cat(3,inImage,inImage,inImage);
        end
        index = index + 1;
    end
end

imshow(img)
set(handles.openingText,'Visible','Off');
set(handles.textWithOutHDR,'Visible','On')

%Display HDR attributes

%calculate mean
immean = mean2(img);

%calculate stddev
imstd = std2(img);

%calculate SNR 
imSNR = 20*log10(immean/imstd);

attr = msgbox(sprintf('HDR Image Attributes:\n     Mean: %.2f\n     Std Dev: %.2f\n     SNR: %.2f\n', immean, imstd, imSNR),'Image Attributes');


% --- Executes on button press in updateBtn.
function updateBtn_Callback(hObject, eventdata, handles)

%hdrwrite(img, 'IMG.hdr'); %Write HDR to file
%hdr = hdrread('IMG.hdr'); %Read the HDR image
global img;

global lightlow;
global lighthigh;
global sat;
global t1;
global t2;

global recSat;
global recT1;
global recT2;
global recLow;
global recHigh;

tint1 = floor(t1);
tint2 = floor(t2);

update = false;

%%%Final Error Checking
if(lightlow >= lighthigh)
    errordlg('Invalid input. Low lightness must be strictly less than high lightness.','Input Error','modal')
    uicontrol(handles.lightness1)
elseif isnan(sat)
    errordlg('Invalid input. Saturation has to be a number.','Input Error','modal')
    uicontrol(handles.saturation)
elseif isnan(lighthigh)
    errordlg('Invalid input. Lightness has to be a number.','Input Error','modal')
    uicontrol(handles.lightness2)
elseif isnan(lightlow)
    errordlg('Invalid input. Lightness has to be a number.','Input Error','modal')
    uicontrol(handles.lightness1)  
elseif isnan(t1)
    errordlg('Invalid input. Number of tiles has to be a number.','Input Error','modal')
    uicontrol(handles.tiles1)
elseif isnan(t2)
    errordlg('Invalid input. Number of tiles has to be a number.','Input Error','modal')
    uicontrol(handles.tiles2)
elseif (tint1 ~= t1)
    errordlg('Invalid input. Number of tiles has to be an integer.','Input Error','modal')
    uicontrol(handles.tiles1)
elseif (tint2 ~= t2)
    errordlg('Invalid input. Number of tiles has to be an integer.','Input Error','modal')
    uicontrol(handles.tiles2)
elseif (lightlow <= 0) || (lightlow > 1)
    errordlg('Invalid input. Lightness must be greater than 0 and less than or equal to 1.','Input Error','modal')
    uicontrol(handles.lightness1)
elseif (lighthigh <= 0) || (lighthigh > 1)
    errordlg('Invalid input. Lightness must be greater than 0 and less than or equal to 1.','Input Error','modal')
    uicontrol(handles.lightness2)
elseif (t1 < 2)
    errordlg('Invalid input. Number of tiles must be greater than or equal to 2.','Input Error','modal')
    uicontrol(handles.tiles1)
elseif (t2 < 2)
    errordlg('Invalid input. Number of tiles must be greater than or equal to 2.','Input Error','modal')
    uicontrol(handles.tiles2)
elseif (sat <= 0)
    errordlg('Invalid input. Saturation must be greater than or equal to 0.','Input Error','modal')
    uicontrol(handles.saturation)
elseif(~recSat || ~recT1 || ~recT2 || ~recLow || ~recHigh)
    choice = questdlg('Some values are outside of their recommended ranges. Do you want to continue?', ...
    'Recommended Value Check', ...
	'Yes','No','No');
    switch choice
        case 'Yes'
            recSat = true;
            recT1 = true;
            recT2 = true;
            recLow = true;
            recHigh = true;
            update = true;
        case 'No'
    end
else
    update = true;
end
    
if update == true %%%If no input errors, Display tonemap.
    set(handles.textWithOutHDR,'Visible','Off');
    set(handles.updatingText,'Visible','On');
    
    clearvars toneHDR;
    
    pause(.5);
    
    toneHDR = tonemap(img, 'AdjustLightness',[lightlow lighthigh],'AdjustSaturation', sat,'NumberOfTiles', [t1 t2]);
    imshow(toneHDR)
    
    set(handles.updatingText,'Visible','Off');
    set(handles.textWithHDR,'Visible','On');
    
    %Display tonemapped image attributes

    %calculate mean
    immean = mean2(toneHDR);

    %calculate stddev
    imstd = std2(toneHDR);

    %calculate SNR 
    imSNR = 20*log10(immean/imstd);

    attr = msgbox(sprintf('Tonemapped Image Attributes:\n     Mean: %.2f\n     Std Dev: %.2f\n     SNR: %.2f\n', immean, imstd, imSNR),'Image Attributes');
end

% --- Executes on button press in resetBtn.
function resetBtn_Callback(hObject, eventdata, handles)

set(handles.chooseTypeNat,'Value',get(handles.chooseTypeNat,'Min'));
set(handles.chooseTypeMed,'Value',get(handles.chooseTypeMed,'Min'));
set(handles.chooseTypeRad,'Value',get(handles.chooseTypeRad,'Min'));
set(handles.chooseTypeAst,'Value',get(handles.chooseTypeAst,'Min'));

set(handles.listbox1, 'Max', 2, 'Value', [], 'String', '');

set(handles.textWithHDR,'Visible','Off');
set(handles.uipanel3,'Visible', 'Off');
set(handles.updateBtn,'Visible','Off');
cla(handles.axes1);
set(handles.resetBtn,'Visible','Off');

%Resets Tiles To Recommend Values
set(handles.tiles1, 'String', 3);
set(handles.tiles2, 'String', 3);
set(handles.saturation, 'String', 3);
set(handles.lightness1, 'String', 0.1);
set(handles.lightness2, 'String', 1);

global t1
global t2
global sat
global lightlow
global lighthigh

global recSat;
global recT1;
global recT2;
global recLow;
global recHigh;

%Resets Global Variables
t1 = str2double(get(handles.tiles1, 'String'));
t2 = str2double(get(handles.tiles1, 'String'));
sat = str2double(get(handles.saturation, 'String'));
lightlow = str2double(get(handles.lightness1, 'String'));
lighthigh = str2double(get(handles.lightness2, 'String'));

recSat = true;
recT1 = true;
recT2 = true;
recLow = true;
recHigh = true;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              Text Box
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function saturation_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of Saturation as text
%        str2double(get(hObject,'String')) returns contents of Saturation as a double
global recSat;
recSat = true;

global sat;
sat = str2double(get(hObject, 'String'));
if isnan(sat)
  errordlg('Invalid input. Input has to be a number.','Input Error','modal')
  uicontrol(hObject)
  return
elseif (sat<=0)
    errordlg('Invalid input. Input has to be greater than 0','Input Error','modal')
    uicontrol(hObject)
    return
elseif(sat>4 || sat<2)
    choice = questdlg('The value is outside of recommended range. Do you want to continue?', ...
    'Recommended Value Check', ...
	'Yes','No','No');
    switch choice
        case 'Yes'
        case 'No'
            recSat = false;
            uicontrol(hObject)
            return
    end
end


% --- Executes during object creation, after setting all properties.
function saturation_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
global recSat;
recSat = true;

global sat
sat = str2double(get(hObject,'String'));

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function tiles1_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of tiles1 as text
%        str2double(get(hObject,'String')) returns contents of tiles1 as a double
global recT1;
recT1 = true;

global t1;
t1 = str2double(get(hObject,'String'));

tint1 = floor(t1);
if isnan(t1)
    errordlg('Invalid input. Input has to be a number.','Input Error','modal')
    uicontrol(hObject)
    return
elseif (t1 < 2)
    errordlg('Invalid input. Input has to be greater than or equal to 2.','Input Error','modal')
    uicontrol(hObject)
    return
elseif (tint1 ~= t1)
    errordlg('Invalid input. Input has to be an integer.','Input Error','modal')
    uicontrol(hObject)
    return
elseif(t1 > 4)
    choice = questdlg('The value is outside of recommended range. Do you want to continue?', ...
    'Recommended Value Check', ...
	'Yes','No','No');
    switch choice
        case 'Yes'
        case 'No'
            recT1 = false;
            uicontrol(hObject)
            return
    end
end

% --- Executes during object creation, after setting all properties.
function tiles1_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
global recT1;
recT1 = true;

global t1;
t1 = str2double(get(hObject,'String'));

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tiles2_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of tiles2 as text
%        str2double(get(hObject,'String')) returns contents of tiles2 as a double
global recT2;
recT2 = true;

global t2;
t2 = str2double(get(hObject,'String'));

tint2 = floor(t2);
if isnan(t2)
    errordlg('Invalid input. Input has to be a number.','Input Error','modal')
    uicontrol(hObject)
    return
elseif (t2 < 2)
    errordlg('Invalid input. Input has to be greater than or equal to 2.','Input Error','modal')
    uicontrol(hObject)
    return
elseif (tint2 ~= t2)
    errordlg('Invalid input. Input has to be an integer.','Input Error','modal')
    uicontrol(hObject)
    return
elseif(t2 > 4)
    choice = questdlg('The value is outside of recommended range. Do you want to continue?', ...
    'Recommended Value Check', ...
	'Yes','No','No');
    switch choice
        case 'Yes'
        case 'No'
            recT2 = false;
            uicontrol(hObject)
            return
    end
end


% --- Executes during object creation, after setting all properties.
function tiles2_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
global recT2;
recT2 = true;

global t2;
t2 = str2double(get(hObject,'String'));

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lightness1_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of lightness1 as text
%        str2double(get(hObject,'String')) returns contents of lightness1 as a double
global recLow;
recLow = true;

global lightlow
lightlow = str2double(get(hObject, 'String'));

if isnan(lightlow)
  errordlg('Invalid input. Input has to be a number.','Input Error','modal')
  uicontrol(hObject)
  return
elseif (lightlow<=0)
    errordlg('Invalid input. Input has to be strictly greater than 0.','Input Error','modal')
    uicontrol(hObject)
    return
elseif(lightlow>1)
    errordlg('Invalid input. Input has to be strictly less than 1.','Input Error','modal')
    uicontrol(hObject)
	return
elseif(lightlow>.1)
    choice = questdlg('The value is outside of recommended range. Do you want to continue?', ...
    'Recommended Value Check', ...
	'Yes','No','No');
    switch choice
        case 'Yes'
        case 'No'
            recLow = false;
            uicontrol(hObject)
            return
    end
end


% --- Executes during object creation, after setting all properties.
function lightness1_CreateFcn(hObject, eventdata, handles)
global recLow;
recLow = true;

global lightlow
lightlow = str2double(get(hObject,'String'));

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lightness2_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of lightness2 as text
%        str2double(get(hObject,'String')) returns contents of lightness2 as a double
global recHigh;
recHigh = true;

global lighthigh
lighthigh = str2double(get(hObject, 'String'));

if isnan(lighthigh)
	errordlg('Invalid input. Input has to be a number.','Input Error','modal')
	uicontrol(hObject)
	return
elseif (lighthigh<=0)
	errordlg('Invalid input. Input has to be strictly greater than 0.','Input Error','modal')
    uicontrol(hObject)
	return
elseif(lighthigh>1)
    errordlg('Invalid input. Input has to be strictly less than 1.','Input Error','modal')
    uicontrol(hObject)
	return
elseif(lighthigh<.9)
    choice = questdlg('The value is outside of recommended range. Do you want to continue?', ...
    'Recommended Value Check', ...
	'Yes','No','No');
    switch choice
        case 'Yes'
        case 'No'
            recHigh = false;
            uicontrol(hObject)
            return
    end
end



% --- Executes during object creation, after setting all properties.
function lightness2_CreateFcn(hObject, eventdata, handles)
global recHigh;
recHigh = true;

global lighthigh
lighthigh = str2double(get(hObject,'String'));

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
