def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |key, value|
    value.each do |inner_key, names|
      names.each do |name|
        if !pigeons[name]
          pigeons[name] = {}
        end
        if !pigeons[name][key]
          pigeons[name][key] = []
        end
        pigeons[name][key].push(inner_key.to_s)
      end
    end
  end
  pigeons
end