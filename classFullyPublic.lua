-- Based on
-- http://theindiestone.com/forums/index.php/topic/8023-simple-lua-oop-without-metatables/
-- http://lua-users.org/wiki/ObjectOrientationClosureApproach
-- Lua is actually prototype based (classless)

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
        print(self.name .. " is type ".. self.type)
    end

    function self.setName(newName)
        print(self.name .. " is changing name to " .. newName)
        self.name = newName
    end

    return self
end

MySubClass = {}
function MySubClass.new(newName)
    local self = MyClass.new(newName)
    self.type = "SubClass"

    -- Showing overridden function
    function self.setName(newName)
        print(self.name .. " is being changed in subclass to " .. newName)
        self.name = newName;
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

-- change the name
instance1.setName("BillyBob")
instance1.print()
instance2.print()

-- Subclass
local instance3 = MySubClass.new("Instance3")
instance3.print()
instance3.setName("Instance3 aka subclass1")
instance3.print()

print("Example of public access to name")
instance3.name = "Franklin"
instance3.print()