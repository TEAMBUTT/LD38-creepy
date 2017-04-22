local Entity = class("Entity")

function Entity:initialize()
  self.components = {}
end

function Entity:is(componentName)
  return not not self.components[componentName]
end

return Entity
