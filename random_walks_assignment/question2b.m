%----------------------
%Solution to Question 2b
%----------------------
%
%Student 1: SID =   310178916
%Student 2: SID =   312079885
%
%----------------------
%
%   In the data provided -500 represents the sea, but land values are all
%   positive. Therefore, to find how much of the area is covered in sea
%   after a rise in sea level, we must find all elements in the matrix less
%   than the seaLevelChange itself (instead of the intuitive minValue +
%   seaLevelChange).
%   This script works out the fraction of the area less than the new
%   sealevel, and then the amount of land sunk by the shift (fraction now
%   underwater - fraction originally underwater).
%
%   if seaLevelChange = 7.2, fraction underwater = 0.3910, landSunk =
%   0.0113.
%
%   if seaLevelChange = 70, fraction underwater = 0.4529, landSunk =
%   0.0732.
%
%----------------------

alt = load('australia_east.txt');
minValue = min(min(alt));
seaLevelChange = 70;

fraction = numel(find(alt<seaLevelChange))/numel(alt)
landSunk = fraction - numel(find(alt==minValue))/numel(alt)
