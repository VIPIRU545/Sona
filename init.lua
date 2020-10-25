function GetObjects(...)
    return {game:GetService("InsertService"):LoadLocalAsset(...)}
end

local mt = getrawmetatable(game)

local old_i = mt.__index
local old_n = mt.__namecall

setreadonly(mt, false)

local newcclosure = newcclosure or function(f)
        return f
    end

mt.__index =
    newcclosure(
    function(t, k)
        if t == game then
            if k == "GetObjects" and checkcaller() then
                return function(t, id)
                    return GetObjects(id)
                end
            else
                if (k == "HttpGet" and checkcaller()) then
                    return function(t, e)
                        return request_Http(e)
                    end
                end
            end
        end
        return old_i(t, k)
    end
)

mt.__namecall =
    newcclosure(
    function(self, ...)
        local check = getnamecallmethod()
        if check == "GetObjects" then
            return GetObjects(...)
        else
            if (check == "HttpGet") then
                return request_Http(...)
            end
        end
        return old_n(self, ...)
    end
)
