for i1=size(Domain,1):-1:1
if(Domain(i1,2)==x)
Domain(i1,:)=[];
degree(i1,:)=[];
break;
end
 end
 for i1=1:size(course,2)
    for j1=1:size(room,2)
        anss1=0;
        for k1=1:5
            if nnz(roomsmatrix(k1,:,j1))>=courseUnit(i1)
                anss1=1;
                break;
            end
        end
            if anss1==0
            courser(i1,j1)=0;
            for i3=1:size(Domain,1)
                if Domain(i3,2)==i1
                Domain(i3,1)= Domain(i3,1)-1;
                break
                end
            end
            end
    end
    end 
    

  
 