require 'env'

function love.load()
end

function love.draw()
  love.graphics.print(_VERSION, 400, 300)
end

function love.update(deltaTime)
end

function love.mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
end

function love.keypressed(key)
end

function love.keyreleased(key)
end

function love.quit()
  print "Thanks for playing! Come back soon!"
end
