function DisplayQs_5()
a=input('Starting value ');
b=input('Ending value ');
x=[a:b];
Sinusoid(x);
end

function Sinusoid(x)
y=sind(x);
plot(x,y);
hold on
y=cosd(x);
plot(x,y);
grid on
xlabel('x-axis')
ylabel('y-axis')
legend('y=sin(x)','y=cos(x)');
end