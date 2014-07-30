package = "luaSolidState"
version = "1.3.0-1"
description = {
    summary = "Library for storing and loading data",
    detailed = [[
        luaSolidState is a Lua library that allows easy and painless
        storing of tables in Lua.
    ]],
    license = "Public Domain",
    homepage = "http://github.com/TheLinx/luaSolidState",
    maintainer = "Linus Sjögren <thelinx@unreliablepollution.net>"
}
dependencies = {
    "lua >= 5.1",
    "luafilesystem >= 1.5.0"
}
source = {
    url = "git://github.com/TheLinx/luaSolidState.git",
    branch = "1.3.0"
}
build = {
    type = "builtin",
    modules = {
        state = "state/init.lua"
    }
}
