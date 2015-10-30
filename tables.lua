-- http://www.tutorialspoint.com/lua/lua_tables.htm

-- create an empty table
myTable = {}
print("Type of table is " .. type(myTable))

-- assigning a value to a table
myTable["wow"] = "Interesting"

print("Array syntax " .. myTable["wow"])
print("Dot syntax " .. myTable.wow)

-- freeing a table to garbage collector
myTable = nil

-- By default lua tables are 1 indexed (ie if you
-- build the table from a list, the first index is 1)
myTable = {"banana", "orange", "apple", "grapes"}

for k,v in ipairs(myTable) do
    print("key " .. k .. " value " .. v)
end

-- Show lua tables are assigned by reference
table2 = myTable
table2[1] = "Changed value"

print("Values for table2")
for k,v in ipairs(table2) do
    print("key " .. k .. " value " .. v)
end

newTable = {hello="Hello World", next="Don't use ipairs", final="keys are not indicies"}
for k,v in pairs(newTable) do
    print("key " .. k .. " value " .. v)
end

