package = 'lunary-core'
version = '20101009-1'
source = {
	url = 'http://hg.piratery.net/lunary/archive/28e555ccabd32f80ef25d788ff66177eefeed891.tar.gz',
	dir = 'lunary-28e555ccabd32f80ef25d788ff66177eefeed891',
}
description = {
	summary = "A binary format I/O framework for Lua.",
	detailed = [[Lunary is a framework to read and write structured binary data from and to files or network connections. This rock is a pure-Lua implementation of Lunary, without dependencies on any binary module. Because of that some features will be disabled. To use Lunary to its full extent, use the 'Lunary' rock.]],
	homepage = 'http://piratery.net/lunary/',
	license = 'MIT',
}
dependencies = {
	'lua ~> 5.1',
}
build = {
	type = 'builtin',
	modules = {
		serial = 'serial.lua',
		['serial.util'] = 'serial/util.lua',
	},
}

-- vi: ft=lua
