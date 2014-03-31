% Particles in this solution are presented as ants

% Question 1c
% Multiple particle walk - final position surface plot

% Lovingly crafted by: 
% dste6095 - 312079885
% sdun6546 - 310178916

% One paragraph on how this program works:
%
% This program tracks the coordinates of $nants ants which randomly move
% up, down, left or right on a 2D plane each timestep for $nsteps.
% Each ant's coordinates is recorded on a $nants x 2 column matrix.
% After this is complete, the finishing points are recorded on a 100x100
% matrix and plotted on a 3D histogram.

ant_path = zeros(100);
% initialise grid of 100x100

nsteps = 1000;
nants = 10000;

for ant = 1:nants
  location(ant, 1) = 50; %Starting values
  location(ant, 2) = 50;
  for j = 1:nsteps
    vector = directvector(); % gets a randomised 0 or +/-1 pair
    x = vector(1);
    y = vector(2);
    location(ant, 1) = location(ant, 1) + x; % update coordinates
    location(ant, 2) = location(ant, 2) + y; 
  end 
  disp(ant)
end

for i = 1:nants
  x = location(i,1); % iterate through recorded values
  y = location(i,2);
  if valid(ant_path, x, y)
    ant_path(x,y) = ant_path(x,y) + 1; % increment ant count on cells
  end
end
surf(ant_path); % pretty colours!
