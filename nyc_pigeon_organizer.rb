def nyc_pigeon_organizer(data)
  # write your code here!
  output_hash = {}
  data[:gender][:male].each do |name|
  	output_hash[name] = {gender: ["male"]}
  	output_hash[name][:color] = []
  end
  data[:gender][:female].each do |name|
  	output_hash[name] = {gender: ["female"]}
  	output_hash[name][:color] = []
  end

  data[:color].each do |color_name, pigeon_array|
  	pigeon_array.each do |pigeon_name|
  		color_array = output_hash[pigeon_name][:color]
  		color_array << color_name.to_s
  		output_hash[pigeon_name][:color] = color_array
  	end
  end
  data[:lives].each do |location, pigeon_array|
  	pigeon_array.each do |pigeon_name|
  		output_hash[pigeon_name][:lives] = [location]
  	end

  	
end
output_hash
end