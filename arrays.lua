-- Arrays in Lua are actually tables, so understanding tables is best.
-- http://www.tutorialspoint.com/lua/lua_arrays.htm

-- create an empty table
squares = {}

-- fill in values of the array
for i=1,3 do
    squares[i] = i*i
end

-- print out the array
print("Printing out array call squares")
for i=1,3 do
    print("The square of " .. i .. " is " .. squares[i])
end
