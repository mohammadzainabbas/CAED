%Lab Tasks

function DisplayQs_1()
a=[2 3 8 30 4 50 100 200 4 80 500];
Qs_1(a);
end

function Qs_1 (a)
count1=1;
count2=1;
count3 =1;
for i=1:1:length(a)
    
   if(a(i)>0 && a(i)<11)
       
       b(count1)=a(i);
       count1=count1+1;
   elseif (a(i)>10 && a(i)<101)
       
       c(count2)=a(i);
       count2=count2+1;
   elseif (a(i)>100 && a(i) <1001)
       
       d(count3)=a(i);
       count3=count3+1;
   end
end
disp('First array 0-10 is :')
disp(b);
disp('Second array 11-100 is :')
disp(c);
disp('Third array 101-1000 is :')
disp(d);
end