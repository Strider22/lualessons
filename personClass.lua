-- http://www.tutorialspoint.com/lua/lua_modules.htm
-- Module name and its file name should be the same.
-- It is a best practice to return modules for require function
-- Quick test change to verify update to github

-- make member variables local
local _name, _age

-- make the global environment internally accessible
local _G = _G

module(...)

function Register(name, age)
   _name = name
   _age = age
end

function Display()
   _G.print("Name " .. _name)
   _G.print("Age  " .. _age)
end

