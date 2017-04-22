local Entity = require 'flimsy.entity'

local Mappable = require 'components.mappable'

return function(x, y)
  local wall = Entity:new()

  Mappable:new(wall, {
    x = x,
    y = y,
    sprite = 'wall'
  })

  return wall
end
