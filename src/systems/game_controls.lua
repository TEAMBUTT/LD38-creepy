local Event = require 'flimsy.event'

local keyboardEventNames = {
  -- No need to handle key presses yet.
  -- 'key_press',
  'key_release'
}

return function(portion)
  return function(event)
    if not _.include(keyboardEventNames, event.name) then
      return
    end

    local controllables = portion:getComponents('Controllable')

    _.each(controllables, function(index, controllable)
      -- Do things.
    end)

    portion:processEvent(Event:new('advance', nil))
  end
end
