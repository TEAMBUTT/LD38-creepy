local Portion = require 'flimsy.portion'

local game = Portion:new()

game:addSystem(require 'systems.graphics')

return game
