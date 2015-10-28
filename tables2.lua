-- Standard table methods
-- Static methods that can be applied to tables
-- http://www.tutorialspoint.com/lua/lua_tables.htm

-- insert
myTable = {"banana", "orange", "apple", "grapes"}
table.insert(myTable,"mango")
table.insert(myTable,2,"pineapple")

print("Values for myTable")
for k,v in ipairs(myTable) do
    print("key " .. k .. " value " .. v)
end

-- remove
table.remove(myTable,3)
print("Values for myTable after remove")
for k,v in ipairs(myTable) do
    print("key " .. k .. " value " .. v)
end

-- sort
table.sort(myTable)
print("Values for myTable after sort")
for k,v in ipairs(myTable) do
    print("key " .. k .. " value " .. v)
end
