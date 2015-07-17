function varargout = Crosssitcher(varargin)
% CROSSSITCHER MATLAB code for Crosssitcher.fig
%      CROSSSITCHER, by itself, creates a new crosssiTCHER or raises the existing
%      singleton*.
%
%      H = crosssiTCHER returns the handle to a new crosssiTCHER or the handle to
%      the existing singleton*.
%
%      crosssiTCHER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in crosssiTCHER.M with the given input arguments.
%
%      crosssiTCHER('Property','Value',...) creates a new crosssiTCHER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before crosssitcher_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to crosssitcher_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help crosssitcher

% Last Modified by GUIDE v2.5 16-Jul-2015 19:53:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Crosssitcher_OpeningFcn, ...
                   'gui_OutputFcn',  @Crosssitcher_OutputFcn, ...
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


% --- Executes just before crosssitcher is made visible.
function Crosssitcher_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to crosssitcher (see VARARGIN)
clc
global localim
localim = [];
% set(handles.axes1,'buttondownfcn',@start_pencil);
% Choose default command line output for crosssitcher
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes crosssitcher wait for user response (see UIRESUME)
% uiwait(handles.CBgui);


% --- Outputs from this function are returned to the command line.
function varargout = Crosssitcher_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in fromfilebutton.
function fromfilebutton_Callback(hObject, eventdata, handles)
% hObject    handle to fromfilebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global localim
localim = [];
[filename,path] = uigetfile('*.*','Select image to load:');

localim = imread([path filename]);
[m,n,~] = size(localim);

% if m >= 5000 | n >= 5000
%     localim = imresize(localim,[round(size(localim,1)/20) round(size(localim,2)/20)]);
% elseif m >= 2000 | n >= 2000
%     localim = imresize(localim,[round(size(localim,1)/10) round(size(localim,2)/10)]);
% elseif m >= 1000 | n >= 1000
%     localim = imresize(localim,[round(size(localim,1)/5) round(size(localim,2)/5)]);
% else
% end
axes(handles.axes1)
imagesc(localim);
% keyboard


guidata(hObject, handles);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1,'reset');

guidata(hObject, handles);

function Wtext_Callback(hObject, eventdata, handles)
% hObject    handle to Wtext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global localim

if str2num(get(handles.Wtext,'String')) > 200
    disp('Too many sqaures desired for width');
else
localim = imresize(localim,[size(localim,1) str2num(get(handles.Htext,'String'))],'antialiasing',true);
end
axes(handles.axes1);
imagesc(localim);
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of Wtext as text
%        str2double(get(hObject,'String')) returns contents of Wtext as a double


% --- Executes during object creation, after setting all properties.
function Wtext_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Wtext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Htext_Callback(hObject, eventdata, handles)
% hObject    handle to Htext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global localim

% [m,n,~] = size(localim);
if str2num(get(handles.Htext,'String')) > 200
    disp('Too many squares desired for height');
else
localim = imresize(localim,[str2num(get(handles.Htext,'String')) size(localim,2)],'antialiasing',true);
end
axes(handles.axes1);
imagesc(localim);
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of Htext as text
%        str2double(get(hObject,'String')) returns contents of Htext as a double


% --- Executes during object creation, after setting all properties.
function Htext_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Htext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in exitbutton.
function exitbutton_Callback(hObject, eventdata, handles)
% hObject    handle to exitbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close(handles.CBgui)


% --- Executes on button press in convertcolorbutton.
function convertcolorbutton_Callback(hObject, eventdata, handles)
% hObject    handle to convertcolorbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global localim
load dmc.mat
[m,n,p] = size(localim);
newim = uint8(zeros(m,n,p));
R = double(localim(:,:,1));
G = double(localim(:,:,2));
B = double(localim(:,:,3));
% keyboard
for z=1:m
    for zz = 1:n
            D = sqrt((R(z,zz)-DMCmap(:,2)).^2+(G(z,zz)-DMCmap(:,3)).^2+(B(z,zz)-DMCmap(:,4)).^2);
            [~,ind] = min(D);%find closest color
            newim(z,zz,1)=DMCmap(ind,2);
            newim(z,zz,2)=DMCmap(ind,3);
            newim(z,zz,3)=DMCmap(ind,4);
%             disp([num2str(z) num2str(zz)]);
    end
end
localim = newim;
axes(handles.axes1);
imagesc(localim);

guidata(hObject, handles);


% --- Executes on button press in transposebutton.
function transposebutton_Callback(hObject, eventdata, handles)
% hObject    handle to transposebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global localim
localim = permute(localim,[2 1 3]);
axes(handles.axes1);
imagesc(localim);

guidata(hObject, handles);


% --- Executes on button press in newbutton.
function newbutton_Callback(hObject, eventdata, handles)
% hObject    handle to newbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global localim

w = inputdlg('Please enter the width (squares)');
h = inputdlg('Please enter the height(squares)');

localim = uint8(255*ones(str2num(h{1}),str2num(w{1}),3));

axes(handles.axes1)
imagesc(localim);

guidata(hObject, handles);
% --- Executes on button press in meshtoggle.
function meshtoggle_Callback(hObject, eventdata, handles)
% hObject    handle to meshtoggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global localim


if get(handles.meshtoggle,'Value') == 1
    [m,n,~] = size(localim);
    temp = ones(m,n);
    pixelwidth = 1;%diff(temp(:,1))/(m-1);
    pixelheight = 1;%diff(temp(:,2))/(n-1);
    ytop = temp(1,1)-(pixelheight/2);
    ybottom = temp(2,1)-(pixelheight/2);
    % keyboard
    y = linspace(0.5,m+0.5,m+1);
    x = linspace(0.5,n+0.5,n+1);

    xv = zeros(1, 2*numel(x));
    xv(1:2:end) = x;
    xv(2:2:end) = x;

    yv = repmat([y(1) ; y(end)], 1, numel(x));
    yv(:,2:2:end) = flipud(yv(:,2:2:end));

    xv = xv(:);
    yv = yv(:);
    
    yh = zeros(1, 2*numel(y));
    yh(1:2:end) = y;
    yh(2:2:end) = y;
    
    xh = repmat([x(1) ; x(end)], 1, numel(y));
    xh(:,2:2:end) = flipud(xh(:,2:2:end));
    
    xh = xh(:);
    yh = yh(:);
    
    xv2 = nan(size(xv));
    yv2 = nan(size(yv));
    for z = 1:5:length(xv)-1
        xv2(z:z+1) = xv(z:z+1);
    end
    for z = 1:5:length(yv)-1
        yv2(z:z+1) = yv(z:z+1);
    end
    xv2(isnan(xv2))=[];
    yv2(isnan(yv2))=[];
    
    xh2 = nan(size(xh));
    yh2 = nan(size(yh));
    for z = 1:5:length(xh)-1
        xh2(z:z+1) = xh(z:z+1);
    end
    for z = 1:5:length(yh)-1
        yh2(z:z+1) = yh(z:z+1);
    end
    xh2(isnan(xh2))=[];
    yh2(isnan(yh2))=[];
    
    axes(handles.axes1)
    hold on
    plot(xv,yv,'k','LineWidth',0.5);
    plot(xh,yh,'k','LineWidth',0.5);
    plot(xv2,yv2,'k','LineWidth',2);
    plot(xh2,yh2,'k','LineWidth',2);
    hold off
else
    axes(handles.axes1)
    imagesc(localim);
end

guidata(hObject, handles);


% --- Executes on button press in savebutton.
function savebutton_Callback(hObject, eventdata, handles)
% hObject    handle to savebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
out = inputdlg('Please enter the image name:');
filename = out{1};
finalim = getframe(handles.axes1);
finalim = frame2im(finalim);
% print(handles.axes1,'-dpng','r300',[filename '.bmp']);
imwrite(finalim,[filename '.png'],'png','ResolutionUnit','meter','XResolution',15748,'YResolution',15748);


guidata(hObject, handles);


% --- Executes when CBgui is resized.
function CBgui_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to CBgui (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in picktoolbutton.
function picktoolbutton_Callback(hObject, eventdata, handles)
% hObject    handle to picktoolbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of picktoolbutton
global localim;
global hh;
hh = image(localim);
pan off
zoom off
% hold on
if get(handles.picktoolbutton,'Value') == 1
    set(hh,'ButtonDownFcn',@start_pencil);
else
    set(hh,'ButtonDownFcn','');
end
% h = get(handles.axes1,'buttondownfcn')
guidata(hObject, handles);

function start_pencil(src,eventdata)
global localim;
global hh
% handles = guihandles(gcbo);
coords=get(gca,'CurrentPoint'); %since this is the axes callback, src=gca
x=coords(1,1,1);
y=coords(1,2,1);

% localim(round(x),round(y),1) = 0;
% localim(round(x),round(y),2) = 0;
% localim(round(x),round(y),3) = 0;
% imagesc(localim);
% r = [];
% r=line(x, y, 'color', [0 .5 1], 'LineWidth', 2, 'hittest', 'off'); %turning     hittset off allows you to draw new lines that start on top of an existing line.
set(gcf,'windowbuttonmotionfcn',{@continue_pencil})
set(gcf,'windowbuttonupfcn',@done_pencil)
try
    localim(round(y),round(x),1) = 0;
    localim(round(y),round(x),2) = 0;
    localim(round(y),round(x),3) = 0;
catch me
end
set(hh,'CData',localim);

function continue_pencil(src,eventdata)
global localim
global hh
%Note: src is now the figure handle, not the axes, so we need to use gca.
coords=get(gca,'currentpoint'); %this updates every time i move the mouse
x=coords(1,1,1);
y=coords(1,2,1);
try
localim(round(y),round(x),1) = 0;
localim(round(y),round(x),2) = 0;
localim(round(y),round(x),3) = 0;
catch me
end
set(hh,'CData',localim);

function done_pencil(src,evendata)
%all this funciton does is turn the motion function off 
set(gcf,'windowbuttonmotionfcn','')
set(gcf,'windowbuttonupfcn','')
