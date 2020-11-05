local GetObjects = function(self, a)
    if a then
        return {game:GetService("InsertService"):LoadLocalAsset(a)} 
    else
        return {game:GetService("InsertService"):LoadLocalAsset(self)} 
    end
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
                if (k == "HttpGet" or k == "HttpGetAsync" and checkcaller()) then
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
            if (check == "HttpGet" or check == "HttpGetAsync") then
                return request_Http(...)
            end
        end
        return old_n(self, ...)
    end
)

getfenv(0)["toprint"] =
    newcclosure(
    function(...)
        local Rt, Rn = {...}, select("#", ...)
        local Str = ""
        for i = 1, Rn do
            local v = getrenv().tostring(Rt[i])
            if (type(v) ~= "string") then
                error("'tostring' must return a string to 'print'", 0)
            end

            Str = Str .. v .. " "
        end

        return printcon(Str)
    end
)

--store all modules and localscripts--

for i, v in pairs(getloadedmodules()) do
    store_modules(v:GetFullName())
end

for i, v in pairs(getscripts()) do
    store_scripts(v:GetFullName())
end
