-- IO library http://www.lua.org/pil/21.html

-- If God is good, and created the universe, why is there such trouble in the world?
local phrase = "If God is good and created the universe why is there such trouble in the world"



local textToPhoneme = {igh="ai", ee="e", ea="e", oo="u", oa="o" }
local test={a=5}

--set default case to etc. It will naturally include
-- letters a
-- phonemes ai e etc mbp o u qw fv l th
function readLine(file)
    local f = io.open(file,"r")
    local line = f:read("*l")
    f:close()
    return line;
end

local angleLookup = {m=5, r=7, z=6, e=22, o=12,l=15, a=35, w=21, u=25, t=36, f=-23 }
function printAngle(line)
    for i=1,line:len(),1 do
        print(angleLookup[line:sub(i,i)])
    end
end


local letterToPhoneme = {a="ai", b="mbp", c="etc", d="etc", e="e", f="fv", g="etc", h="etc", i="e",
    j="etc", k="etc", l="l", m="mbp", n="etc", o="o", p="mbp", q="qw",
    r="etc", s="etc", t="etc", u="u",
    v="fv", w="qw", x="etc", y="etc", z="etc"}

function printPhonemes(phrase)
    local answer
    for i=1,phrase:len(),1 do
        local letter = phrase:sub(i,i)
        answer = letterToPhoneme[letter]
        if answer then
            print(letter .. " - " .. answer)
        end

    end
end

--*********************************************************************************************
--
--  Main code
--
--*********************************************************************************************
local line = readLine("phonemes")
printAngle(line)
printPhonemes(phrase)

