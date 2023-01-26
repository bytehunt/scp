#!/usr/bin/env lua

local symbol
local env_symbol = os.getenv("CCC_SYMBOL")

if arg[1] then
    symbol = arg[1]
else
    if env_symbol ~= nil then
        symbol = env_symbol
    else
        symbol = ""
    end
end

local function color(col)
    return ("\027[38;5;%sm"):format(col)
end

io.write("\n")

for i = 0,7 do
    local color = (" \027[%sm%s \027[m"):format(30+i, symbol)
    io.write(color)
end

io.write("\n")


for i = 0,7 do
    local color = (" \027[%sm%s \027[m"):format(90+i, symbol)
    io.write(color)
end


io.write("\n\n")

