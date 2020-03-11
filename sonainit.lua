getgenv().require = function(Module)
local storecontext = getthreadcontext() 
setthreadcontext(2)
local truthvalue, Mod = pcall(getrenv().require, Module)
setthreadcontext(storecontext)
if not truthvalue then error("Failure 1!") end 
return Mod 
end
