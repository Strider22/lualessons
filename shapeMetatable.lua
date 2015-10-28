local shape = {}
shape.__index = shape

function shape:Init(label,x,y)
    local self = setmetatable({}, shape)
    self.label = label
    self.x = x
    self.y = y
    return self
end

function shape:SetPosition(x, y)
    self.x = x
    self.y = y
end

function shape:Print()
    print(self.label .. " " .. self.x .. " " .. self.y)
end

local point = shape:Init("point1",0,0)
point:Print()

point:SetPosition(1,5)
point:Print()

local point2 = shape:Init("point2",3,4)
point2:Print()
point:Print()
print("point2 x ".. point2.x)