local Portion = require 'flimsy.portion'

local player = require 'entities.player'
local wall = require 'entities.wall'
local undead_rogue = require 'entities.undead_rogue'

local game = Portion:new()

game:addSystem(require 'systems.game_map')
game:addSystem(require 'systems.game_controls')
game:addSystem(require 'systems.game_play')

local mapWidth = 25
local mapHeight = 14

_.each(_.range(0, mapWidth), function(index, x)
  game:addEntity(wall(x, 0))
  game:addEntity(wall(x, mapHeight))
end)

_.each(_.range(1, mapHeight - 1), function(index, y)
  game:addEntity(wall(0, y))
  game:addEntity(wall(mapWidth, y))
end)

game:addEntity(player(1, 1))
game:addEntity(undead_rogue(mapWidth - 1, mapHeight - 1))

return game
