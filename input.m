
%courseInfo={'course name', 'course teacher';...}
courseInfo={'hoosh','drkarshenas';
            'compiler','drkarshenas';
            'math','drnamazi'};
            

%courseUnit=[course number, course unit;..]
%default=2
courseUnit=[1,3;
            2,4;
            3,5];

%courseCapacity=[coursee number, course capacity;...]
%default=30
courseCapacity=[1,20;
                3,25;
                4,26];

%timescop shows the start and end of the each day.
timescop = [8 16];

%courses that they can not be in two days in a row.
farCourse=[1,2;
           1,3;
           3,2;
           4,1;
           3,4];

%number of rooms
n=2; 

%roomCapacity=[room number, room capacity;...]
%default=35
roomCapacity=[1,20;
              2,35];

unit=[];
lessoncapacity=[];


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1 :n
    room(i)=35;
end
for i =1 :size(roomCapacity,1)
     room(roomCapacity(i,1))=roomCapacity(i,2);
end   

%default unit and capacity for a course
for i=1 :size(courseInfo,1)  
    courseInfo(i,3)={2};
    courseInfo(i,4)={30};
end

for i=1 :size(courseUnit,1)
    courseInfo(courseUnit(i,1),3)={courseUnit(i,2)};
end
for i=1 :size(courseCapacity,1)
    courseInfo(courseCapacity(i,1),4)={courseCapacity(i,2)};
end


course=cell2mat(courseInfo(:,4))'; 
courseUnit=cell2mat(courseInfo(:,3))';
j=1;
v={};
for i=1 :size(courseInfo,1)
      if nnz(find(strcmp(v,courseInfo(i,2))))==0
          v(j)=courseInfo(i,2);
          courseInfo(i,5)={j};
          j=j+1;
      else
          courseInfo(i,5)={find(strcmp(v,courseInfo(i,2)))};
      end
end
teacher=cell2mat(LcourseInfo(:,5))';
courseTeacher=zeros(size(courseInfo,1),length(v));
for i=1 :length(teacher)
    courseTeacher(i,teacher(i))=1;
end

