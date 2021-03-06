local Entity = require 'flimsy.entity'

local Mappable = require 'components.mappable'

return function(x, y)
  local undead_rogue = Entity:new()

  Updatable:new(undead_rogue)

  Mappable:new(undead_rogue, {
    x = x,
    y = y,
    sprite = 'undead_rogue'
  })

  return undead_rogue
end
