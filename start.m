 global cash
 cash = 0;
clear sound
[y,Fs] = audioread('Cash-Builder_Music.mp3');
sound(y,Fs)

set(handles.pushbutton1,'Visible','on')
set(handles.pushbutton2,'Visible','on')
set(handles.pushbutton3,'Visible','on')
set(handles.edit1,'Visible','on')
set(handles.edit2,'Visible','on')
set(handles.edit2,'Visible','on')
set(handles.edit2,'string',cash)
set(handles.edit3,'Visible','on')
set(handles.pushbutton6,'Visible','off')
set(handles.pushbutton7,'Visible','off')
set(handles.pushbutton8,'Visible','off')
q3




for t=0:30
    Timer =30-t;
    set(handles.edit3,'string',Timer);
    pause(1)
if t==30

clear sound
set(handles.pushbutton1,'Enable','inactive')
set(handles.pushbutton2,'Enable','inactive')
set(handles.pushbutton3,'Enable','inactive')
secondround2
close FirstRound
end
    
end