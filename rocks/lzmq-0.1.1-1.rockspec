
package = "lzmq"
version = "0.1.1-1"

source = {
  url = "https://github.com/moteus/lzmq/archive/v0.1.1.zip",
  dir = "lzmq-0.1.1",
}

description = {
  summary = "Lua binding to ZeroMQ 3",
  homepage = "https://github.com/moteus/lzmq",
  license = "MIT/X11",
}

dependencies = {
  "lua >= 5.1",
  -- "lua-llthreads >= 1.2"
}

external_dependencies = {
  ZMQ3 = {
    header = "zmq.h",
    library = "libzmq3",
  }
}

build = {
  copy_directories = {"test", "examples"},

  type = "builtin",

  platforms = {
    windows = { modules = {
      ["lzmq.timer"] = {
        defines = {'USE_PERF_COUNT'}
      },
    }},
    unix = { modules = {
      ["lzmq.timer"] = {
        defines = {'USE_CLOCK_MONOTONIC', 'USE_GETTIMEOFDAY'},
      }
    }}
  },

  modules = {
    ["lzmq"] = {
      sources = {'src/lzmq.c','src/lzutils.c','src/poller.c',
                 'src/zcontext.c','src/zerror.c','src/zmsg.c',
                 'src/zpoller.c','src/zsocket.c'},
      libraries = {"libzmq3"},
      incdirs = {"$(ZMQ3_INCDIR)"},
      libdirs = {"$(ZMQ3_LIBDIR)"},
      defines = {
        'LUAZMQ_USE_SEND_AS_BUF',
        'LUAZMQ_USE_TEMP_BUFFERS',
        'LUAZMQ_USE_ERR_TYPE_OBJECT',
        -- 'LUAZMQ_USE_ERR_TYPE_NUMBER'
        -- 'LUAZMQ_USE_ERR_TYPE_STRING'
      },
    },
    ["lzmq.timer"] = {
      sources = {'src/ztimer.c','src/lzutils.c'},
    },
    ["lzmq.loop" ] = "lua/lzmq/loop.lua";
    ["lzmq.poller" ] = "lua/lzmq/poller.lua";
    ["lzmq.threads"] = "lua/lzmq/threads.lua";
  },
}
