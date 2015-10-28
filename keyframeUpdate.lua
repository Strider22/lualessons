--KeyFrame update
--This is an example where I have a table of values.
--I want to update the values, but something else depends
--on those values, so I want the dependencies to be updated.
--A situation where this can happen is in keyframe updating.
local switchLayers = {"feet", "legs", "body", "shoulders", "head"}
local keyFrames = {"shoulders", "body", "shoulders", "legs"}

-- Print layers and keyframes
for k,v in ipairs(switchLayers) do
    print("layer " .. k .. " value " .. v)
end
for k,v in ipairs(keyFrames) do
    print("keyframe " .. k .. " value " .. v)
end

-- Rename layers
local i = 1
local renameMap = {}
for k,v in ipairs(switchLayers) do
    switchLayers[k] = "Layer " .. i
    renameMap[v] = "Layer " .. i
    i =i+1
end

-- Rename keys
print("renamemap")
for k,v in pairs(renameMap) do
    print("layer " .. k .. " value " .. v)
end

for k,v in pairs(keyFrames) do
    keyFrames[k] = renameMap[v]
end


-- Print layers and keyframes
print("After renaming ")
for k,v in ipairs(switchLayers) do
    print("layer " .. k .. " value " .. v)
end
for k,v in ipairs(keyFrames) do
    print("keyframe " .. k .. " value " .. v)
end

