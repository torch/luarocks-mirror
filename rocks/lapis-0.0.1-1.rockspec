package = "lapis"
version = "0.0.1-1"

source = {
	url = "git://github.com/leafo/lapis.git",
	branch = "v0.0.1"
}

description = {
	summary = "A web framework for MoonScript & Lua",
	homepage = "http://leafo.net",
	maintainer = "Leaf Corcoran <leafot@gmail.com>",
	license = "MIT"
}

dependencies = {
	"lua >= 5.1",
	"ansicolors",
	"lpeg",
	"luasocket",
	"lua-cjson",
}

build = {
	type = "builtin",
	modules = {
		["lapis"] = "lapis/init.lua",
		["lapis.application"] = "lapis/application.lua",
		["lapis.cmd.actions"] = "lapis/cmd/actions.lua",
		["lapis.cmd.nginx"] = "lapis/cmd/nginx.lua",
		["lapis.cmd.path"] = "lapis/cmd/path.lua",
		["lapis.cmd.templates.config"] = "lapis/cmd/templates/config.lua",
		["lapis.cmd.templates.mime_types"] = "lapis/cmd/templates/mime_types.lua",
		["lapis.cmd.util"] = "lapis/cmd/util.lua",
		["lapis.config"] = "lapis/config.lua",
		["lapis.csrf"] = "lapis/csrf.lua",
		["lapis.db"] = "lapis/db.lua",
		["lapis.db.migrations"] = "lapis/db/migrations.lua",
		["lapis.db.model"] = "lapis/db/model.lua",
		["lapis.db.schema"] = "lapis/db/schema.lua",
		["lapis.html"] = "lapis/html.lua",
		["lapis.http"] = "lapis/http.lua",
		["lapis.logging"] = "lapis/logging.lua",
		["lapis.nginx"] = "lapis/nginx.lua",
		["lapis.nginx.http"] = "lapis/nginx/http.lua",
		["lapis.nginx.postgres"] = "lapis/nginx/postgres.lua",
		["lapis.router"] = "lapis/router.lua",
		["lapis.server"] = "lapis/server.lua",
		["lapis.session"] = "lapis/session.lua",
		["lapis.util"] = "lapis/util.lua",
		["lapis.util.encoding"] = "lapis/util/encoding.lua",
		["lapis.validate"] = "lapis/validate.lua",
		["lapis.version"] = "lapis/version.lua",
		["lapis.views.error"] = "lapis/views/error.lua",
		["lapis.views.layout"] = "lapis/views/layout.lua",
		["lapis.xavante"] = "lapis/xavante.lua",
	},
	install = {
		bin = { "bin/lapis" }
	},
}

