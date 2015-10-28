-- http://www.lua.org/pil/21.2.2.html

print("reading.psd file")
local f = io.open("dijitProgressBarAnim.psd","rb")
--local line = f:read("*all")
local block = 10
while true do
    local bytes = f:read(block)
    if not bytes then break end
    for b in string.gfind(bytes, ".") do
        io.write(string.format("%02X ", string.byte(b)))
    end
    io.write(string.rep("  ", block - string.len(bytes) +1))
    io.write(string.gsub(bytes, "%c", "."), "\n")
end

f:close()
