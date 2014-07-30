package = "Lua_Signal"
version = "20100305-1"
source = {
   url = "http://batbytes.com/lua-signal/lsignal.c",
   md5 = "960aae4445d5544141bb6ab7994c8e1f",
   dir = "."
}
description = {
   summary = "Library for handling signals",
   detailed = [[
      Lua support for ANSI C signals.
   ]],
   homepage = "http://batbytes.com/lua-signal/",
   -- license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      signal = "lsignal.c"
   }
}
