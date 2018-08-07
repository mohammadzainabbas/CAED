function DisplayQs_6 ()
a=input('Enter start indices of intervals ');
b=input('Enter end indices of intervals ');
Ones(a,b);
end


function Ones(a,b)
c=b(1,length(b));
if c>10
z=ones(1,c+1);
else
z=ones(1,10);
end
disp('Before ');
disp(z);
i=1;
while i<=length(a)
   j=a(i);
   k=b(i);
   while j<=k
       z(1,j)=0;
       j=j+1;
   end
    
    i=i+1;
end
disp('After ');
disp(z);
end