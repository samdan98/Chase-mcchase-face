
myquestion ={'2 + 1','2X2','3/3'};
  myCA ={'3','4','1'};
  myWA1 = {'1','2','3'};
  myWA2 = {'2','5','6'};
  
  
   C = cell(4,length(myquestion));
  C(1,:) = myquestion;
  C(2,:) = myCA;
  C(3,:) = myWA1;
  C(4,:) = myWA2;

  A = C(:,randi(length(myquestion)));
  B = A(2:length(A));
 
 
 textLabel = (A(1,1));
 set(handles.edit1, 'String', textLabel);
  
 Q = randperm(3);
 
  set(handles.pushbutton1,'string',B(Q(1,1),1));
  set(handles.pushbutton2,'string',B(Q(1,2),1));
  set(handles.pushbutton3,'string',B(Q(1,3),1));
%   global pushbutton1String 
%   
%   pushbutton1String = get(handles.pushbutton1, 'string');
%  r = pushbutton1String ;
  handles.MyData = A;
  newHandles = handles;
  
  set(handles.edit2, 'String', num2str(handles.mydata2));
  