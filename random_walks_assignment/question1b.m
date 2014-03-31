% Particles in this solution are presented as ants

% Question 1b
% Multiple ant walk

% Lovingly crafted by:
% dste6095 - 312079885
% sdun6546 - 310178916

% One paragraph on how this program works
%
% This program tracks the coordinates of $nants ants which randomly move
% up, down, left or right on a 2D plane each timestep for $nsteps.
% The program generates a random directon $nsteps times for each ant
% and adds these to the existing coordinates to simulate a "step" 
% and plots the new value on a 100x100 matrix, which is displayed as a
% graphic at the end

nsteps = 1000; % number of steps the ant will take
nants = 10; % number of ants
location = [50, 50] % tracks ant coordinates
ant_path = zeros(100); % initialise grid of 100x100
ant_path(50,50) = 1; % set centre of grid (start location) to 1

for ant = 1:nants
  for j = 1:nsteps
    vector = directvector(); % a randomised 0 and (+/-)1 pair
    x = vector(1);
    y = vector(2);
    location(1) = location(1) + x; % record ant coordinates
    location(2) = location(2) + y;

    % update location of ant on grid
    x = location(1);
    y = location(2);
    if valid(ant_path, x, y) % avoid exceptions
      ant_path(x, y) = 1;
    end
  end
end

imagesc(ant_path); % picture!
