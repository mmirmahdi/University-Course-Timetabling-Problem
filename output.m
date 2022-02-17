function [out]=output1(answer,Lessoninfo,timescop)
out=cell(size(answer,1),size(answer,2)+1);
out(1,1)={'dars'};
out(1,2)={'ostad'};
out(1,3)={'rooz'};
out(1,4)={'shoroo'};
out(1,5)={'payan'};
out(1,6)={'kelas'};
for i=1 :size(answer,1)
    for j=1 :size(answer,2)+1
        switch j
            case 1
                 out(i+1,j)=Lessoninfo(i,1);
            case 2
                out(i+1,j)=Lessoninfo(i,2);
            case 3
                switch answer(i,1)
                     case 1
                        out(i+1,j)={'shanbe'};
                     case 2
                        out(i+1,j)={'1shanbe'};
                     case 3
                        out(i+1,j)={'2shanbe'};
                     case 4
                        out(i+1,j)={'3shanbe'};
                     case 5
                        out(i+1,j)={'4shanbe'};
                end           
            case 4 
                out(i+1,j)={answer(i,2)+timescop(1)-1};                
            case 5 
                out(i+1,j)={answer(i,3)+timescop(1)};            
            case 6
                out(i+1,j)={answer(i,4)};
        end
    end
end
                
                
                    
                    