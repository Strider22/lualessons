require "Phonemes"
-- If God is good, and created the universe, why is there such trouble in the world?
local phrase = "If God is good and created the universe why is there such trouble in the world"
local phrase2 =  "What are you talking about"

local phonemeList = {}
Phonemes:buildPhonemeListFromPhrase(phrase, phonemeList)
Phonemes:dump(phonemeList)
