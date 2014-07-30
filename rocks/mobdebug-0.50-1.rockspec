package = "MobDebug"
version = "0.50-1"

source = {
   url = "git://github.com/pkulchenko/MobDebug.git",
   tag = "0.50"
}

description = {
   summary = "MobDebug is a remote debugger for the Lua programming language",
   detailed = [[
      MobDebug allows you control the execution of another Lua program remotely,
      set breakpoints, and inspect the current state of the program.

      MobDebug is based on [RemDebug](http://www.keplerproject.org/remdebug/) and
      extends it in several ways:

      1. fixed several existing bugs;
      2. added new commands: LOAD, RELOAD, OUT, STACK;
      3. added support for [MoSync](http://mosync.com/) using [MobileLua](https://github.com/divineprog/mobilelua);
      4. added support for debugging wxwidgets applications;
      5. tested integration with [ZeroBrane Studio IDE](http://studio.zerobrane.com/);
      6. removed dependency on LuaFileSystem;
      7. added ability to pause and abort running applications;
      8. added pretty printing and handling of multiple results in EXEC;
      9. added stack and local/upvalue value reporting (STACK);
      a. added on/off commands to turn debugging on and off (to improve performance);
      b. added support for coroutine debugging (see examples/README for details);
      c. added support for [Moai](http://getmoai.com/) debugging.
   ]],
   license = "MIT/X11",
   homepage = "https://github.com/pkulchenko/MobDebug"
}

dependencies = {
   "lua >= 5.1",
   "luasocket >= 2.0"
}

build = {
   type = "none",
   install = {
      lua = { ["mobdebug"] = "src/mobdebug.lua" }
   },
   copy_directories = { "examples" }
}
