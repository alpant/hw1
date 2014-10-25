x = [0.2, 0.5, 0.4, 0.7, 0.8, 0.9, 1.0];
y = [0.0, 0.4, 0.5, 0.6, 0.7, 0.9, 1.1];

scatter(x,y,'fill');

coeffs = polyfit(x, y, 1);
fittedX = linspace(min(x), max(x), 200);
fittedY = polyval(coeffs, fittedX);
hold on;
plot(fittedX, fittedY, 'r-', 'LineWidth', 3);
disp(sprintf('Answer 2a) \nleast squares regression line is\n y=%.4fx + %.4f', coeffs));

predictionAns = polyval(coeffs,[-5 4]);

disp(sprintf('\nAnswer 2b) \nfor x=-5 result is y = %.4f\nfor x=4 result is y = %.4f', predictionAns(1,1), predictionAns(1,2)));

coeffs2 = polyfit(x, y, 4);
fittedX2 = linspace(min(x), max(x), 200);
fittedY2 = polyval(coeffs2, fittedX2);
hold on;

plot(fittedX2, fittedY2, 'g-', 'LineWidth', 3);
legend('points','line fit','polynom fit');



