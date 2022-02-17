function [n]=Mrv(Domain)
 n=Domain(find(Domain(:,1)==min(Domain(:,1))),2);
end
