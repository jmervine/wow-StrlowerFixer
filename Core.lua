-- Use stdlib 'string.lower' function by default.
local strlowerf = string.lower

-- If 'strlower' has been previously defined, use that instead.
if strlower then
    strlowerf = strlower
end

-- Define a new 'strlower' function.
function strlower(str)
    -- Attempt to call the lower function previously defined and determine 
    -- if there was an error in the call.
    no_error, result = pcall(strlowerf, str)

    -- If there are no errors, return the result.
    if no_error then
        return result
    end

    -- There was an error with the pcall above, so to avoid issues,
    -- we're going to just return the initial call value.
    return str
end