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

% Last Modified by GUIDE v2.5 24-Jul-2015 08:50:31

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
global dmc
global hand
global pencolor
pencolor = [0,0,0];%start with black pen
% set(handles.axes1,'buttondownfcn',@start_pencil);
% Choose default command line output for crosssitcher
handles.output = hObject;
hand = guihandles(gcf);
localim = rand(10,10,3);
axes(handles.axes1);
% set(handles.axes1,'CData',localim);
imagesc(localim);
axis equal
drawnow
%setup color wheel
load dmc
dmc = DMCmap;%only rgb values, no DMC #'s

temp = zeros(1,23,3);
temp(:,:,1) = dmc(1:23,2)./255;
temp(:,:,2) = dmc(1:23,3)./255;
temp(:,:,3) = dmc(1:23,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group1,'CData',temp);
clear temp;
temp = zeros(1,25,3);
temp(:,:,1) = dmc(24:48,2)./255;
temp(:,:,2) = dmc(24:48,3)./255;
temp(:,:,3) = dmc(24:48,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group2,'CData',temp);
clear temp;
temp = zeros(1,25,3);
temp(:,:,1) = dmc(49:73,2)./255;
temp(:,:,2) = dmc(49:73,3)./255;
temp(:,:,3) = dmc(49:73,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group3,'CData',temp);
clear temp;
temp = zeros(1,25,3);
temp(:,:,1) = dmc(74:98,2)./255;
temp(:,:,2) = dmc(74:98,3)./255;
temp(:,:,3) = dmc(74:98,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group4,'CData',temp);
clear temp;
temp = zeros(1,26,3);
temp(:,:,1) = dmc(99:124,2)./255;
temp(:,:,2) = dmc(99:124,3)./255;
temp(:,:,3) = dmc(99:124,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group5,'CData',temp);
clear temp;
temp = zeros(1,24,3);
temp(:,:,1) = dmc(125:148,2)./255;
temp(:,:,2) = dmc(125:148,3)./255;
temp(:,:,3) = dmc(125:148,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group6,'CData',temp);
clear temp;
temp = zeros(1,24,3);
temp(:,:,1) = dmc(149:172,2)./255;
temp(:,:,2) = dmc(149:172,3)./255;
temp(:,:,3) = dmc(149:172,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group7,'CData',temp);
clear temp;
temp = zeros(1,25,3);
temp(:,:,1) = dmc(173:197,2)./255;
temp(:,:,2) = dmc(173:197,3)./255;
temp(:,:,3) = dmc(173:197,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group8,'CData',temp);
clear temp;
temp = zeros(1,25,3);
temp(:,:,1) = dmc(198:222,2)./255;
temp(:,:,2) = dmc(198:222,3)./255;
temp(:,:,3) = dmc(198:222,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group9,'CData',temp);
clear temp;
temp = zeros(1,25,3);
temp(:,:,1) = dmc(223:247,2)./255;
temp(:,:,2) = dmc(223:247,3)./255;
temp(:,:,3) = dmc(223:247,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group10,'CData',temp);
clear temp;
temp = zeros(1,23,3);
temp(:,:,1) = dmc(248:270,2)./255;
temp(:,:,2) = dmc(248:270,3)./255;
temp(:,:,3) = dmc(248:270,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group11,'CData',temp);
clear temp;
temp = zeros(1,25,3);
temp(:,:,1) = dmc(271:295,2)./255;
temp(:,:,2) = dmc(271:295,3)./255;
temp(:,:,3) = dmc(271:295,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group12,'CData',temp);
clear temp;
temp = zeros(1,26,3);
temp(:,:,1) = dmc(296:321,2)./255;
temp(:,:,2) = dmc(296:321,3)./255;
temp(:,:,3) = dmc(296:321,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group13,'CData',temp);
clear temp;
temp = zeros(1,26,3);
temp(:,:,1) = dmc(322:347,2)./255;
temp(:,:,2) = dmc(322:347,3)./255;
temp(:,:,3) = dmc(322:347,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group14,'CData',temp);
clear temp;
temp = zeros(1,24,3);
temp(:,:,1) = dmc(348:371,2)./255;
temp(:,:,2) = dmc(348:371,3)./255;
temp(:,:,3) = dmc(348:371,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group15,'CData',temp);
clear temp;
temp = zeros(1,24,3);
temp(:,:,1) = dmc(372:395,2)./255;
temp(:,:,2) = dmc(372:395,3)./255;
temp(:,:,3) = dmc(372:395,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group16,'CData',temp);
clear temp;
temp = zeros(1,24,3);
temp(:,:,1) = dmc(396:419,2)./255;
temp(:,:,2) = dmc(396:419,3)./255;
temp(:,:,3) = dmc(396:419,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group17,'CData',temp);
clear temp;
temp = zeros(1,8,3);
temp(:,:,1) = dmc(420:427,2)./255;
temp(:,:,2) = dmc(420:427,3)./255;
temp(:,:,3) = dmc(420:427,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group18,'CData',temp);
clear temp;
temp = zeros(1,20,3);
temp(:,:,1) = dmc(428:447,2)./255;
temp(:,:,2) = dmc(428:447,3)./255;
temp(:,:,3) = dmc(428:447,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group19,'CData',temp);
clear temp;
temp = zeros(1,7,3);
temp(:,:,1) = dmc(448:end,2)./255;
temp(:,:,2) = dmc(448:end,3)./255;
temp(:,:,3) = dmc(448:end,4)./255;
temp = imresize(temp,[15,92],'nearest');
set(handles.group20,'CData',temp);

% x = ones(360,1);
% axes(handles.axes2)
% H = pie(x);
% zz = 1;
% for z = 1:2:length(x)*2-1
%     set(H(z),'FaceColor',dmc(zz,:)./255)
%     set(H(z),'EdgeColor','none');
%     hText = findobj(H(z+1),'Type','text'); % text object handles
%     delete(hText);
%     zz = zz+1;
% end

% axes(handles.axes1)
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
% set(handles.axes1,'CData',localim);
imagesc(localim);
axis equal
drawnow
% imagesc(localim);
% keyboard


guidata(hObject, handles);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global localim
localim(:,:,1) = 255;
localim(:,:,2) = 255;
localim(:,:,3) = 255;
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
% set(handles.axes1,'CData',localim);
imagesc(localim);
axis equal
drawnow
% imagesc(localim);
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
% set(handles.axes1,'CData',localim);
imagesc(localim);
axis equal
drawnow
% imagesc(localim);
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
global dmc
% load dmc.mat
[m,n,p] = size(localim);
newim = uint8(zeros(m,n,p));
R = double(localim(:,:,1));
G = double(localim(:,:,2));
B = double(localim(:,:,3));
% keyboard
for z=1:m
    for zz = 1:n
            D = sqrt((R(z,zz)-dmc(:,2)).^2+(G(z,zz)-dmc(:,3)).^2+(B(z,zz)-dmc(:,4)).^2);
            [~,ind] = min(D);%find closest color
            newim(z,zz,1)=dmc(ind,2);
            newim(z,zz,2)=dmc(ind,3);
            newim(z,zz,3)=dmc(ind,4);
%             disp([num2str(z) num2str(zz)]);
    end
end
localim = newim;
axes(handles.axes1);
% set(handles.axes1,'CData',localim);
imagesc(localim);
if get(handles.meshtoggle,'Value') == 1
    [~] = makemesh(handles)
end
axis equal
drawnow
% imagesc(localim);

guidata(hObject, handles);


% --- Executes on button press in transposebutton.
function transposebutton_Callback(hObject, eventdata, handles)
% hObject    handle to transposebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global localim
localim = permute(localim,[2 1 3]);
axes(handles.axes1);
% set(handles.axes1,'CData',localim);
imagesc(localim);
axis equal
drawnow
% imagesc(localim);

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
% set(handles.axes1,'CData',localim);
imagesc(localim);
axis equal
drawnow
% imagesc(localim);

guidata(hObject, handles);
% --- Executes on button press in meshtoggle.
function meshtoggle_Callback(hObject, eventdata, handles)
% hObject    handle to meshtoggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global localim


if get(handles.meshtoggle,'Value') == 1
    [~] = makemesh(handles);
    %{
%     [m,n,~] = size(localim);
%     temp = ones(m,n);
%     pixelwidth = 1;%diff(temp(:,1))/(m-1);
%     pixelheight = 1;%diff(temp(:,2))/(n-1);
%     ytop = temp(1,1)-(pixelheight/2);
%     ybottom = temp(2,1)-(pixelheight/2);
%     % keyboard
%     y = linspace(0.5,m+0.5,m+1);
%     x = linspace(0.5,n+0.5,n+1);
% 
%     xv = zeros(1, 2*numel(x));
%     xv(1:2:end) = x;
%     xv(2:2:end) = x;
% 
%     yv = repmat([y(1) ; y(end)], 1, numel(x));
%     yv(:,2:2:end) = flipud(yv(:,2:2:end));
% 
%     xv = xv(:);
%     yv = yv(:);
%     
%     yh = zeros(1, 2*numel(y));
%     yh(1:2:end) = y;
%     yh(2:2:end) = y;
%     
%     xh = repmat([x(1) ; x(end)], 1, numel(y));
%     xh(:,2:2:end) = flipud(xh(:,2:2:end));
%     
%     xh = xh(:);
%     yh = yh(:);
%     
%     xv2 = nan(size(xv));
%     yv2 = nan(size(yv));
%     for z = 1:5:length(xv)-1
%         xv2(z:z+1) = xv(z:z+1);
%     end
%     for z = 1:5:length(yv)-1
%         yv2(z:z+1) = yv(z:z+1);
%     end
%     xv2(isnan(xv2))=[];
%     yv2(isnan(yv2))=[];
%     
%     xh2 = nan(size(xh));
%     yh2 = nan(size(yh));
%     for z = 1:5:length(xh)-1
%         xh2(z:z+1) = xh(z:z+1);
%     end
%     for z = 1:5:length(yh)-1
%         yh2(z:z+1) = yh(z:z+1);
%     end
%     xh2(isnan(xh2))=[];
%     yh2(isnan(yh2))=[];
%     
%     axes(handles.axes1)
%     hold on
%     plot(xv,yv,'k','LineWidth',0.5);
%     plot(xh,yh,'k','LineWidth',0.5);
%     plot(xv2,yv2,'k','LineWidth',2);
%     plot(xh2,yh2,'k','LineWidth',2);
%     hold off
    %}
else
    axes(handles.axes1)
    %     set(handles.axes1,'CData',localim);
    imagesc(localim);
    axis equal
    drawnow
    %     imagesc(localim);
end

guidata(hObject, handles);

function out = makemesh(handles)
global localim
out = [];
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
plot(xv2,yv2,'k','LineWidth',1);
plot(xh2,yh2,'k','LineWidth',1);
hold off


% --- Executes on button press in savebutton.
function savebutton_Callback(hObject, eventdata, handles)
% hObject    handle to savebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global localim
[m,n,~] = size(localim);
out = inputdlg('Please enter the image name:');
filename = out{1};

f1 = figure();
maximize(f1);
s = copyobj(handles.axes1,f1);
maximize(f1);
xlim([0.5 n+0.5]);
ylim([0.5 m+0.5]);
maximize(f1);
set(gca,'Unit','normalized','Position',[0 0 1 1])
finalim = getframe(gca);
% finalim = image(finalim);
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
axes(handles.axes1)
axis equal
if get(handles.meshtoggle,'Value') == 1
    [~] = makemesh(handles)
end
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
global hand
global pencolor
axes(hand.axes1);
axis equal
coords=get(hand.axes1,'CurrentPoint'); %since this is the axes callback, src=gca
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
    localim(round(y),round(x),1) = pencolor(1);
    localim(round(y),round(x),2) = pencolor(2);
    localim(round(y),round(x),3) = pencolor(3);
catch me
end
axes(hand.axes1);
axis equal
set(hh,'CData',localim);
if get(hand.meshtoggle,'Value') == 1
    [~] = makemesh(hand);
end

function continue_pencil(src,eventdata)
global localim
global hh
global hand
global pencolor
% hand = guihandles(gcf);
%Note: src is now the figure handle, not the axes, so we need to use gca.
axes(hand.axes1);
axis equal
coords=get(hand.axes1,'currentpoint'); %this updates every time i move the mouse
x=coords(1,1,1);
y=coords(1,2,1);
try
localim(round(y),round(x),1) = pencolor(1);
localim(round(y),round(x),2) = pencolor(2);
localim(round(y),round(x),3) = pencolor(3);
catch me
end
axes(hand.axes1);
axis equal
set(hh,'CData',localim);

function done_pencil(src,evendata)
%all this funciton does is turn the motion function off 
global hand
axes(hand.axes1);
axis equal
set(gcf,'windowbuttonmotionfcn','')
set(gcf,'windowbuttonupfcn','')


% --- Executes on button press in group1.
function group1_Callback(hObject, eventdata, handles)
% hObject    handle to group1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group1

global dmc
for z = 1:23
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z,2)/255) ',' num2str(dmc(z,3)/255) ',' num2str(dmc(z,4)/255) '])']);
end
for z=24:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);
% --- Executes on button press in group2.
function group2_Callback(hObject, eventdata, handles)
% hObject    handle to group2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group2
global dmc
for z = 1:25
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+23,2)/255) ',' num2str(dmc(z+23,3)/255) ',' num2str(dmc(z+23,4)/255) '])']);
end
for z=26:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group3.
function group3_Callback(hObject, eventdata, handles)
% hObject    handle to group3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group3
global dmc
for z = 1:25
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+48,2)/255) ',' num2str(dmc(z+48,3)/255) ',' num2str(dmc(z+48,4)/255) '])']);
end
for z=26:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group4.
function group4_Callback(hObject, eventdata, handles)
% hObject    handle to group4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group4
global dmc
for z = 1:25
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+73,2)/255) ',' num2str(dmc(z+73,3)/255) ',' num2str(dmc(z+73,4)/255) '])']);
end
for z=26:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group5.
function group5_Callback(hObject, eventdata, handles)
% hObject    handle to group5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group5
global dmc
for z = 1:26
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+98,2)/255) ',' num2str(dmc(z+98,3)/255) ',' num2str(dmc(z+98,4)/255) '])']);
end
for z=27:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group6.
function group6_Callback(hObject, eventdata, handles)
% hObject    handle to group6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group6
global dmc
for z = 1:24
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+124,2)/255) ',' num2str(dmc(z+124,3)/255) ',' num2str(dmc(z+124,4)/255) '])']);
end
for z=25:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group7.
function group7_Callback(hObject, eventdata, handles)
% hObject    handle to group7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group7
global dmc
for z = 1:24
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+148,2)/255) ',' num2str(dmc(z+148,3)/255) ',' num2str(dmc(z+148,4)/255) '])']);
end
for z=25:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group8.
function group8_Callback(hObject, eventdata, handles)
% hObject    handle to group8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group8
global dmc
for z = 1:25
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+172,2)/255) ',' num2str(dmc(z+172,3)/255) ',' num2str(dmc(z+172,4)/255) '])']);
end
for z=26:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group9.
function group9_Callback(hObject, eventdata, handles)
% hObject    handle to group9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group9
global dmc
for z = 1:25
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+197,2)/255) ',' num2str(dmc(z+197,3)/255) ',' num2str(dmc(z+197,4)/255) '])']);
end
for z=26:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group10.
function group10_Callback(hObject, eventdata, handles)
% hObject    handle to group10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group10
global dmc
for z = 1:25
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+222,2)/255) ',' num2str(dmc(z+222,3)/255) ',' num2str(dmc(z+222,4)/255) '])']);
end
for z=26:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group11.
function group11_Callback(hObject, eventdata, handles)
% hObject    handle to group11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group11
global dmc
for z = 1:23
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+247,2)/255) ',' num2str(dmc(z+247,3)/255) ',' num2str(dmc(z+247,4)/255) '])']);
end
for z=24:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group12.
function group12_Callback(hObject, eventdata, handles)
% hObject    handle to group12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group12
global dmc
for z = 1:25
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+270,2)/255) ',' num2str(dmc(z+270,3)/255) ',' num2str(dmc(z+270,4)/255) '])']);
end
for z=26:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group13.
function group13_Callback(hObject, eventdata, handles)
% hObject    handle to group13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group13
global dmc
for z = 1:25
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+295,2)/255) ',' num2str(dmc(z+295,3)/255) ',' num2str(dmc(z+295,4)/255) '])']);
end
for z=26:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group14.
function group14_Callback(hObject, eventdata, handles)
% hObject    handle to group14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group14
global dmc
for z = 1:26
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+295,2)/255) ',' num2str(dmc(z+295,3)/255) ',' num2str(dmc(z+295,4)/255) '])']);
end
for z=27:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group15.
function group15_Callback(hObject, eventdata, handles)
% hObject    handle to group15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group15
global dmc
for z = 1:24
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+321,2)/255) ',' num2str(dmc(z+321,3)/255) ',' num2str(dmc(z+321,4)/255) '])']);
end
for z=25:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group16.
function group16_Callback(hObject, eventdata, handles)
% hObject    handle to group16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group16
global dmc
for z = 1:24
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+345,2)/255) ',' num2str(dmc(z+345,3)/255) ',' num2str(dmc(z+345,4)/255) '])']);
end
for z=25:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group17.
function group17_Callback(hObject, eventdata, handles)
% hObject    handle to group17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group17
global dmc
for z = 1:24
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+369,2)/255) ',' num2str(dmc(z+369,3)/255) ',' num2str(dmc(z+369,4)/255) '])']);
end
for z=25:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group18.
function group18_Callback(hObject, eventdata, handles)
% hObject    handle to group18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group18
global dmc
for z = 1:8
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+393,2)/255) ',' num2str(dmc(z+393,3)/255) ',' num2str(dmc(z+393,4)/255) '])']);
end
for z=9:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group19.
function group19_Callback(hObject, eventdata, handles)
% hObject    handle to group19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group19
global dmc
for z = 1:20
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+401,2)/255) ',' num2str(dmc(z+401,3)/255) ',' num2str(dmc(z+401,4)/255) '])']);
end
for z=21:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);

% --- Executes on button press in group20.
function group20_Callback(hObject, eventdata, handles)
% hObject    handle to group20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of group20
global dmc
for z = 1:7
   eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(dmc(z+421,2)/255) ',' num2str(dmc(z+421,3)/255) ',' num2str(dmc(z+421,4)/255) '])']);
end
for z=8:32
    eval(['set(handles.color' num2str(z) ',''BackgroundColor'',[' num2str(1) ',' num2str(1) ',' num2str(1) '])']);
end
guidata(hObject, handles);


% --- Executes on button press in color1.
function color1_Callback(hObject, eventdata, handles)
% hObject    handle to color1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color1
global pencolor
pencolor = get(handles.color1,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color2.
function color2_Callback(hObject, eventdata, handles)
% hObject    handle to color2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color2
global pencolor
pencolor = get(handles.color2,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color3.
function color3_Callback(hObject, eventdata, handles)
% hObject    handle to color3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color3
global pencolor
pencolor = get(handles.color3,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color4.
function color4_Callback(hObject, eventdata, handles)
% hObject    handle to color4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color4
global pencolor
pencolor = get(handles.color4,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color5.
function color5_Callback(hObject, eventdata, handles)
% hObject    handle to color5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color5
global pencolor
pencolor = get(handles.color5,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color6.
function color6_Callback(hObject, eventdata, handles)
% hObject    handle to color6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color6
global pencolor
pencolor = get(handles.color6,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color7.
function color7_Callback(hObject, eventdata, handles)
% hObject    handle to color7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color7
global pencolor
pencolor = get(handles.color7,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color8.
function color8_Callback(hObject, eventdata, handles)
% hObject    handle to color8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color8
global pencolor
pencolor = get(handles.color8,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color9.
function color9_Callback(hObject, eventdata, handles)
% hObject    handle to color9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color9
global pencolor
pencolor = get(handles.color9,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color10.
function color10_Callback(hObject, eventdata, handles)
% hObject    handle to color10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color10
global pencolor
pencolor = get(handles.color10,'BackgroundColor');
guidata(hObject, handles);


% --- Executes on button press in color11.
function color11_Callback(hObject, eventdata, handles)
% hObject    handle to color11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color11
global pencolor
pencolor = get(handles.color11,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color12.
function color12_Callback(hObject, eventdata, handles)
% hObject    handle to color12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color12
global pencolor
pencolor = get(handles.color12,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color13.
function color13_Callback(hObject, eventdata, handles)
% hObject    handle to color13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color13
global pencolor
pencolor = get(handles.color13,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color14.
function color14_Callback(hObject, eventdata, handles)
% hObject    handle to color14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color14
global pencolor
pencolor = get(handles.color14,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color15.
function color15_Callback(hObject, eventdata, handles)
% hObject    handle to color15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color15
global pencolor
pencolor = get(handles.color15,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color16.
function color16_Callback(hObject, eventdata, handles)
% hObject    handle to color16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color16
global pencolor
pencolor = get(handles.color16,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color17.
function color17_Callback(hObject, eventdata, handles)
% hObject    handle to color17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color17
global pencolor
pencolor = get(handles.color17,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color18.
function color18_Callback(hObject, eventdata, handles)
% hObject    handle to color18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color18
global pencolor
pencolor = get(handles.color18,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color19.
function color19_Callback(hObject, eventdata, handles)
% hObject    handle to color19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color19
global pencolor
pencolor = get(handles.color19,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color20.
function color20_Callback(hObject, eventdata, handles)
% hObject    handle to color20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color20
global pencolor
pencolor = get(handles.color20,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color21.
function color21_Callback(hObject, eventdata, handles)
% hObject    handle to color21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color21
global pencolor
pencolor = get(handles.color21,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color22.
function color22_Callback(hObject, eventdata, handles)
% hObject    handle to color22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color22
global pencolor
pencolor = get(handles.color22,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color23.
function color23_Callback(hObject, eventdata, handles)
% hObject    handle to color23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color23
global pencolor
pencolor = get(handles.color23,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color24.
function color24_Callback(hObject, eventdata, handles)
% hObject    handle to color24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color24
global pencolor
pencolor = get(handles.color24,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color25.
function color25_Callback(hObject, eventdata, handles)
% hObject    handle to color25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color25
global pencolor
pencolor = get(handles.color25,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color26.
function color26_Callback(hObject, eventdata, handles)
% hObject    handle to color26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color26
global pencolor
pencolor = get(handles.color26,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color27.
function color27_Callback(hObject, eventdata, handles)
% hObject    handle to color27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color27
global pencolor
pencolor = get(handles.color27,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color28.
function color28_Callback(hObject, eventdata, handles)
% hObject    handle to color28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color28
global pencolor
pencolor = get(handles.color28,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color29.
function color29_Callback(hObject, eventdata, handles)
% hObject    handle to color29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color29
global pencolor
pencolor = get(handles.color29,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color30.
function color30_Callback(hObject, eventdata, handles)
% hObject    handle to color30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color30
global pencolor
pencolor = get(handles.color30,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color31.
function color31_Callback(hObject, eventdata, handles)
% hObject    handle to color31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color31
global pencolor
pencolor = get(handles.color31,'BackgroundColor')*255;
guidata(hObject, handles);


% --- Executes on button press in color32.
function color32_Callback(hObject, eventdata, handles)
% hObject    handle to color32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of color32
global pencolor
pencolor = get(handles.color32,'BackgroundColor')*255;
guidata(hObject, handles);