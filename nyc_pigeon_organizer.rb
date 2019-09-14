def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons = {}
  data.each do |attribute, category|
    category.each do |value, list|
      list.each do |pigeon_name|
        pigeons[pigeon_name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  pigeon_keys = pigeons.keys
  data[:color].each do |color, pigeon|
    pigeon.each do |pigeon_name|
      pigeon_keys.each do |key|
        if pigeon_name === key
          pigeons[key][:color].push(color.to_s)
        end
      end
    end
  end
  pigeons
end
