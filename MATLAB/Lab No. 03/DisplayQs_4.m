function DisplayQs_4()
a=input('Enter your first number : ');
b=input('Enter your second number : ');
disp('Enter your choice ');
c=input(' + , - , * , / ');

Calculator(a,b,c);
end

function Calculator(a,b,c)
switch c
    case '+'
        d=a+b;
    case '-'
        d=a-b;
    case '*'
        d=a*b;
    case '/'
        d=a/b;
end
disp('Your result is : ');
disp(d);
end