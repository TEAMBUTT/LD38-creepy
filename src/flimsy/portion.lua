-- A Portion governs a portion of your Entities and Systems. Other ECS
-- libraries might call this a "universe" or an "engine".
local Portion = class("Portion")

function Portion:initialize()
  self.systems = {}
  self.entities = {}
end

function Portion:addSystem(system)
  table.insert(self.systems, system(self))
end

function Portion:processEvent(event)
  for index, system in ipairs(self.systems) do
    system(event)
  end
end

function Portion:addEntity(entity)
  table.insert(self.entities, entity)
end

function Portion:getEntities(componentName)
  if (not componentName) then
    return self.entities
  end

  return _.select(self.entities, function(index, entity)
    return entity:is(componentName)
  end)
end

return Portion
