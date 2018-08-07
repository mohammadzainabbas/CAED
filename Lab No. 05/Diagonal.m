function Diagonal()
row=5;
col=5;
n=5;
o=zeros(row,col);
for i=1:1:col
   o(i,i)=n; 
end
disp(o);

end