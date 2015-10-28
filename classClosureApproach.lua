-- Based on
-- http://theindiestone.com/forums/index.php/topic/8023-simple-lua-oop-without-metatables/
-- http://lua-users.org/wiki/ObjectOrientationClosureApproach
-- Lua is actually prototype based (classless)



-------------------------------------------------------------------
-- SUMMARY
-- Fully public approach may be preferred
--
-- DISCUSSION
-- The closure approach can be preferred, because it better supports
-- private values and doesn't use metatables.
--
-- However, because scripting language will define a value rather than
-- throwing an error it may be best to use a fully public approach, because
--    you don't have to create a getter and setter for everything
--    myInstance.name will not throw an error it will just cause confusion
--       because it will create a new value when you think you're
--       referencing the class value
-----------------------------------------------------------------------



------------------------------------------------------------------
--
--      DEFINE MyClass using the closure approach
--
-- I think this is the best approach for creating classes.
-- See the bottom of the file for more approaches to classes
-- and links to documentation.
------------------------------------------------------------------
-- MyClass is just a table
MyClass = {}
function MyClass.new(newName)
    -- private variables
    local self = {}
    local name = newName
    local type = "MyClass"

    -- Public method

    function self.print()
        print(name .. " is type ".. type)
    end

    function self.name()
        return name
    end

    function self.setName(newName)
        name = newName
    end

    return self
end

MySubClass = {}
function MySubClass.new(newName)
    local self = MyClass.new(newName)
    local type = "SubClass"

    -- Showing overridden function
    local parentSetName = self.setName
    function self.setName(newName)
        name = newName
        print(self.name() .. " is being change in subclass to " .. newName)
        --parentSetName(newName)
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

print("instance 1 has the name of " .. instance1.name())

---------------------------------------------------------------------
-- THE PROBLEM
-- Note this does not throw an error,
-- but it does something pretty bad.
-- it blows away the function name()
-- so you're really not protected from code using values as public
---------------------------------------------------------------------
-- instance1.name = "Franklin"
-- print("instance 1 has the name of " .. instance1.name())

-- change the name
instance1.setName("BillyBob")
instance1.print()
instance2.print()

-- Subclass
local instance3 = MySubClass.new("Instance3")
instance3.print();
instance3.setName("Instance3 aka subclass1")
instance3.print();


-- Others
-- http://lua-users.org/wiki/SimpleLuaClasses
-- http://lua-users.org/wiki/ObjectOrientationTutorial
-- http://www.lua.org/pil/16.html
-- http://www.tutorialspoint.com/lua/lua_object_oriented.htm

