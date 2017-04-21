require 'spec.spec_helper'

local Entity = require "flimsy.entity"

describe("flimsy.entity", function()
  local entity

  before_each(function()
    entity = Entity:new()
  end)

  it("has components", function()
    local component = function()
    end

    assert.are.same({}, entity:getComponents())

    entity:addComponent(component)

    assert.are.same({ component }, entity:getComponents())
  end)
end)
