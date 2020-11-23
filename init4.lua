--pretty cool right this isnt exactly the full drawing lib source u need way more than this so u wont get anywhere with this

local text = {
    __index = function(T, K)
        if K == "Remove" then
            return newcclosure(
                function()
                    dRenderObject_T(rawget(T, "PROPERTY"))
                    dRenderObject_T(rawget(T, "PROPERTY"))
                    dRenderObject_T(rawget(T, "PROPERTY"))
                    rawset(T, "PROPERTY", nil)
                end
            )
        end

        return gRenderObject_T(rawget(T, "PROPERTY"), K)
    end,
    __newindex = function(T, K, V)
        return sRenderObject_T(rawget(T, "PROPERTY"), K, V)
    end,
    __gc = function(self)
        dRenderObject_T(rawget(self, "PROPERTY"))
    end,
    __type = "Text"
}

local quad = {
    __index = function(T, K)
        if K == "Remove" then
            return newcclosure(
                function()
                    dRenderObject_Q(rawget(T, "PROPERTY"))
                    dRenderObject_Q(rawget(T, "PROPERTY"))
                    dRenderObject_Q(rawget(T, "PROPERTY"))
                    rawset(T, "PROPERTY", nil)
                end
            )
        end

        return gRenderObject_Q(rawget(T, "PROPERTY"), K)
    end,
    __newindex = function(T, K, V)
        return sRenderObject_Q(rawget(T, "PROPERTY"), K, V)
    end,
    __gc = function(self)
        dRenderObject_T(rawget(self, "PROPERTY"))
    end,
    __type = "Quad"
}

local square = {
    __index = function(T, K)
        if K == "Remove" then
            return newcclosure(
                function()
                    dRenderObject_S(rawget(T, "PROPERTY"))
                    dRenderObject_S(rawget(T, "PROPERTY"))
                    dRenderObject_S(rawget(T, "PROPERTY"))
                    rawset(T, "PROPERTY", nil)
                end
            )
        end

        return gRenderObject_S(rawget(T, "PROPERTY"), K)
    end,
    __newindex = function(T, K, V)
        return sRenderObject_S(rawget(T, "PROPERTY"), K, V)
    end,
    __gc = function(self)
        dRenderObject_T(rawget(self, "PROPERTY"))
    end,
    __type = "Square"
}

local line = {
    __index = function(T, K)
        if K == "Remove" then
            return newcclosure(
                function()
                    dRenderObject_L(rawget(T, "PROPERTY"))
                    dRenderObject_L(rawget(T, "PROPERTY"))
                    dRenderObject_L(rawget(T, "PROPERTY"))
                    rawset(T, "PROPERTY", nil)
                end
            )
        end

        return gRenderObject_L(rawget(T, "PROPERTY"), K)
    end,
    __newindex = function(T, K, V)
        return sRenderObject_L(rawget(T, "PROPERTY"), K, V)
    end,
    __gc = function(self)
        dRenderObject_T(rawget(self, "PROPERTY"))
    end,
    __type = "Line"
}

local triangle = {
    __index = function(T, K)
        if K == "Remove" then
            return newcclosure(
                function()
                    dRenderObject_TR(rawget(T, "PROPERTY"))
                    dRenderObject_TR(rawget(T, "PROPERTY"))
                    dRenderObject_TR(rawget(T, "PROPERTY"))
                    rawset(T, "PROPERTY", nil)
                end
            )
        end

        return gRenderObject_TR(rawget(T, "PROPERTY"), K)
    end,
    __newindex = function(T, K, V)
        return sRenderObject_TR(rawget(T, "PROPERTY"), K, V)
    end,
    __gc = function(self)
        dRenderObject_T(rawget(self, "PROPERTY"))
    end,
    __type = "Triangle"
}

local circle = {
    __index = function(T, K)
        if K == "Remove" then
            return newcclosure(
                function()
                    dRenderObject_C(rawget(T, "PROPERTY"))
                    dRenderObject_C(rawget(T, "PROPERTY"))
                    dRenderObject_C(rawget(T, "PROPERTY"))
                    rawset(T, "PROPERTY", nil)
                end
            )
        end

        return gRenderObject_C(rawget(T, "PROPERTY"), K)
    end,
    __newindex = function(T, K, V)
        return sRenderObject_C(rawget(T, "PROPERTY"), K, V)
    end,
    __gc = function(self)
        dRenderObject_T(rawget(self, "PROPERTY"))
    end,
    __type = "Circle"
}

local image = {
    __index = function(T, K)
        if K == "Remove" then
            return newcclosure(
                function()
                    dRenderObject_I(rawget(T, "PROPERTY"))
                    dRenderObject_I(rawget(T, "PROPERTY"))
                    dRenderObject_I(rawget(T, "PROPERTY"))
                    rawset(T, "PROPERTY", nil)
                end
            )
        end

        return gRenderObject_I(rawget(T, "PROPERTY"), K)
    end,
    __newindex = function(T, K, V)
        return sRenderObject_I(rawget(T, "PROPERTY"), K, V)
    end,
    __gc = function(self)
        dRenderObject_T(rawget(self, "PROPERTY"))
    end,
    __type = "Image"
}
local init = false
getgenv().Drawing = {
    new = function(Type)
        if (Type == "Text") then
            local Ren = cRenderObject(Type)

            local tab = {
                PROPERTY = Ren
            }

            return setmetatable(tab, text)
        end

        if (Type == "Quad") then
            local Ren = cRenderObject(Type)

            local tab = {
                PROPERTY = Ren
            }

            return setmetatable(tab, quad)
        end

        if (Type == "Square") then
            local Ren = cRenderObject(Type)

            local tab = {
                PROPERTY = Ren
            }

            return setmetatable(tab, square)
        end

        if (Type == "Line") then
            local Ren = cRenderObject(Type)

            local tab = {
                PROPERTY = Ren
            }

            return setmetatable(tab, line)
        end

        if (Type == "Triangle") then
            local Ren = cRenderObject(Type)

            local tab = {
                PROPERTY = Ren
            }

            return setmetatable(tab, triangle)
        end

        if (Type == "Circle") then
            local Ren = cRenderObject(Type)

            local tab = {
                PROPERTY = Ren
            }

            return setmetatable(tab, circle)
        end

        if (Type == "Image") then
            local Ren = cRenderObject(Type)

            local tab = {
                PROPERTY = Ren
            }

            return setmetatable(tab, image)
        end

        error("Invalid: " .. tostring(Type))
    end,
    Clear = function()
        return tRenderObject()
    end,
    clear = function()
        return tRenderObject()
    end
}
