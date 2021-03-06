local Entity = require 'flimsy.entity'

local Mappable = require 'components.mappable'
local Controllable = require 'components.controllable'
local Updatable = require 'components.updatable'

return function(x, y)
  local player = Entity:new()

  Controllable:new(player)
  Updatable:new(player)

  Mappable:new(player, {
    x = x,
    y = y,
    sprite = 'player'
  })

  return player
end
