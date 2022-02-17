clc;
clear;
input;
 v=[];
 j=1;
 h=0;
 for i=1 :size(teacher,2)
      if nnz(find(v==teacher(i)))==0
          v(j)=teacher(i);
          j=j+1;
      end
 end
  teachermatrix=ones(5,timescop(2)-timescop(1),  size(v,2));
  roomsmatrix=ones(5,timescop(2)-timescop(1),size(room,2));
  answer=zeros(size(course,2),5);

conflicset=zeros(size(course,2),size(course,2));
for j=1:size(courseTeacher,2)
    
    for i=1:size(courseTeacher,1)
        if(courseTeacher(i,j)==1)
            for k=i+1:size(courseTeacher,1)
                if(courseTeacher(k,j)==courseTeacher(i,j))
                    conflicset(i,k)=1;
                    conflicset(k,i)=1;
                end
            end
        end
    end
    
end
for i=1:size(course,2)
    for j=1:size(room,2)
        if(course(i)<=room(j))
            courser(i,j)=room(j);
        else
            courser(i,j)=0;
        end
    end
end
for i=1:size(courser,1)
if courser(i,:)==0
    disp('no answer');
    h=1;
    
end
end
if (timescop(2)-timescop(1))<max(courseUnit)
    disp('no answer');
    h=1;
end
    
courser=sort(courser,2);
Domain=[];
for i=1:size(courser,1)
  count=0;
  for j=1:size(courser,2)
  if(courser(i,j)~=0)
      count=count+1;
  end
  end
    Domain(i,1)=count;
    Domain(i,2)=i;
end
degree(:,1)=sum(conflicset(:,:),2);
degree(:,2)=Domain(:,2);
if h==0
 for k=1 :size(course,2) 
     if length(Mrv(Domain))==1
           x=Mrv(Domain);
         I=0;
         for i=1 :size(courser,2)
           if courser(x,i) ~=0 
           I=i;
           break;
           end
         end 
         s1;
         s2;        
     else         
       w=degree(find(degree(:,1)== max(degree(:,1))),2);
       x=w(randi(size(w,1),1));    
        I=0;
        for i=1 :size(courser,2)
           if courser(x,i) ~=0 
           I=i;
           break;
           end
         end 
         s1;
         s2;
     end
 end 
 cspval=value(answer,teachermatrix,farcourse);
 [randomval,randomanswer]=randomcsp(cspval,answer);
 disp(randomval);
     disp(output(randomanswer,courseInfo,timescop));
 end
 
  
 
 