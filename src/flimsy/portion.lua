-- A Portion governs a portion of your Entities and Systems. Other ECS
-- libraries might call this a "universe" or an "engine".
local Portion = class("Portion")

function Portion:initialize()
  self.systems = {}
end

function Portion:addSystem(system)
  table.insert(self.systems, system)
end

function Portion:update(deltaTime)
  for index, system in ipairs(self.systems) do
    system(self, deltaTime)
  end
end

return Portion
