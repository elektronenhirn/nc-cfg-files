-- =========================================================
-- = Includes 
-- ========================================================= 
require("awful")
require("awful.autofocus")
require("awful.rules")
require("beautiful")
require("naughty")
require("debian.menu")

-- ========================================================= 
-- = Creating my own namespace to avoid name clashes
-- =========================================================
nc = {}

-- ========================================================= 
-- = Helpers 
-- ========================================================= 
local select_previous_window = function()
    awful.client.focus.byidx(-1)
    if client.focus then client.focus:raise() end
end

local nc_select_next_window =  function ()
    awful.client.focus.byidx(1)
    if client.focus then client.focus:raise() end
end

local select_next_layout = function()
    awful.layout.inc(layouts,  1)
end

local select_previous_layout = function()
    awful.layout.inc(layouts,  1)
end

local lock_screen =  function () 
    awful.util.spawn("xscreensaver-command -lock")  
end

local run_command = function(_prompt_box)
    _prompt_box[mouse.screen]:run()
end

-- Maximizes the given client window
-- @param _client window which shall be maximized
local maximize_window = function(_client)
    _client.maximized_horizontal = not _client.maximized_horizontal
    _client.maximized_vertical   = not _client.maximized_vertical
end

-- increase volume
-- decrease volume
-- select display mode 1  / 2 monitors => left / right ...


nc.utils = {}
nc.utils.select_previous_window  = select_previous_window()
nc.utils.select_next_window      = select_next_window()
nc.utils.select_next_layout      = select_next_layout()
nc.utils.select_previous_layout  = select_previous_layout()
nc.utils.maximize_window         = maximize_window
nc.utils.lock_screen             = lock_screen()

-- =========================================================
-- = Variables
-- ========================================================= 
nc.env = {}
nc.terminal = "x-terminal-emulator"

nc.editor = "vim"
nc.editor_cmd = nc.terminal .. " -e " .. nc.editor 

nc.keys = {}
-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
nc.keys.modkey      = "Mod4"
nc.keys.control     = "Control"
nc.keys.space       = "space"
nc.keys.shift       = "Shift"
nc.keys.enter       = "enter"
nc.keys.left        = "Left"
nc.keys.right       = "Right"
nc.keys.escape      = "Escape"
nc.keys.tab         = "Tab"
nc.keys.a           = "a"
nc.keys.b           = "b"
nc.keys.c           = "c"
nc.keys.d           = "d"
nc.keys.e           = "e"
nc.keys.f           = "f"
nc.keys.g           = "g"
nc.keys.h           = "h"
nc.keys.i           = "i"
nc.keys.j           = "j"
nc.keys.k           = "k"
nc.keys.l           = "l"
nc.keys.m           = "m"
nc.keys.n           = "n"
nc.keys.o           = "o"
nc.keys.p           = "p"
nc.keys.q           = "q"
nc.keys.r           = "r"
nc.keys.s           = "s"
nc.keys.t           = "t"
nc.keys.u           = "u"
nc.keys.v           = "v"
nc.keys.w           = "w"
nc.keys.x           = "x"
nc.keys.y           = "y"
nc.keys.z           = "z"

nc.orientation = {}
nc.orientation.left = "left"
nc.orientation.right = "right"
nc.orientation.top = "top"
nc.orientation.bottom = "bottom"
nc.orientation.center = "center"



-- Table of layouts to cover with awful.layout.inc, order matters.
layouts =
{
    awful.layout.suit.floating,
    awful.layout.suit.tile,
    awful.layout.suit.tile.left,
    awful.layout.suit.tile.bottom,
    awful.layout.suit.tile.top,
    awful.layout.suit.fair,
    awful.layout.suit.fair.horizontal,
    awful.layout.suit.spiral,
    awful.layout.suit.spiral.dwindle,
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
    awful.layout.suit.magnifier
}
default_layout = layouts[5]

-- }}}

-- ========================================================= 
-- = Tags
-- ========================================================= 
-- Define a tag table which hold all screen tags.

tags = {}
tag_names = {" Console ","   IDE   ", "   Web   ", "  Mail  ", "Multimedia"}
for index = 1, screen.count() do
    -- Each screen has its own tag table.
    tags[index] = awful.tag(tag_names, index, default_layout)
    naughty.notify({ preset = naughty.config.presets.critical,
                     title = "Tag init",
                     text = "Error during startup"})
end

-- ========================================================= 
-- = Menus
-- ========================================================= 
nc.menu                     = {}
nc.menu.aw_main_menu        = {}
-- Menu Entries
nc.menu.entries               = {}
nc.menu.entries.manual        = { "manual", terminal .. " -e man awesome" }
nc.menu.entries.edit_config   = { "edit config", editor_cmd .. " " .. awesome.conffile }
nc.menu.entries.restart_aw    = { "restart", awesome.restart }
nc.menu.entries.quit_aw       = { "quit", awesome.quit }
nc.menu.entries.open_terminal = { "open terminal", terminal }


return nc
