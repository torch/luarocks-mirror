package = "30log"
version = "0.2-1"
source = {
   url = "https://github.com/Yonaba/30log/archive/30log-0.2-1.tar.gz",
   dir = "30log-30log-0.2-1"
}
description = {
   summary = "30 lines library for object orientation",
   detailed = [[
      30log, in extenso "30 Lines Of Goodness" is a minified 
	  30-lines library for object-orientation in Lua.
	  It features class creation, instantiation, inheritance.
   ]],
   homepage = "http://yonaba.github.com/30log",
   license = "MIT <http://www.opensource.org/licenses/mit-license.php>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["30log"] = "30log.lua"
  }
}