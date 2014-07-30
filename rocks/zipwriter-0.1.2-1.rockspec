
package = "ZipWriter"
version = "0.1.2-1"
source = {
  url = "https://github.com/moteus/ZipWriter/archive/v0.1.2.zip",
  dir = "ZipWriter-0.1.2",
}

description = {
  summary = "Library for creating ZIP archive for Lua 5.1/5.2",
  homepage = "https://github.com/moteus/ZipWriter",
  detailed = [[This package provides a library to create zip archives.
  This library support non seekable streams (e.g. socket), ZIP64 format and
AES encrypting.
  ]],
  license = "MIT/X11",
}

dependencies = {
  "lua >= 5.1",
  "struct >= 1.2",
  "bit32",
  "lzlib",
  -- "aesfileencrypt", -- optional fast aes encryption
  -- "luacrypto >= 0.3.0", -- optional to support aes
  -- "lua-iconv >= 7.0", -- optional
  -- "alien >= 0.7.0", -- optional on windows
}

build = {
  type = "builtin",
  copy_directories = {"test"},

  platforms = {
    windows = {
      modules = {
        ["ZipWriter.win.cp"] = "lua/ZipWriter/win/cp.lua",
      }
    }
  },

  modules = {
    ["ZipWriter" ] = "lua/ZipWriter.lua",
    ["ZipWriter.binary_converter"] = "lua/ZipWriter/binary_converter.lua",
    ["ZipWriter.charset"] = "lua/ZipWriter/charset.lua",
    ["ZipWriter.utils"] = "lua/ZipWriter/utils.lua",
    ["ZipWriter.encrypt.aes"] = "lua/ZipWriter/encrypt/aes.lua",
  }
}
