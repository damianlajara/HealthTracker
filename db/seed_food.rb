food_source = File.read("./food_seed_source.csv").gsub(/^.+Refuse_Pct/, "")

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
~3600~^~Restaurant Foods~
".split("\n")

group_names = groups.map {|g| g.match(/\^~(\D+)~/)[1]}
group_amounts = groups.map {|g| g.match(/~(\d+)/)[1].to_i}

food_list = food_source.split("\r\n")
last_index = 0 
food_count = 0
fail_count = 0
group_names.each_with_index do |group_name, group_index|
  @food_group = FoodGroup.create(name: group_name)
  @number_of_foods = group_amounts[group_index]

  @number_of_foods.times do |this_iteration|
    
    row_number = last_index + this_iteration
    if food_name = food_list[row_number].match(/^\d+,"(\D+)"/)
      food_name = food_name[1]
    else
      binding.pry
      next
    end

    if food_calories = food_list[row_number].match(/^\d+,"\D+",\d+,(\d+)/)
      food_count += 1
      food_calories = food_calories[1]
    else
      binding.pry
      next
    end

    @food = Food.create(name: food_name, calories: food_calories)
    @food_group.foods << @food
  end
  @food_group.save
  last_index = @number_of_foods
end