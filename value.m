function [val,sigma1,sigma2,sigma3,sigma4]=value(answer,teachermatrix,farcourse)
zarib=[1,1,1,1];
sigma1=0;
sigma2=0;
sigma3=0;
sigma4=0;
    for i=1 :size(teachermatrix,3) %find the number of the days that a teacher has a course
        v=find(answer(:,5)==i);
        v1=[];
       for j=1:length(v)
            if nnz(find(v1==answer(v(j),1)))==0
               v1(j)=answer(v(j),1);
            end
        end
       sigma1=sigma1+nnz(v1);
    end %payane sigma1
     for i=1 :size(teachermatrix,3) %find the number of classes that a teacher has
        v=find(answer(:,5)==i);
        v1=[];
        for j=1:length(v)
            if nnz(find(v1==answer(v(j),4)))==0
                v1(j)=answer(v(j),4);
            end
        end
        sigma2=sigma2+nnz(v1);
    end %payane sigma2
    v=[];
    j=1;
    for i=1 :size(answer,1)
      if nnz(find(v==answer(i,1)))==0
          v(j)=answer(i,1);
          j=j+1;
      end
    end
    
    for i=1 :length(v) 
        v1=[];
        v1=find(answer(:,1)==v(i));
        
        hour(i)=0; %hours of a day
        for j=1:length(v1)
            hour(i)=hour(i)+(answer(v1(j),3)-answer(v1(j),2))+1;         
        end  
    end 
    sigma3=var(hour); %end of sigma3
    for i=1 :size(farCourse,1) 
        l1=farCourse(i,1); %the index of course 1 
        l2=farCourse(i,2); %he index of course 2 
        ld1=answer(l1,1); %the day of course 1
        ld2=answer(l2,1); %the day of course 2
        sigma4=sigma4+abs(ld2-ld1);
    end %end of  sigma4
    val=zarib(1)*sigma1+zarib(2)*sigma2+zarib(3)*sigma3-zarib(4)*sigma4;  
end
        
        
        