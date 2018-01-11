clear sound
set(handles.edit4,'Visible','off')
global sec
global numbutton
global A
global Score
global chaser
global timer_switch
global chasersuccess
timer_switch = 1;

% if no answer was chosen when the timer runs out
if sec == -1
   numbutton = 0;
end
% deactivate the buttons
set(handles.pushbutton1,'Enable','inactive')
set(handles.pushbutton2,'Enable','inactive')
set(handles.pushbutton3,'Enable','inactive')

if numbutton ==0
else
set(handles.edit3,'string','Your answer was');
end

pause(1)
%determining what answer the player chose
if numbutton ==1
    answer= get(handles.pushbutton1, 'string');
    set (handles.pushbutton1,'BackgroundColor','blue')
elseif numbutton==2
    answer= get(handles.pushbutton2, 'string');
    set (handles.pushbutton2,'BackgroundColor','blue')
elseif numbutton ==3
    answer= get(handles.pushbutton3, 'string');
    set (handles.pushbutton3,'BackgroundColor','blue')
else
    answer = "";
end
    
pause(2)

%get the text from the button
X = get(handles.pushbutton1, 'string');
Y = get(handles.pushbutton2, 'string');
Z = get(handles.pushbutton3, 'string');
disp(Score)

% hightlights the correct answer
set(handles.edit3,'string',"The Correct answer was");

pause(2)

%compares string from button and correct answer and highlights the correct
%answer green
if strcmp(X,A(2,1))
set(handles.pushbutton1,'ForegroundColor','green');
elseif strcmp(Y,A(2,1))
set(handles.pushbutton2,'ForegroundColor','green');
else
set(handles.pushbutton3,'ForegroundColor','green');
end

 pause(2)
 %determinig if the player was right and to move the closer to 'home'
 if strcmp(answer,A(2,1))
    Score = Score +1;
    if Score== 3
    set(handles.pushbutton7,'string', get(handles.pushbutton6, 'string'));
    set(handles.pushbutton6,'string',"");
    set(handles.pushbutton7,'BackgroundColor','blue');
    elseif Score== 4
    set(handles.pushbutton8,'string', get(handles.pushbutton7, 'string'));
    set(handles.pushbutton7,'string',"");
    set(handles.pushbutton8,'BackgroundColor','blue');
    elseif Score ==5
    set(handles.pushbutton9,'string', get(handles.pushbutton8, 'string'));
    set(handles.pushbutton8,'string',"");
    set(handles.pushbutton9,'BackgroundColor','blue');
     elseif Score ==6
    set(handles.edit3,'String','You have beat the chaser')
    finalround
    close secondround2
    pause(10)
     end
end

%highlights chaser's answer
chaseprob = randi(10);
set(handles.edit3,'string',"The Chaser's answer was");

pause(2)
 
%if the chaser is correct
if chaseprob < chasersuccess
    
     if strcmp(X,A(2,1))
     set(handles.pushbutton1,'BackgroundColor','red');
     elseif strcmp(Y,A(2,1))
     set(handles.pushbutton2,'BackgroundColor','red');
     elseif strcmp(Z,A(2,1))
     set(handles.pushbutton3,'BackgroundColor','red');
     end
    chaser = chaser +1;    
    disp (chaser)
%if the chaser is wrong
else
      if strcmp(X,A(2,1))
      set(handles.pushbutton3,'BackgroundColor','red');
      elseif strcmp(Y,A(2,1))
      set(handles.pushbutton1,'BackgroundColor','red');
      elseif strcmp(Z,A(2,1))
      set(handles.pushbutton2,'BackgroundColor','red');
      end
end


 pause(2)

 % advance the chaser for each time the chaser get the question right
if chaser == 1
     set(handles.pushbutton5,'BackgroundColor','red');
elseif chaser == 2
    set(handles.pushbutton6,'BackgroundColor','red');
elseif chaser ==3
    set(handles.pushbutton7,'BackgroundColor','red');
elseif chaser ==4
    set(handles.pushbutton8,'BackgroundColor','red');    
end
%when the chaser catches you
if Score == chaser
set(handles.edit3,'String','You have been caught and for you the chase is over')
elseif chaser < Score && Score< 6  
%when the chaser has caught you and when you haven't won yet
set(handles.edit3,'String','Click ready for next question')
set(handles.pushbutton12,'Enable','on')
end

