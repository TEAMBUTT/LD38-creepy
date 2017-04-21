local Event = class("Event")

function Event:initialize(name, payload)
  self.name = name
  self.payload = payload
end

return Event
