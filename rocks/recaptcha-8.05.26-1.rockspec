package = "ReCaptcha"
version = "8.05.26-1"
source = {
   url = "http://sputnik.freewisdom.org/files/recaptcha-8.05.26.tar.gz",
}
description = {
   summary    = "A Lua interface to reCaptcha.",
   detailed   = [[
      reCaptcha (http://recaptcha.net) is a free captcha web service that
      shows the visitors words from old books helping digitize them. This, 
      module provides a Lua interface to recaptcha.  You will need to get your
      own API key from recaptcha.net to use it.
   ]],
   license    = "MIT/X11",
   homepage   = "http://sputnik.freewisdom.org/lib/recaptcha/",
   maintainer = "Yuri Takhteyev (yuri@freewisdom.org)",
}
dependencies = {
  'luasocket >= 2.0'
}
build = {
  type = "none",
  install = {
     lua = {
        ["recaptcha"] = "lua/recaptcha.lua",
     }
  }
}

