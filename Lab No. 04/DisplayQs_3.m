function DisplayQs_3()
a=input('Enter first vector ');
b=input('Enter second vector ');
c=ResultantScalar(a,b);    
disp('Scalar Product is : ');
disp(c);
end

function c=ResultantScalar(a,b)
c=a.*b;
end