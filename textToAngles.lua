-- next step - convert a word to phonemes

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

-- ignore e at the end of a word
-- long if only one consonant between
-- y at end i


local phonemeMap = {}
phonemeMap[1] = {
    a = "ai",
    b = "mbp",
    c = "etc",
    d = "etc",
    e = "e",
    f = "fv",
    g = "etc",
    h = "etc",
    i = "e",
    j = "etc",
    k = "etc",
    l = "l",
    m = "mbp",
    n = "etc",
    o = "o",
    p = "mbp",
    q = "qw",
    r = "etc",
    s = "etc",
    t = "etc",
    u = "u",
    v = "fv",
    w = "qw",
    x = "etc",
    y = "etc",
    z = "etc"
}
phonemeMap[2] = { oo = "u", oa = "o", ee = "e", ea = "e", ch = "etc", th = "etc", gh = "fv", ou = "u" }
phonemeMap[3] = { igh = "ai" }
phonemeMap[4] = { eigh = "ai" }

function findPhonemeInList(phrase, len, stringList)
    return stringList[phrase:sub(1,len)]
end


function findNextPhoneme(word)
    local wordLen = word:len()
    if wordLen < 1 then return nil, nil end
    local len = 4
    if wordLen < len then len = wordLen end
    for i=len,1,-1 do
      local phrase, remainder = splitStringByCount(word,i)
      local phoneme = findPhonemeInList(phrase,i,phonemeMap[i])
      if phoneme ~= nil then 
        return phoneme, remainder
      end
    end
    print("Error, i = ".. i .. " phrase = " .. phrase .. " and no phoneme found")
end

function splitStringByCount(myString,count)
    return myString:sub(1,count), myString:sub(count+1)
end

function printPhonemes(phrase)
    local answer
    local strLen = phrase.len()
end

function dump(table)
    for k,v in pairs(table) do
        print("key " .. k .. " value " .. v)
    end
end

function findPhonemesInWord(word)
  local phonemeList = {}
  local phoneme
  while word ~= "" do
    phoneme, word = findNextPhoneme(word)
    table.insert(phonemeList, phoneme)
    --print("phoneme " .. phoneme .. " remainder " .. word)
  end
  dump(phonemeList)
end
--[[*********************************************************************************************

  Main code

*********************************************************************************************]]
--print(phonemeMap[1])
--dump(phonemeMap[4])
--local phoneme = findPhonemeInList("eigh",4,phonemeMap[4])
--if phoneme then print("phoneme " .. phoneme) end
--phoneme = findPhoneme("k")
--if phoneme then print("phoneme found " .. phoneme) end
findPhonemesInWord("universe")
--[[
local line = readLine("phonemes")
printAngle(line)
printPhonemes(phrase)
]]
