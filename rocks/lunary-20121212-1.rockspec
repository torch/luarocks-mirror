package = 'lunary'
version = '20121212-1'
source = {
	url = 'http://hg.piratery.net/lunary/get/20d192874d252c12fb2b003a696aeec88c8a69b8.tar.gz',
	dir = 'doub-lunary-20d192874d25',
}
description = {
	summary = "A binary format I/O framework for Lua.",
	detailed = [[Lunary is a framework to read and write structured binary data from and to files or network connections. The aim is to provide an easy to use interface to describe any complex binary format, and allow translation to Lua data structures. The focus is placed upon the binary side of the transformation, and further processing may be necessary to obtain the desired Lua structures. On the other hand Lunary should allow reading and writing of any binary format, and bring all the information available to the Lua side.]],
	homepage = 'http://piratery.net/lunary/',
	license = 'MIT',
}
dependencies = {
	'lua ~> 5.1',
	'luabitop',
	'struct',
	'lunary-core 20121212-1',
	'lunary-optim 20121212-1',
}
build = { type = 'none' }

-- vi: ft=lua
