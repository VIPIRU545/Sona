local old_traceback = debug.traceback
local old_loadmodule = debug.loadmodule

local old_profileend = debug.profileend
local old_profilebeg = debug.profilebegin

local debug = {
    traceback = old_traceback,
    loadmodule = old_loadmodule,
    profilebegin = old_profilebeg,
    profileend = old_profileend,
    getproto = getproto,
    getprotos = getprotos,
    setproto = setproto,
    getconstants = getconstants,
    getconstant = getconstant,
    setconstant = setconstant,
    getupvalues = getupvalues,
    getupvalue = getupvalue,
    setupvalue = setupvalue,
    setstack = setstack,
    getstack = getstack,
    getregistry = getreg,
    validlevel = validlevel,
    getinfo = getinfo,
    getmetatable = getrawmetatable,
    setmetatable = setrawmetatable
}
