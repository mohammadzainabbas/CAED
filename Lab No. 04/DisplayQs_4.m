function DisplayQs_4 ()
disp('Enter your Quadratic Equation ');
a=input('Enter coefficient of x^2 ');
b=input('Enter coefficient of x ');
c=input('Enter constant ');
[x y]=SolveQuadratic(a,b,c);
if x~=0 && y~=0
disp('First solution is ');
disp(x);
disp('Second solution is ');
disp(y);
else
    disp('No real solution exists');
end
end

function [x y]=SolveQuadratic(a,b,c)
d=b^2 - 4*a*c;
if d<0
    x=0;
    y=0;
elseif d==0
    e=-b/(2*a);
    x=e;
    y=e;
else
    x=(-b - sqrt(d))/(2*a);
    y=(-b + sqrt(d))/(2*a);
end
end