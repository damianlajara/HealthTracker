csv_file = File.read("/Users/Zalman/Downloads/ABBREV.xlsx\ -\ ABBREV\ \(1\).csv").gsub(/Refuse_Pct\r/, "")

numbers = File.read("/Users/Zalman/Downloads/sr28asc/FD_GROUP.txt").each_line.map do |line|
    line[/\d+/].to_i
end

index = 0



#
numbers = 
groups = "~0100~^~Dairy and Egg Products~
~0200~^~Spices and Herbs~
~0300~^~Baby Foods~
~0400~^~Fats and Oils~
~0500~^~Poultry Products~
~0600~^~Soups, Sauces, and Gravies~
~0700~^~Sausages and Luncheon Meats~
~0800~^~Breakfast Cereals~
~0900~^~Fruits and Fruit Juices~
~1000~^~Pork Products~
~1100~^~Vegetables and Vegetable Products~
~1200~^~Nut and Seed Products~
~1300~^~Beef Products~
~1400~^~Beverages~
~1500~^~Finfish and Shellfish Products~
~1600~^~Legumes and Legume Products~
~1700~^~Lamb, Veal, and Game Products~
~1800~^~Baked Products~
~1900~^~Sweets~
~2000~^~Cereal Grains and Pasta~
~2100~^~Fast Foods~
~2200~^~Meals, Entrees, and Side Dishes~
~2500~^~Snacks~
~3500~^~American Indian/Alaska Native Foods~
~3600~^~Restaurant Foods~"

csv_file = File.read("/Users/Zalman/Downloads/ABBREV.xlsx\ -\ ABBREV\ \(1\).csv")

csv_file = csv_file.gsub(/.+Refuse_Pct\r/, "").gsub("\n", "").split("\r")
groups = groups.split("\n")

groups_names = groups.map {|n| n.match(/\^~(.+)~/)[1]}
groups_numbers = groups.map {|n| n.match(/~(\d+)/)[1].to_i }

last_row = 0

groups_numbers.each_with_index do |current_number, index|
  current_group = FoodGroup.create(name: groups_names[index])
  rounds = groups_numbers[index + 1] - current_number
  binding.pry
  rounds.times do
    row = csv_file[last_row]
    
    food_name = row.match(/^\d{5},"(.+)".+".+".+".+"/)[1].gsub("\\", "")
    calories = row.match(/^\d{5},".+",\d+.\d+,(\d+).+".+".+".+"/)[1]

    @new_food = Food.create(name: food_name, calories: calories)
    
    current_group.foods << @new_food

  end
  binding.pry
  last_row = current_number
  current_group.save
end

