% Function: adjacent_spaces
% This function takes a table with coordinates and
% counts the number of available cells on four immediately adjacent sides.
% It will return 1 if there is at least 1 available space, and 0 if not.

% table: n*n matrix, representing visited and non-visited cells
% x: Proposed x-coordinate to test
% y: proposed y-coordinate to test

% Lovingly crafted by:
% dste6095 - 312079885
% sdun6546 - 

function adjacent = adjacent_space(table, x, y)

spacecount = 0;

if valid(table, x, y)
  if valid(table, x+1, y)
    spacecount = spacecount + table(x+1,y); % First adjacent squre
  end
  if valid(table, x-1, y)
    spacecount = spacecount + table(x-1,y); % 2nd
  end
  if valid(table, x, y+1)
    spacecount = spacecount + table(x, y+1);
  end
  if valid(table, x, y-1)
    spacecount = spacecount + table(x, y-1);
  end
else 
  spacecount = 4; % value is fucked, returns false
end

if spacecount == 4
  adjacent = 0;
else
  adjacent = 1;
end
end
