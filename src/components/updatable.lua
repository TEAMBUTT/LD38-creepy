local Component = require 'flimsy.component'

local Updatable = class('Updatable', Component)

function Updatable:initialize(entity)
  Component.initialize(self, entity)
end

return Updatable
