-- Based on
-- http://theindiestone.com/forums/index.php/topic/8023-simple-lua-oop-without-metatables/
-- http://lua-users.org/wiki/ObjectOrientationClosureApproach
-- Lua is actually prototype based (classless)

-- THIS USES FULLY PUBLIC CLASSES. SEE classClosureApproach DISCUSSION TO
-- UNDERSTAND WHY FULLY PUBLIC CLASSES ARE RECOMMENDED

------------------------------------------------------------------
--
--      DEFINE MyClass using the table approach
--
-- I think this is the best approach for creating classes.
-- See the bottom of the file for more approaches to classes
-- and links to documentation.
------------------------------------------------------------------
-- MyClass is just a table
MyClass = {}
function MyClass.new(name)
    -- private variables
    local self = {}
    self.name = name
    self.type = "MyClass"

    -- Public method
    function self.print()
        print("In print " .. self.name .. " is type ".. self.type)
    end

    function self.override()
        print("myOverride being called from MyClass ")
    end

    return self
end

------------------------------------------------------------------
--
--      SUBCLASS WITH INHERITANCE AND OVERRIDE
--
------------------------------------------------------------------
MySubClass = {}
function MySubClass.new(newName)
    local self = MyClass.new(newName)
    self.type = "SubClass"

    -- Showing overridden function
    local parentOverride = self.override
    function self.override()
        print("myOverride being called from MySubClass ")
        print("call parent override ")
        parentOverride()
    end
    return self
end

------------------------------------------------------------------
--
--      Invoke MyClass
--
------------------------------------------------------------------
local instance1 = MyClass.new("Instance1")
local instance2 = MyClass.new("Instance2")
instance1.print()
instance2.print()

-- name is public
instance1.name = "BillyBob"
instance1.print()
instance2.print()
instance1.override()

-- Subclass
local instance3 = MySubClass.new("Instance3")
instance3.print()
instance3.override()

------------------------------------------------------------------
--
--      CALL EXTERNALLY DEFINED SHAPE WITH A GLOBAL SCOPE
--
-- shape is defined just like MyClass except it
-- is defined in another file. It has global scope, instead
-- of in a module, but I think that is good for projects
-- written by a single user. Also name space is probably
-- best managed like Anime Studio ... MSMyClass
------------------------------------------------------------------
--[[require "shape"
local shape1 = Shape.new()
local shape2 = Shape.new()
shape1.setCenter(1,1)
shape1.print("shape1")
shape2.print("shape2")
]]

-- Static Class example
StaticClass = {}
function StaticClass:phrase()
    return "Hello World"
end
function StaticClass:hello()
  print(self:phrase())
end

--hello()
StaticClass:hello()

