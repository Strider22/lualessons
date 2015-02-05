-- http://www.tutorialspoint.com/lua/lua_modules.htm
-- set LUA_PATH=?.lua;C:\<mypath>\?.lua

require "addModule"

print("MyAddFunction(2,3) = " .. MyAddFunction(2,3))



ms_math = require "mymath"

print("2 + 3 = " .. ms_math.add(2,3))
print("3 - 2 = " .. ms_math.sub(3,2))
print("2 * 3 = " .. ms_math.mul(2,3))
print("3/2 = " .. ms_math.div(3,2))
