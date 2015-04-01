-- IO library http://www.lua.org/pil/21.html

local angleLookup = {m=5, r=7, z=6, e=22, o=12,l=15, a=35, w=21, u=25, t=36, f=-23}

local f = io.open("phonemes","r")
local line = f:read("*l")
f:close()


for i=1,line:len(),1 do
    print(angleLookup[line:sub(i,i)])
end
