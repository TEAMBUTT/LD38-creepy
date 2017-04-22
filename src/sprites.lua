local textureAtlas = love.graphics.newImage("sprites.png")

local SPRITE_WIDTH = 12
local SPRITE_HEIGHT = 16

function newQuad(x, y)
  return love.graphics.newQuad(
    x * SPRITE_WIDTH,
    y * SPRITE_HEIGHT,
    SPRITE_WIDTH,
    SPRITE_HEIGHT,
    textureAtlas:getWidth(),
    textureAtlas:getHeight()
  )
end

local quads = {
  player       = newQuad(0, 0),
  wall         = newQuad(1, 0),
  undead_rogue = newQuad(2, 0)
}

local spriteBatch = love.graphics.newSpriteBatch(textureAtlas)

function resetSpriteBatch()
  spriteBatch:clear()
end

local sprites = {}

-- Offsets here are to add a 1px border between tiles and also edge of the
-- screen.
function sprites.add(name, x, y)
  spriteBatch:add(
    quads[name],
    x * SPRITE_WIDTH + x + 1,
    y * SPRITE_HEIGHT + y + 1
  )
end

function sprites.draw()
  love.graphics.draw(spriteBatch, 0, 0)
  resetSpriteBatch()
end

return sprites
