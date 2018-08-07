function Fact ()
a=input('Enter number ');
b=Factorial(a);
disp('Factorial of number is ');
disp(b);
end

function b=Factorial(n)
if n==1
    temp= 1;
else
    temp= n*Factorial(n-1);
end
b=temp;
end