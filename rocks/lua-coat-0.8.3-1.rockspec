package = 'lua-Coat'
version = '0.8.3-1'
source = {
    url = 'http://cloud.github.com/downloads/fperrad/lua-Coat/lua-coat-0.8.3.tar.gz',
    md5 = '68bccad15e9fd044f03df7b74705b0c4',
    dir = 'lua-Coat-0.8.3',
}
description = {
    summary = "Yet Another Lua Object-Oriented Model",
    detailed = [[
        lua-Coat is a Lua 5.1 port of Coat (http://www.sukria.net/perl/coat/),
        a Perl5 module which mimics Moose (http://www.iinteractive.com/moose/),
        an object system for Perl5 which borrows features from Perl6,
        CLOS (LISP), Smalltalk and many other languages.
    ]],
    homepage = 'http://lua-coat.luaforge.net/',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
    'lua-testmore >= 0.2.1',
}
build = {
    type = 'builtin',
    modules = {
        ['Coat']                = 'src/Coat.lua',
        ['Coat.Meta.Class']     = 'src/Coat/Meta/Class.lua',
        ['Coat.Meta.Role']      = 'src/Coat/Meta/Role.lua',
        ['Coat.Role']           = 'src/Coat/Role.lua',
        ['Coat.Types']          = 'src/Coat/Types.lua',
        ['Coat.UML']            = 'src/Coat/UML.lua',
        ['Coat.file']           = 'src/Coat/file.lua',
    },
    install = {
        bin = { 'src/coat2dot' }
    },
    copy_directories = { 'doc', 'test' },
}
