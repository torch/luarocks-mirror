package = "Lua_Signal"
version = "20100412-1"
source = {
   url = "http://batbytes.com/lua-signal/lsignal.c",
   md5 = "27007cc173cae2de6712a5d3d73ccf87",
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

