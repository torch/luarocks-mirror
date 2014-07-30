package = "LPeg"
version = "0.8.1-1"
source = {
   url = "http://www.inf.puc-rio.br/~roberto/lpeg/lpeg-0.8.1.tar.gz",
   md5 = "b6b172bbcdcba5c87b37eef9bb5ae199"
}
description = {
   summary = "Parsing Expression Grammars For Lua",
   detailed = [[
      LPeg is a new pattern-matching library for Lua, based on Parsing
      Expression Grammars (PEGs). The nice thing about PEGs is that it
      has a formal basis (instead of being an ad-hoc set of features),
      allows an efficient and simple implementation, and does most things
      we expect from a pattern-matching library (and more, as we can
      define entire grammars).
   ]],
   homepage = "http://www.inf.puc-rio.br/~roberto/lpeg.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "module",
   modules = {
      lpeg = "lpeg.c",
      re = "re.lua"
   }
}
