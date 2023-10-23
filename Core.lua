local debug = false
local frame = CreateFrame("FRAME")
frame:RegisterEvent("ADDON_LOADED")

function frame:OnEvent(event, arg1)
    if event == "ADDON_LOADED" and arg1 == "StrlowerFixer" then
        print("StrlowerFixer loaded, report issues: https://github.com/jmervine/wow-StrlowerFixer.")
    end
end
frame:SetScript("OnEvent", frame.OnEvent);

local function toggleDebug()
    -- toggle 'debug' mode
    if debug then
        print("StrlowerFixer: setting debug to 'false'.")
        debug = false
    else
        print("StrlowerFixer: setting debug to 'true'.")
        debug = true
    end
end 

local function debugPrinter(str)
    if debug then
        print("DEBUG{StrlowerFixer}: " .. str)
    end
end

SLASH_STRLOWERFIXER1 = "/strlowerfixer"
SlashCmdList["STRLOWERFIXER"] = function(cmd)
    if cmd == "debug" then
        toggleDebug()
    end
end

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

    str = str or "nil"

    -- If there are no errors, return the result.
    if no_error then
        debugPrinter("'" .. str .. "' -> '" .. result .. "'.")
        return result
    end

    debugPrinter(" [with error] '" .. str .. "' -> '" .. result .. "'.")
    -- There was an error with the pcall above, so to avoid issues,
    -- we're going to just return the initial call value.
    return str
end