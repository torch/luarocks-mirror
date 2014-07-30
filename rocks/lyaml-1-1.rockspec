source = {
  dir = "lyaml-release-v1",
  url = "http://github.com/gvvaughan/lyaml/archive/release-v1.zip",
}
version = "1-1"
external_dependencies = {
  YAML = {
    library = "yaml",
  },
}
package = "lyaml"
dependencies = {
  "lua >= 5.1",
}
description = {
  homepage = "http://github.com/gvvaughan/lyaml/",
  license = "GPLv3+",
  summary = "libYAML binding for Lua",
  detailed = "      Read and write YAML format files with Lua.\
     ",
}
build = {
  build_command = "LUA=$(LUA) LUA_INCLUDE=-I$(LUA_INCDIR) ./configure CPPFLAGS=-I$(YAML_INCDIR) LDFLAGS='-L$(YAML_LIBDIR)' --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
  type = "command",
  copy_directories = {
  },
  install_command = "make install",
}
