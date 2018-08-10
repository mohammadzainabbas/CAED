function DisplayQs_2()
a=[1:1:50];
n=5;
NotMultipleInArray(a,n);
end

function NotMultipleInArray(a,n)
count =1;
for i=1:1:length(a)
    
    if (mod(a(i),n) ~= 0)
        b(count)=a(i);
        count=count+1;
    end
end
disp(b);
end