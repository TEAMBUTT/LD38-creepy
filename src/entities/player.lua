local Entity = require 'flimsy.entity'

local Mappable = require 'components.mappable'

return function()
  local player = Entity:new()

  Mappable:new(player, {
    x = 0,
    y = 0,
    sprite = 'player'
  })

  return player
end
