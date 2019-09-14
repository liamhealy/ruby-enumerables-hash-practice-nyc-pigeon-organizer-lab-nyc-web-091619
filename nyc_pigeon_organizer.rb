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
  data[:color].each do |color, pigeon|
    pigeon.each do |pigeon_name|
      pigeons.each_key do |key|
        if color.include?(key)
          pigeons[key][:color].push(color)
        end
      end
    end
  end
  pigeons
end
