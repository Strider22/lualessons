-- http://lua-users.org/wiki/SplitJoin

-- If God is good, and created the universe, why is there such trouble in the world?
local phrase = "If God is good and created the universe why is there such trouble in the world"

function SplitStringByWords(myString)
  for i in (string.gmatch(myString, "%S+")) do 
    print(i)
  end
end


--*********************************************************************************************
--
--  Main code
--
--*********************************************************************************************
SplitStringByWords(phrase)

