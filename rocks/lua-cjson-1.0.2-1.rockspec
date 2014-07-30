package = "lua-cjson"
version = "1.0.2-1"

source = {
    url = "http://www.kyne.com.au/~mark/software/lua-cjson-1.0.2.zip",
    md5 = "d074d2201ceb041f9b969b8d53734d46"
}

description = {
    summary = "Fast JSON encoding/parsing support for Lua",
    detailed = [[
        Lua CJSON provides fast UTF-8 JSON parsing/encoding support for Lua,
        and has no external dependencies.
    ]],
    homepage = "http://www.kyne.com.au/~mark/software/lua-cjson.php",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        cjson = {
            sources = { "lua_cjson.c", "strbuf.c" },
            defines = { "VERSION=\"1.0.2\"" }
        }
    },
    copy_directories = { "tests" }
}
