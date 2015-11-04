-- next steps
-- turn phoneme list into switch frames, removing duplicates as needed (space out frames
-- remove silent e
-- special case handling (what - qw u etc; about - u mpb ai o etc)

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

--[[First element shows mouth position
--second element shows length of time
 -- c - only one frame
 -- v - multiple frames
 ]]
local phonemeMap = {
    a = {"ai", "v"},
    b = {"mbp","c"},
    c = {"etc","c"},
    d = {"etc","c"},
    e = {"e", "v"},
    f = {"fv","v"},
    g = {"etc","c"},
    h = {"etc","c"},
    i = {"e","v"},
    j = {"etc","c"},
    k = {"etc","c"},
    l = {"l","v"},
    m = {"mbp","v"},
    n = {"etc","v"},
    o = {"o","v"},
    p = {"mbp","c"},
    q = {"qw","c"},
    r = {"etc","v"},
    s = {"etc","v"},
    t = {"etc","c"},
    u = {"u","v"},
    v = {"fv","v"},
    w = {"qw","v"},
    x = {"etc","v"},
    y = {"etc","v"},
    z = {"etc","v"},
    oo = {"u","v"},
    oa = {"o","v"},
    ee = {"e","v"},
    ea = {"e","v"},
    ch = {"etc","c"},
    th = {"etc","v"},
    gh = {"fv","v"},
    ou = {"u","v"},
    wh = {"qw","v"},
    igh = {"ai","v"},
    eigh = {"ai","v" }
}

phonemeSpecials = {wha={{"qw","v"},{"u","v"}}, out={{"ai","v"},{"o","v"},{"etc","c"}}}

function findPhonemeInList(phrase, len, stringList)
    return stringList[phrase:sub(1,len)]
end


function findNextPhoneme(word)
    word = string.lower(word)
    local wordLen = word:len()
    if wordLen < 1 then return nil, nil end
    local len = 4
    if wordLen < len then len = wordLen end
    for i=len,1,-1 do
      local phrase, remainder = splitStringByCount(word,i)
      local phoneme = findPhonemeInList(phrase,i,phonemeMap)
      if phoneme ~= nil then 
        return phoneme, remainder
      end
    end
    -- if the phoneme is not found, assume it's punctuation and return etc
    print("word " .. word .. " not found")
    return "etc", remainder
end

function splitStringByCount(myString,count)
    return myString:sub(1,count), myString:sub(count+1)
end

function dump(table)
    for k,v in pairs(table) do
        if(type(v) == "table")then
            dump(v)
        else
            print("key " .. k .. " value " .. v)
        end
    end

end

function addPhonemesInWordToList(word, phonemeList)
  local phoneme
  while (word ~= "") and (word ~=nil) do
    phoneme, word = findNextPhoneme(word)
    table.insert(phonemeList, phoneme)
    --print("phoneme " .. phoneme .. " remainder " .. word)
    --print("phoneme " .. phoneme)
  end
end

function buildPhonemeListFromPhrase(phrase,phonemeList)
    for word in (string.gmatch(phrase, "%S+")) do
        addPhonemesInWordToList(word,phonemeList)
    end
end
--[[*********************************************************************************************

  Main code

*********************************************************************************************]]
local phonemeList = {}
buildPhonemeListFromPhrase("What are you talking about", phonemeList)
--buildPhonemeListFromPhrase("What", phonemeList)
dump(phonemeList)
