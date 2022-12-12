pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
-- create a new table
local t = {
  a = 1,
  b = 2,

  -- add the spr field to the table
  spr = function(x, y, n, ...)
    -- draw a sprite to the screen using the default spr() function
    spr(x, y, n, ...)
  end
}

-- get the metatable of the table
local mt = getmetatable(t)

-- create a metatable for the table
mt = {
  -- the index metatable
  __index = function(table, key)
    -- default error handling
    print("the field `".. key .. "` does not exist in table t")
  end,

}

-- set the metatable of the table
setmetatable(t, mt)

-- use the metatable's spr() function to draw a sprite to the screen
t.spr(0,10,10)
