local Component = require 'flimsy.component'

local Mappable = class('Mappable', Component)

function Mappable:initialize(entity, options)
  Component.initialize(self, entity)
  self.x = options.x
  self.y = options.y
  self.sprite = options.sprite
end

return Mappable
