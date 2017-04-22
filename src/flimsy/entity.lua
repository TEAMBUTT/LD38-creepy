local Entity = class("Entity")

function Entity:initialize()
  self.components = {}
end

function Entity:getComponents()
  return self.components
end

function Entity:addComponent(component)
  self.components[component.name] = component
end

return Entity
