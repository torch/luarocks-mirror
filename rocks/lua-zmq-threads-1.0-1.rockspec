package = "lua-zmq-threads"
version = "1.0-1"
source = {
	url = "git://github.com/Neopallium/lua-zmq"
}
description = {
	summary = "Lua bindings to zeromq2, with LuaJIT2 FFI support.",
	homepage = "http://github.com/Neopallium/lua-zmq",
	license = "MIT/X11"
}
dependencies = {
	"lua-zmq",
	"lua-llthreads",
}
build = {
	type = "none",
	install = {
		lua = {
			['zmq.threads'] = "src/threads.lua",
		}
	}
}
