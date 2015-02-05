-- http://www.tutorialspoint.com/lua/lua_modules.htm
-- Module name and its file name should be the same.
-- It is a best practice to return modules for require function

local mymath = {}

function mymath.add(a,b)
   return a+b
end

function mymath.sub(a,b)
   return a-b
end

function mymath.mul(a,b)
   return a*b
end

function mymath.div(a,b)
   return a/b
end

return mymath