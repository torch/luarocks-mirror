package = "Xavante"

version = "2.0.1-1"

source = {
  url = "http://luaforge.net/frs/download.php/3966/xavante-2.0.1.tar.gz",
}

description = {
  summary = "Lua Web Server Library",
  detailed = [[
    Xavante is a Lua HTTP 1.1 Web server that uses a modular architecture based on URI mapped handlers.
    This rock installs Xavante as a library that other applications can use.
  ]],
  license = "MIT/X11",
  homepage = "http://www.keplerproject.org/xavante"
}

dependencies = {
	'copas >= 1.1.3',
	'luasocket >= 2.0.2',
	'luafilesystem >= 1.4.1'
}

local XAVANTE_LUAS = { "src/xavante/cgiluahandler.lua", 
	         "src/xavante/encoding.lua",
	         "src/xavante/filehandler.lua", 
	         "src/xavante/httpd.lua", 
	         "src/xavante/mime.lua", 
	         "src/xavante/patternhandler.lua", 
	         "src/xavante/redirecthandler.lua", 
	         "src/xavante/vhostshandler.lua", 
	         "src/xavante/indexhandler.lua", 
	         "src/xavante/urlhandler.lua", 
	         "src/xavante/ruleshandler.lua" }

build = {
   type = "builtin",
   modules = {
     sajax = "src/sajax/sajax.lua",
     xavante = "src/xavante/xavante.lua"
   }
}

for i = 1,#(XAVANTE_LUAS) do
   local src = XAVANTE_LUAS[i]
   local mod = "xavante." .. src:match("^src/xavante/([^%.]+)%.lua")
   build.modules[mod] = src 
end
