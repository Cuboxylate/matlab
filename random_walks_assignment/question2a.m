%----------------------
%Solution to Question 2a
%----------------------
%
%Student 1: SID =   310178916
%Student 2: SID =   312079885
%
%----------------------
%
%	Finds the minValue in the matrix suppied. Finds the number of
%   elements in the matrix with this minValue and divides by the
%   total number of elements.
%   minValue = -500
%   fraction = 0.3797
%
%----------------------

alt = load('australia_east.txt');
minValue = min(min(alt));
fraction = numel(find(alt==minValue))/numel(alt)




