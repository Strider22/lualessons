-- Lua is actually prototype based (classless)
-- Dog is a class using the closure approach

Dog = {}
function Dog.new(name)
    local self = {}
    local name = name
    function self.speak()
        print("I'm a dog. My name is " .. name)
    end
    return self
end

