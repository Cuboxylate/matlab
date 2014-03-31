% Particles in this solution are presented as ants

% Question 1d
% Randomly adjacent spawning

% Lovingly crafted by:
% dste6095 - 312079885
% sdun6546 - 310178916

% One paragraph on how this program works:
% This program spawns $nsteps particles on a 200x200 board,

% Initialising...
clear
nsteps = 10000; 
location = zeros(200);
location(100,100) = 1;
record(1,1) = 100;
record(2,1) = 100;

for i = 2:nsteps
  coords = rac(location, record); % Pick from proper coordinates
  x = coords(1);
  y = coords(2);
  record(1,i) = x; % record newly found coordinates
  record(2,i) = y;
  if valid(location, x, y) % avoid exceptions
    location(x,y) = location(x,y) + 1; % increment value on grid
  end
end

imagesc(location)
