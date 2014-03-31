% Function: valid

% Lovingly crafted by:
% dste6095 - 312079885
% sdun6546 - 

% table: n*n matrix representing visited and unvisited cells
% x: x-coordinate to be tested
% y: y-coordinate to be tested

% Takes a table and a x and y coordinate in that table
% returns 1 if the x and y are both inside the table
% otherwise returns 0

function valid_coord = valid(table, x, y)
table_size = size(table);
if x <= table_size(1) && x > 0 && y <= table_size(2) && y > 0
  valid_coord = 1;
else
  valid_coord = 0;
end
end
