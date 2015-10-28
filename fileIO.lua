-- IO library http://www.lua.org/pil/21.html


local f = io.open("myFile","w")
f:write("Hello file");
f:close()
local f = io.open("myFile","r")
local line = f:read("*line")
f:close()
print("line read = " .. line)

-- open and read the file a second time with *l
f = io.open("myFile","r")
line = f:read("*l")
print("line read a second time = " .. line)
