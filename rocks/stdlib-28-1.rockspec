package="stdlib"
version="28-1"
source = {
  url = "https://github.com/downloads/rrthomas/lua-stdlib/stdlib-28.zip",
  md5 = "4856bad5777e5b21482ace6c6806eb2f",
  dir = "stdlib-28"
}
description = {
  summary = "General Lua libraries",
  detailed = [[
      stdlib is a library of modules for common programming tasks,
      including list, table and functional operations, regexps, objects,
      pickling, pretty-printing and getopt.
   ]],
  homepage = "http://github.com/rrthomas/lua-stdlib/",
  license = "MIT/X11"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "command",
  build_command = "LUA=$(LUA) CPPFLAGS=-I$(LUA_INCDIR) ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
  install_command = "make install",
  copy_directories = {}
}
