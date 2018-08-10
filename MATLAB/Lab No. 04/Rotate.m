function Rotate()
rows=input('Enter rows : ');

for i=1:1:rows+1
    for j=1:1:rows
        if(j<i)
   fprintf('%d',j);
        end
    end
    fprintf('\n');
end

end
