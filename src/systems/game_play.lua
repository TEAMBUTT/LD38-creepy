return function(portion)
  return function(event)
    if event.name ~= 'advance' then
      return
    end

    p('advanced')
  end
end
