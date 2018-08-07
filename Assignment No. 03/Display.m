function Display()
rows = input('Enter no. of rows');
columns = input('Enter no. of columns');
n = input('Enter your diagonal number');
a=DiagonalMatrix(rows,columns,n);
disp(a);
end

function a=DiagonalMatrix(rows,columns,n)
o=zeros(rows,columns);
for i=1:1:columns
   o(i,i)=n; 
end
a=o;
end