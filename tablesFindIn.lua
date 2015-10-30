-- http://www.tutorialspoint.com/lua/lua_tables.htm
-- see also textToAngles.lua

myTable = {"banana", "orange", "apple", "grapes"}

for k,v in ipairs(myTable) do
    print("key " .. k .. " value " .. v)
end

function Set (list)
    local set = {}
    for _, l in ipairs(list) do set[l] = true end
    return set
end

local mySet = Set(myTable)
if not mySet["beans"]
then
    print("beans not found")
end

if mySet["orange"] then
    print("orange found")
end

