local Component = class('Component')

function Component:initialize(entity)
  self.entity = entity
  self.entity.components[self.class.name] = self
end

return Component
