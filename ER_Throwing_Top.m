% relative height for each pole from rabbit robot
y_p = [0.9800, 0.2800, 0.2800, -0.1200, -0.1200, -0.1200, 0.2800, 0.2800, -0.1200, -0.1200, -0.1200];
% relative distance for each pole from rabbit robot
x_p = [4.95, 3.76, 3.76, 1.55, 3.73, 3.73, 6.38, 6.38, 8.15, 8.39, 8.39];
% radius of rollers
r = 0.0375;
% diffrence between angle required in radians
theta = 0.261799;
% angle of projection in degrees
angle = 45;
% gravitational acceleration
g = 9.8;
w1 = [];
w2 = [];
for i = 1:11; 
    y_p(i) = y_p(i);
    x = x_p(i);
    y = y_p(i);
    v = sqrt((g*(x^2))/(2*(cosd(angle)^2)*((x(tand(angle))-y))));
    W1 = (v/r) + ((v*cosd(angle)*(theta))/x);
    W2 = (v/r) - ((v*cosd(angle)*(theta))/x);
    w1(end+1) = W1*9.55;
    w2(end+1) = W2*9.55;
end 
T = table(x_p',y_p',w1',w2','VariableNames',{'X','Y','W_1','W_2'}, ...
    'RowNames',{'type 3 pole','type 2 right pole','type 2 left pole', ...
    'type 1 center pole','type 1 right pole','type 1 left pole', ...
    'opponent type 2 right pole','opponent type 2 left pole', ...
    'opponent type 1 center pole','opponent type 1 right pole', ...
    'opponent type 1 left pole'} )
