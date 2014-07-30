package = "LuaSQL-MySQL"
version = "2.2.0-1"
source = {
  url = "http://cloud.github.com/downloads/keplerproject/luasql/luasql-2.2.0.tar.gz"
}
description = {
   summary = "Database connectivity for Lua (MySQL driver)",
   detailed = [[
      LuaSQL is a simple interface from Lua to a DBMS. It enables a
      Lua program to connect to databases, execute arbitrary SQL statements
      and retrieve results in a row-by-row cursor fashion.
   ]],
   license = "MIT/X11",
   homepage = "http://www.keplerproject.org/luasql/"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   MYSQL = {
      header = "mysql.h"
   }
}
build = {
   type = "builtin",
   modules = {
     ["luasql.mysql"] = {
       sources = { "src/luasql.c", "src/ls_mysql.c" },
       libraries = { "mysqlclient" },
       incdirs = { "$(MYSQL_INCDIR)" },
       libdirs = { "$(MYSQL_LIBDIR)" }
     }
   }
}
