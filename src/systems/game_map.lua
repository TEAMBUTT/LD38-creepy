local sprites = require 'sprites'

return function(portion)
  local cameraX = 0
  local cameraY = 0

  return function(event)
    if (event.name ~= 'draw') then
      return
    end

    local mappableEntities = portion:getEntities('Mappable')

    _.each(mappableEntities, function(index, entity)
      sprites.add("player", 0, 0)
    end)

    love.graphics.scale(3, 3)
    sprites.draw()
  end
end
