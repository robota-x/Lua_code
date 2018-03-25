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

-- while looping
local iter = 0
while iter < 1 do
    iter = iter + 1
end

-- os cmdline
print('waiting...')
os.execute("sleep " .. tonumber(0.5) ) -- non-busy sleeping with a os call (*nix only) and explicit num conversion

-- first class functions
function pong(ping)
    return tostring(ping) .. ' pong!'
end
print(pong('ping!'))

-- closures
function closured(divisor)
    return function(to_divide) return to_divide / divisor end --inline declaration
end
print(closured(10)(100))

-- recursion with anonymous function and local var. This sounds like a easy to break idea. 
recur = function(number)
    print('counting down ' .. number)
    if number <= 0 then print('done.') return end
    return recur(number - 1) -- tail call optimization
end
recur(15)

-- tables with js-like acces
local tab = {
    k1 = 'one',
    k2 = 2,
}
print('non existing key: ' .. tostring(tab.nope))
tab['ba'] = 'nana'  -- literal notation
tab.k2 = nil -- nil value is equivalent to non-existing key.
for key, val in pairs(tab) do
    print(key, val)
end


-- also indexes start at 1