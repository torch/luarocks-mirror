package = "XSSFilter"
version = "8.04.20-1"
source = {
   url = "http://sputnik.freewisdom.org/files/xssfilter-8.04.20.tar.gz",
}
description = {
   summary    = "A filter to prevernt cross-site scripting (XSS) attacks",
   detailed   = [[
      XSSFilter is a module for filtering out unsafe tags from (X)HTML.
      To avoid having second-guessing how different clients handle strange
      HTML input, the filter assumes that the input is subset of valid XML
      and returns nil if the input doesn't parse. If the input does parse,
      we then traverse the tree and check each element and its attributes
      against a configuration table, replacing anything that's not allowed
      with a message.  There is a default configuration table that shoots
      for a balance between security and features, but the client can either
      supply their own or modify the default.
   ]],
   license    =  "MIT/X11",
   homepage   = "http://sputnik.freewisdom.org/lib/xssfilter/",
   maintainer = "Yuri Takhteyev (yuri@freewisdom.org)",
}
dependencies = {
}
build = {
   type = "none",
   install = {
      lua = {
         xssfilter = "lua/xssfilter.lua"
      }
   }
}

