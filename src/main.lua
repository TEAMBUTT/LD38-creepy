require 'env'

local Portion = require 'flimsy.portion'
local Event = require 'flimsy.event'

local portions = {}
local currentPortion

function love.load()
  portions.game = Portion:new()
  currentPortion = portions.game
end

function love.draw()
  love.graphics.print(_VERSION, 400, 300)
end

function love.update(deltaTime)
  currentPortion:processEvent(Event:new('advance_time', deltaTime))
end

function love.mousepressed(x, y, button)
  currentPortion:processEvent(Event:new('mouse_press', {
    x = x,
    y = y,
    button = button
  }))
end

function love.mousereleased(x, y, button)
  currentPortion:processEvent(Event:new('mouse_release', {
    x = x,
    y = y,
    button = button
  }))
end

function love.keypressed(key)
  currentPortion:processEvent(Event:new('key_press', key))
end

function love.keyreleased(key)
  currentPortion:processEvent(Event:new('key_release', key))
end

function love.quit()
  print "Thanks for playing! Come back soon!"
end
