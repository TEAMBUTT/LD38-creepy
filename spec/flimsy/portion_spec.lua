require 'spec.spec_helper'

local Portion = require "flimsy.portion"
local Event = require "flimsy.event"

describe("flimsy.portion", function()
  local portion

  before_each(function()
    portion = Portion:new()
  end)

  it("can have systems added to it", function()
    portion:addSystem(function(portion, deltaTime)
    end)
  end)

  it("runs systems when it updates", function()
    local actualPortion
    local actualEvent

    portion:addSystem(function(portion, event)
      actualPortion = portion
      actualEvent = event
    end)

    local event = Event:new("Kyle", 3)

    portion:processEvent(event)

    assert.are.equal(portion, actualPortion)
    assert.are.equal(event, actualEvent)
  end)
end)
