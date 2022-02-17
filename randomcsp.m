function[randomval,randomanswer]=randomcsp(randomval,randomanswer)
for i=1:10
input;
degree=[];


 v=[];
 j=1;
 for i=1 :size(teacher,2)
      if nnz(find(v==teacher(i)))==0
          v(j)=teacher(i);
          j=j+1;
      end
 end
  teachermatrix=ones(5,timescop(2)-timescop(1),  size(v,2));
  roomsmatrix=ones(5,timescop(2)-timescop(1),size(room,2));
  answer=zeros(size(lesson,2),5);

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
 
 for k=1 :size(course,2) 
    x=randomdomain(Domain);   
    i=randi(size(lessonr,2));
    while lessonr(x,i)==0
    i=randi(size(courser,2));
    end
    I=i;
         s1;
         s2;  
end
if nnz(answer(:,1))==size(answer,1)
val=value(answer,teachermatrix,farcourse);
if val<randomval
    randomval=val;
    randomanswer=answer;
end 
end
end
end

 