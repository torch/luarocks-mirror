package = "moonscript"
version = "0.2.2-1"

source = {
	url = "git://github.com/leafo/moonscript.git",
	branch = "v0.2.2"
}

description = {
	summary = "A programmer friendly language that compiles to Lua",
	homepage = "http://moonscript.org",
	maintainer = "Leaf Corcoran <leafot@gmail.com>",
	license = "MIT"
}

dependencies = {
	"lua >= 5.1",
	"lpeg >= 0.10",
	"alt-getopt >= 0.7",
	"luafilesystem >= 1.5"
}

build = {
	type = "builtin",
	modules = {
		["moonscript"] = "moonscript/init.lua",
		["moonscript.compile"] = "moonscript/compile.lua",
		["moonscript.compile.statement"] = "moonscript/compile/statement.lua",
		["moonscript.compile.value"] = "moonscript/compile/value.lua",
		["moonscript.compile.format"] = "moonscript/compile/format.lua",
		["moonscript.transform"] = "moonscript/transform.lua",
		["moonscript.types"] = "moonscript/types.lua",
		["moonscript.parse"] = "moonscript/parse.lua",
		["moonscript.dump"] = "moonscript/dump.lua",
		["moonscript.data"] = "moonscript/data.lua",
		["moonscript.util"] = "moonscript/util.lua",
		["moonscript.errors"] = "moonscript/errors.lua",
		["moonscript.version"] = "moonscript/version.lua",
		["moon"] = "moon/init.lua",
		["moon.all"] = "moon/all.lua",
	},
	install = {
		bin = { "bin/moon", "bin/moonc" }
	}
}

