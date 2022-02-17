anss=0;
n= courseUnit(x);
if(I==0)
    display('no answer');
else
for i2=1:5
for   j2=1 :timescop(2)-timescop(1)
    if j2+n-1 <=timescop(2)-timescop(1) 
    if roomsmatrix(i2,j2:j2+n-1,I)==ones(1,n);
    if teachermatrix(i2,j2:j2+n-1,teacher(x))==ones(1,n);
    roomsmatrix(i2,j2:j2+n-1,I)=0;
    teachermatrix(i2,j2:j2+n-1,teacher(x))=0;
    answer(x,1)=i2;
    answer(x,2)=j2;
    answer(x,3)=j2+n-1;
    answer(x,5)=teacher(x);
    answer(x,4)=I;
    anss=1;
    end
    end
    end
    if anss==1
        break
    end
    end
    if anss==1
        break
    end
end

end 
   
    