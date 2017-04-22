local Portion = require 'flimsy.portion'

local player = require 'entities.player'

local game = Portion:new()

game:addSystem(require 'systems.game_map')

game:addEntity(player())

return game
