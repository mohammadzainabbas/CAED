function DisplayArray()
a=[1:1:50];
n=5;
MultipleInArray(a,n);

end

% function MultipleInArray(a,n)
% for i=1:1:length(a)
%     
%     if (mod(a(i),n) == 0)
%         b(i)=a(i);
%     end
% end
% end

function MultipleInArray(a,n)
count =1;
for i=1:1:length(a)
    
    if (mod(a(i),n) == 0)
        b(count)=a(i);
        count=count+1;
    end
end
disp(b);
end