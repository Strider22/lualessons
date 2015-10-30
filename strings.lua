-- http://lua-users.org/wiki/StringLibraryTutorial
-- http://lua-users.org/wiki/SplitJoin

local phrase = "If God is good and created the universe why is there such trouble in the world"

function SplitStringByWords(myString)
  for i in (string.gmatch(myString, "%S+")) do
    print(i)
  end
end

function SplitStringByCount(myString,count)
  return myString:sub(1,count), myString:sub(count+1)
end


--*********************************************************************************************
--
--  Main code
--
--*********************************************************************************************
-- substitute <A> for "the"
print("\n[Substitution]\n")
print(phrase:gsub("the","<A>"))

print("\n[Splitting Strings]\n")
SplitStringByWords(phrase)

print("\n[Substrings]\n")
print(phrase:sub(1,5))

print("\n[Last Letter]\n")
print(phrase:sub(-1,-1))

print("\n[Split at 3]\n")
local string1, string2 = SplitStringByCount("universe",3)
print("string1 = " .. string1 .. " and string2 = " .. string2)
