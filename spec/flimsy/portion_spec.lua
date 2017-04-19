require 'spec.spec_helper'

local Portion = require "flimsy.portion"

describe("flimsy.Portion", function()
  local portion

  before_each(function()
    portion = Portion:new()
  end)

  it("can have systems added to it", function()
    portion:addSystem(function(portion, deltaTime)
    end)
  end)

  it("runs systems when it updates", function()
    local actualDelta
    local actualPortion

    portion:addSystem(function(portion, deltaTime)
      actualPortion = portion
      actualDelta = deltaTime
    end)

    portion:update(22)

    assert.are.equal(portion, actualPortion)
    assert.are.equal(22, actualDelta)
  end)
end)
