function DisplayQs_7 ()
a=input('Enter your unsorted array ');
BubbleSort(a);
end

function BubbleSort(a)
for i=1:1:length(a)
    for j=1:1:length(a)-1
        if a(j+1)<a(j)
           b=a(j);
           a(j)=a(j+1);
           a(j+1)=b;            
        end
    end
end
disp('After Sorting ');
disp(a);
end
