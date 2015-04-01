-- IO library http://www.lua.org/pil/21.html

local angleLookup = {m=80, r=73, z=73, e=67, o=144,l=101, a=39, w=123, u=158, t=106, f=111, i=55}

local f = io.open("phonemes","r")
local line = f:read("*l")
f:close()


for i=1,line:len(),1 do
    print(angleLookup[line:sub(i,i)])
end
