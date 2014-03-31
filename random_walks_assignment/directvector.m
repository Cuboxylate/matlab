% Function: directvector (DIRECTion VECTOR)
% Returns a 1x2 matrix
% One of the values will be zero
% The other will be +/-1
% Used for obtaining random neighbouring coordinates for a given cell

% IMPORTANT
% This function, and the implementation in the question depend on functionality
% introduced in R2011a+.
% THIS CODE WILL NOT FUNCTION PROPERLY IN R2010 OR EARLIER

% Lovingly crafted by:
% dste6095 - 312079885
% sdun6546 - 

function vector = directvector()

xory = round(rand()); 
if (xory == 1)% change the x value
  x = ceil(2*rand());
  if (x == 2)
    x = -1;
  end
  y = 0;
end

if (xory == 0) % change the y value
  y = ceil(2*rand());
  if (y == 2)
    y = -1;
  end
  x = 0;
end

vector = [x,y];
