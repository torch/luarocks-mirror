package = "Mixlua"
version = "0.2.7-2"
source = {
   url = "http://oniros.org/projects/mixlua-0.2.7.tar.gz",
   md5 = "427bbc7f81a529ac027c54cd008022ea",
   dir = "mixlua"
}
description = {
   summary = "A preprocessor for files including embedded Lua code",
   detailed = [[
      Mixlua is a library for Lua 5.1 which provides an onload preprocessor 
      for lua files and allows mixing of Lua code with other data. It provides 
      loadstring() and loadfile() functions similar to the Lua ones but with 
      aditional arguments for specifing how the data elements are recognized 
      and handled. So CGILua's Lua Page format can be parsed using     
      mix.loadfile("filename", "<?lua", "?>", "=")
   ]],
   homepage = "http://oniros.org/projects.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "module",
   modules = {
      mixlua = "mixlua.c"
   }
}
