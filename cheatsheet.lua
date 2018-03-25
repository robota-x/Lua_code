-- comment

--[[
    MultiLine comment
]]

-- vars
local local_variable = 'immutable string'
global_vars_are_bad_right = 33 -- all numbers are doubles
local x, y, z = 1, 2, 3, 4 -- multiple assign with unbalanced expression
local nil_variable = something_not_defined -- implicit assignment to nil rather than throwing

-- print command
print(local_variable)

--[[
    compile: only speeds up load time, architecture/version dependent.
    luac -o compiled_file_name.lc file_to_compile.lua
    exec: lua compiled_file_name.lc
]]

-- looping and if branching
for num = 0, 10, 1 do -- inclusive range with step loop
    if num == 2 then
        print('this is 2')
    elseif num > 8 and num ~= 9 then
        print('must be 10')
    else
    print('concatenated iterator: ' .. num) -- no interpolation
    end

    num = num + 1
end

local iter = 0
while iter < 1 do -- while looping
    iter = iter + 1
end

-- os cmdline
print('waiting...')
os.execute("sleep " .. tonumber(0.5) ) -- non-busy sleeping with a os call (*nix only) and explicit num conversion

-- function def
function pong(ping)
    return tostring(ping) .. ' pong!'
end
print(pong('ping!'))

-- anonymous functions and closures
