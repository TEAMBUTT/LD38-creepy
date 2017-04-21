local Entity = class("Entity")

function Entity:initialize()
  self.components = {}
end

function Entity:getComponents()
  return self.components
end

function Entity:addComponent(component)
  table.insert(self.components, component)
end

return Entity
