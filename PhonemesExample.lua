require "Phonemes"
-- If God is good, and created the universe, why is there such trouble in the world?
-- local phrase = "If God is good and created the universe why is there such trouble in the world"
--local phrase = "if god iz gud and crEAtid thu UnivRs wI iz thAR such tRubl in thu wRld"
--local phrase = "if god crEAtid thu UnivRs wI iz thAR such tRubl in thu wRld"
local phrase = "tR2u4bl9 in "
--local phrase = "thu wRld"
--local phrase = "UnivRs"

--local phrase =  "What are you talking about"

--phrase = phrase:lower()

local phonemeList = {}
Phonemes:buildPhonemeListFromPhrase(phrase, phonemeList)
Phonemes:dump(phonemeList)
local numVowels, numConsonants = Phonemes:countPhonemes(phonemeList)
print("num Vowels " .. numVowels .. " numConsonants " .. numConsonants)
