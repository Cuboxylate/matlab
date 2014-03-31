%----------------------
%Solution to Question 2c
%----------------------
%
%Student 1: SID =   310178916
%Student 2: SID =   312079885
%
%----------------------
%
%   Script to find the probability a randomly walking man will reach the
%   ocean. At the beginning of each trial iteration the initial coordinates
%   are set at [500 300]. For each of the 100 steps a random direction of 
%   travel is chosen by the directvector() function, and the man travels 10 
%   units in that direction.. The new coordinate is then tested to see if 
%   it is in the ocean (if it holds the minimum value of "alt"). A count is
%   kept of the number of times the ocean is reached and the probability is
%   taken from this count / total number trials.
%
%
%----------------------

alt = load('australia_east.txt');
minValue = min(min(alt));   % Calculates ocean level
trials = 1000;           
days = 100;
count = 0;                  % Number of times the ocean is reached

for j=1:trials
    coord = [500 300]; % current coordinate of traveller, resets after each trial
    
    for i=1:days % for each day travelled
        direction = 10.*directvector();
        coord(1) = coord(1) + direction(1);
        coord(2) = coord(2) + direction(2);
   
        % If the new coordinate is in the ocean, increase count and break
        % the current trial.
        if alt(coord(1), coord(2)) == minValue
            count = count + 1;
            break
        end
    end
end

probability = count/trials
