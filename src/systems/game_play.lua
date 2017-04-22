return function(portion)
  return function(event)
    if event.name ~= 'advance' then
      return
    end

    local updatables = portion:getComponents('Updatable')

    _.each(updatables, function(index, updatable)
    end)
      p(#updatables)
  end
end
