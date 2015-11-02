--http://lua-users.org/wiki/PatternsTutorial
-- http://www.lua.org/manual/5.2/manual.html#6.4.1
-- http://www.lua.org/pil/20.2.html
-- Similar to, but not the same as regular expressions

function dump(message, value)
    if(value ~= nil) then
        print(message .. value)
    end
end

-- . matches any character
print("string find " .. string.find("out",'ou.'))
print("string match " .. string.match("out",'ou.'))
print("string match " .. string.match("ouch",'ou..'))

local match
-- This will not match, result is nil value
match = string.match("out",'ou..')
dump("match out out .. ", match)

local vowels = "[aeiouy]"
local consonants = "[^aeiouy]"
local doubleConsonant = "[^aeiouy][^aeiouy]+"
match = string.match("pattern",doubleConsonant)
dump("long vowel silent e - ", match)

match = string.match("ade",'e$')
dump("string ends with e - ", match)
