local sprites = require 'sprites'

return function(portion)
  local cameraX = 0
  local cameraY = 0

  return function(event)
    if (event.name ~= 'draw') then
      return
    end

    local mappables = portion:getComponents('Mappable')

    _.each(mappables, function(index, mappable)
      sprites.add(mappable.sprite, mappable.x, mappable.y)
    end)

    love.graphics.scale(3, 3)
    sprites.draw()
  end
end
