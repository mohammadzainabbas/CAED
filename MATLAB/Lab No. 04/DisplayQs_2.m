function DisplayQs_2 ()
a=input('Enter 2D Array ');
b=OddRows(a);
disp('Odd Rows are : ');
disp(b);
end

function b=OddRows(a)
[rows,columns]=size(a);
b=a(1:2:rows,1:1:columns);
end