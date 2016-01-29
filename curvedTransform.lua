local curvedTransform = {}
curvedTransform.__index = curvedTransform


function toRadians(degrees)
    return degrees / 180 * math.pi
end

-- Rotates about Z at the origin using Right Hand Rule
-- Rotates from the top view (ie Z looking down on X,Y axis)
function curvedTransform:rotatePointZ(point, origin, degrees)
    local x = origin.x + ( math.cos(toRadians(degrees)) * (point.x - origin.x) - math.sin(toRadians(degrees)) * (point.y - origin.y) )
    local y = origin.y + ( math.sin(toRadians(degrees)) * (point.x - origin.x) + math.cos(toRadians(degrees)) * (point.y - origin.y) )
    point.x = x
    point.y = y
end


-- Rotates about X at the origin using Right Hand Rule
function curvedTransform:rotatePointX(point, origin, degrees)
    local y = origin.y + ( math.cos(toRadians(degrees)) * (point.y - origin.y) - math.sin(toRadians(degrees)) * (point.z - origin.z) )
    local z = origin.z + ( math.sin(toRadians(degrees)) * (point.y - origin.y) + math.cos(toRadians(degrees)) * (point.z - origin.z) )
    point.y = y
    point.z = z
end

-- Rotates about Y at the origin using Right Hand Rule
function curvedTransform:rotatePointY(point, origin, degrees)
    local x = origin.x + ( math.cos(toRadians(degrees)) * (point.x - origin.x) + math.sin(toRadians(degrees)) * (point.z - origin.z) )
    local z = origin.z + ( math.sin(toRadians(degrees)) * (origin.x - point.x ) + math.cos(toRadians(degrees)) * (point.z - origin.z) )
    point.x = x
    point.z = z
end

function curvedTransform:Point(x,y,z)
    local self = setmetatable({}, curvedTransform)
    self.x = x
    self.y = y
    self.z = z
    return self
end


function curvedTransform:Print()
    print("x " .. self.x .. " y " .. self.y .. " z ".. self.z)
end

local point = curvedTransform:Point(0,1,0)
point:Print()

local halfWidth = 1
local origin = curvedTransform:Point(0,0,0)
origin:Print()

curvedTransform:rotatePointX(point, origin, 90)

point:Print()