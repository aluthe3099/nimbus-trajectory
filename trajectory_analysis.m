% Store values from CSV into table
trajData = readtable('trajectories.csv');

% Empty 1-D arrays to store data for each axis data for each gesture
timeVal = zeros(height(trajData),0);

circleX = zeros(height(trajData),0);
circleY = zeros(height(trajData),0);
circleZ = zeros(height(trajData),0);

figureEightX = zeros(height(trajData),0);
figureEightY = zeros(height(trajData),0);
figureEightZ = zeros(height(trajData),0);

loopX = zeros(height(trajData),0);
loopY = zeros(height(trajData),0);
loopZ = zeros(height(trajData),0);

swoopX = zeros(height(trajData),0);
swoopY = zeros(height(trajData),0);
swoopZ = zeros(height(trajData),0);

undulateX = zeros(height(trajData),0);
undulateY = zeros(height(trajData),0);
undulateZ = zeros(height(trajData),0);

uShapeX = zeros(height(trajData),0);
uShapeY = zeros(height(trajData),0);
uShapeZ = zeros(height(trajData),0);

% Iterates through CSV and updates the X,Y, and Z arrays
for row = 1:height(trajData)
    timeVal(row) = row;
    circleX(row) = trajData{row, 1};
    circleY(row) = trajData{row, 2};
    circleZ(row) = trajData{row, 3};
    
    figureEightX(row) = trajData{row, 4};
    figureEightY(row) = trajData{row, 5};
    figureEightZ(row) = trajData{row, 6};
    
    loopX(row) = trajData{row, 7};
    loopY(row) = trajData{row, 8};
    loopZ(row) = trajData{row, 9};
   
    swoopX(row) = trajData{row, 10};
    swoopY(row) = trajData{row, 11};
    swoopZ(row) = trajData{row, 12};
    
    undulateX(row) = trajData{row, 13};
    undulateY(row) = trajData{row, 14};
    undulateZ(row) = trajData{row, 15};
    
    uShapeX(row) = trajData{row, 16};
    uShapeY(row) = trajData{row, 17};
    uShapeZ(row) = trajData{row, 18};
    
end

% Print position, velocity, and acceleration scatter plots for each gesture
PrintPosAndVelScatter('Circle', circleX, circleY, circleZ, timeVal)
PrintPosAndVelScatter('Figure 8', figureEightX, figureEightY, figureEightZ, timeVal)
PrintPosAndVelScatter('Loop', loopX, loopY, loopZ, timeVal);
PrintPosAndVelScatter('Swoop', swoopX, swoopY, swoopZ, timeVal);
PrintPosAndVelScatter('Undulate', undulateX, undulateY, undulateZ, timeVal);
PrintPosAndVelScatter('U Shape', uShapeX, uShapeY, uShapeZ, timeVal);

% Calculate points of inflection for the scatter plots
% Circle
disp("Circle Y inflection points: " + InflectionPoints(circleY));
disp("Circle Z inflection points: " + InflectionPoints(circleZ));

% Figure 8
disp("Figure 8 Y inflection points: " + InflectionPoints(figureEightY));
disp("Figure 8 Z inflection points: " + InflectionPoints(figureEightZ));

% Loop
disp("Loop Y inflection points: " + InflectionPoints(loopY));
disp("Loop Z inflection points: " + InflectionPoints(loopZ));

% Swoop
disp("Swoop Y inflection points: " + InflectionPoints(swoopY));
disp("Swoop Z inflection points: " + InflectionPoints(swoopZ));

% Undulate
disp("Undulate Y inflection points: " + InflectionPoints(undulateY));
disp("Undulate Z inflection points: " + InflectionPoints(undulateZ));

% U shape
disp("U shape Y inflection points: " + InflectionPoints(uShapeY));
disp("U shape Z inflection points: " + InflectionPoints(uShapeZ));
