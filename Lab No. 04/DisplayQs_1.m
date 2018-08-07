function DisplayQs_1 ()
x=input('Enter your array ');
a=ReplaceNegative(x);
disp('After Replacing negative values with zero ');
disp(a);
end

function a=ReplaceNegative(x)
for i=1:1:length(x)
   if x(i)<0
       x(i)=0;
   end  
end
a=x;
end