--Simple interpolation calculation
-- http://stackoverflow.com/questions/4353525/floating-point-linear-interpolation

function interpolate(value1, value2, fraction)
  return (value1 * (1.0 - fraction)) + (value2 * fraction);
end

-----------------------------------------------------------------------------------------------[[
--INVOKING THE FUNCTIONS
-----------------------------------------------------------------------------------------------]]
print(interpolate(10,20,.5));
print(interpolate(10,20,.1));
print(interpolate(-100.245,100.245,.5 ));
