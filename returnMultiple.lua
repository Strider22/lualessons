-- http://www.wellho.net/resources/ex.php4?item=u106/rmv

function SplitStringByCount(myString,count)
  return myString:sub(1,count), myString:sub(count+1)
end


--*********************************************************************************************
--
--  Main code
--
--*********************************************************************************************

print("\n[Split at 3]\n")
local string1, string2 = SplitStringByCount("universe",3)
print("string1 = " .. string1 .. " and string2 = " .. string2)
