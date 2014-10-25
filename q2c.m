E = @(x) (1.186*x.^2 - 0.162*x);

interval = 0.05;
min = 0;
max = interval;

var = zeros(1, 25);

for n = 1:50
    mean = integral(E,min,max);
    
    VAR= @(x) (1.186*x - 0.162).*(x - mean).^2;
    var(1,n) = integral(VAR,min,max);
    
    min = max;
    max = max + interval;
    
end

figure
plot(var)
title('line function variance values. interval 0<x<25')

E2 = @(x) (-19.5*x.^5 + 52.87*x.^4 - 49.45*x.^3 + 19.4*x.^2 + 2.3*x );

interval2 = 0.05;
min2 = 0;
max2 = interval2;

var2 = zeros(1, 25);

for n2 = 1:50
    mean2 = integral(E,min2,max2);
    
    VAR2= @(x) (-19.5*x.^4 + 52.87*x.^3 - 49.45*x.^2 + 19.4*x.^1 + 2.3 ).*(x - mean2).^2;
    var2(1,n2) = integral(VAR2,min2,max2);
    
    min2 = max2;
    max2 = max2 + interval2;
    
end

figure
plot(var2)
title('polynomial of degree 4 variance values. interval 0<x<25')