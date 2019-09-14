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
  pigeons.each_key do |key|
    data[:color].each do |color, pigeon|
      pigeon.each do |pigeon_name|
        if pigeons[key] === color
          pigeons[:color].push(color)
        end
      end
    end
  end
  pigeons
end
