% Function: rac (Random Adjacent Coordinate)
% Randomly selects a coordinate value = 1 and returns the coordinate
% of a free adjacent particle.

% Lovingly crafted by:
% dste6095 - 312079885
% sdun6546 - 

% Record: 2*(number of visited cells) matrix, containing the coordinates
%         of all existing visited locations
% Table: n*n size matrix of 1/0 values representing visited/unvisited cells
%        visited or not

function vector = rac(table, record)

foundValidValue = 0;
count = 0;

while 1
  % Get a random visited cell and ensure it has
  % at least one adjacent cell that's free
  randentry = ceil(rand()*size(record,2)); % number of rows in the vector
  existlocx = record(1,randentry); % Randomly chosen already visited value of x
  existlocy = record(2,randentry); % Randomly chosen already visited value of y
  if adjacent_space(table, existlocx, existlocy)
    % break if the cell has an available adjacent space
    break
  end
end

vector = directvector();
incx = vector(1);
incy = vector(2);

while (foundValidValue == 0)

  newx = existlocx + incx; % Proposed new value of x
  newy = existlocy + incy; % Proposed new value of y
 
  if valid(table, newx, newy) && table(newx, newy) == 0 % Adjacent coordinate not yet visited
    foundValidValue = 1; % Finish while condition
  else % Invalid value, time to cycle around record(existlocx, existlocy)!
    switch count
    case 1
      incx = incx*-1; % Reverse x or y direction
      incy = incy*-1; % the value at zero will stay the same
    case 2
      temp = incx; % swap x and y 
      incx = incy;
      incy = temp;
    case 3
      incx = incx*-1; % Reverse x or y direction
      incy = incy*-1; % Opposite to case 1
      % because of the implementation of adjacent_space(), there is
      % no need for case 4, as a free cell will definitely be found by that point
    end % switch
  end % if
  count = count + 1;

  vector = [newx, newy];
end % function
