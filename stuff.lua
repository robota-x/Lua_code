-- fizz buzz with recursion because why not.
local function fizz_buzz(current, stop)
    if current >= stop then return end

    if current % 15 == 0 then print('fizzbuzz')  -- not 0 is false
    elseif current % 5 == 0 then print('buzz')
    elseif current % 3 == 0 then print('fizz')
    else print(current) 
    end

    return current <= stop and fizz_buzz(current + 1, stop) or nil
end

fizz_buzz(0, 3000) -- default max stack size is 2048