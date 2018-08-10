a=5; 
b=6;
c=a+b;
disp('Sum is :')
disp (c)

%if else statement

if (a>b)
    c=a*b;
elseif (a<b)
    c=a/b;
end
disp(c);

%For Loop
c=0;
for (i=0:1:a)
   for (j=0:1:b)
       c=c+1;
   end
end
    disp('After For loop :')
    disp(c);
    
%While Loop
c=0;
d=0;
while(c<a)
    d=d+1;    
    c=c+1;
end
disp('while loop');
disp(d);

%Cin

x=input('Enter your name');
y=input('Enter your Reg no.');





    
    