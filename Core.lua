local strlowerf = nil
if strlower then
    strlowerf = strlower
end

function strlower(str)
    if not strlowerf then
        strlowerf = string.lower 
    end

    no_error, result = pcall(strlowerf, str)
    if no_error then
        return result
    end

    -- There was an error with the pcall above, so to avoid issues,
    -- we're going to just return the initial call value.
    return str
end