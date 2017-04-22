local Component = require 'flimsy.component'

local Controllable = class('Controllable', Component)

function Controllable:initialize(entity)
  Component.initialize(self, entity)
end

return Controllable
