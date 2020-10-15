function [] = PrintPosAndVelScatter(gestureName, posArrayX, posArrayY, posArrayZ, timeVal)
% Calculate derivatives
dX = diff(posArrayX);
dY = diff(posArrayY);
dZ = diff(posArrayZ);

% Calculate second derivatives
dX2 = diff(dX);
dY2 = diff(dY);
dZ2 = diff(dZ);

% General Position
figure('Name', gestureName);
scatter(timeVal, posArrayX);
hold on;
scatter(timeVal, posArrayY);
hold on;
scatter(timeVal, posArrayZ);
hold on;
legend('X', 'Y', 'Z');
title(gestureName);
xlabel('Time Value (seconds)');
ylabel('Position Values');

% Gesture position derivative
figure('Name', append(gestureName, ' Derivative'));
scatter(timeVal(1:width(timeVal)-1), dX);
hold on;
scatter(timeVal(1:width(timeVal)-1), dY);
hold on;
scatter(timeVal(1:width(timeVal)-1), dZ);
hold on;
legend('dx', 'dy', 'dz');
title(append(gestureName,' Derivative'));
xlabel('Time Value (seconds)');
ylabel('Velocity Values');

% Gesture position second derivative
figure('Name', append(gestureName, ' Second Derivative'));
scatter(timeVal(1:width(timeVal)-2), dX2);
hold on;
scatter(timeVal(1:width(timeVal)-2), dY2);
hold on;
scatter(timeVal(1:width(timeVal)-2), dZ2);
hold on;
legend('dx2', 'dy2', 'dz2');
title(append(gestureName,' Second Derivative'));
xlabel('Time Value (seconds)');
ylabel('Acceleration Values');