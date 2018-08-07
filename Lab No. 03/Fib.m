function Fib ()
a=input('Enter number ');
b=Fibonacci(a);
disp('Fibonacci of number is ');
disp(b);
end

function b=Fibonacci(n)
if n==1 || n==0
    temp= 1;
else
    temp= Fibonacci(n-1)+Fibonacci(n-2);
end
b=temp;
end