function DisplayQs_5()
a=input('Enter nth term : ');
b=SumofSeries(a);
disp('Sum of series upto "n" is : ');
disp(b);
end

function b=SumofSeries(a)
sum=0;
for i=1:1:a
   temp=1/i;
   sum=sum+temp;
end
b=sum;
end