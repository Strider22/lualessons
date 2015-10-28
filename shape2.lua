------------------------------------------------------------------
--
--      DEFINE Shape using the table approach
--
------------------------------------------------------------------
Shape = {}
function Shape.new()
    local self = {}
    self.type = "Basic Shape"
    self.x = 0
    self.y = 0

    function self.print(label)
        print(label)
        print(self.type .. ": center is at ".. self.x ..", ".. self.y)
    end

    function self.setCenter(x,y)
        self.x = x
        self.y = y
    end
    return self
end

