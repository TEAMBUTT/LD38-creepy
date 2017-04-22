local Entity = require 'flimsy.entity'

local Mappable = require 'components.mappable'

return function(x, y)
  local player = Entity:new()

  Mappable:new(player, {
    x = x,
    y = y,
    sprite = 'player'
  })

  return player
end
