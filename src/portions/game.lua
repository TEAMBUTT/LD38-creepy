local Portion = require 'flimsy.portion'

local player = require 'entities.player'

local game = Portion:new()

game:addSystem(require 'systems.game_map')

game:addEntity(player(0, 5))
game:addEntity(player(1, 5))
game:addEntity(player(2, 5))

return game
