require 'csv'
User.create!([
  {email: "g.r.martinez49@gmail.com", password: "testing1", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2015-10-28 19:07:19", last_sign_in_at: "2015-10-26 03:34:51", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Giancarlo", last_name: "Martinez", birthdate: "1991-09-03", height: 6, weight: 205, gender: "male", avatar_file_name: "gian-icon.png", avatar_content_type: "image/png", avatar_file_size: 10376, avatar_updated_at: "2015-10-26 03:01:33"},
  {email: "isaac@flatironschool.com", password: "testing2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-10-26 03:32:15", last_sign_in_at: "2015-10-26 03:26:22", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Isaac", last_name: "Lapides", birthdate: nil, height: nil, weight: nil, gender: "male", avatar_file_name: "isaac-icon.png", avatar_content_type: "image/png", avatar_file_size: 9480, avatar_updated_at: "2015-10-26 03:32:38"},
  {email: "damian@flatironschool.com", password: "testing3", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-10-26 03:33:02", last_sign_in_at: "2015-10-26 03:28:05", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Damian", last_name: "Lajara", birthdate: nil, height: nil, weight: nil, gender: "male", avatar_file_name: "damian-icon.png", avatar_content_type: "image/png", avatar_file_size: 10126, avatar_updated_at: "2015-10-26 03:33:37"},
  {email: "zalman@flatironschool.com", password: "testing4", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-10-26 03:34:16", last_sign_in_at: "2015-10-26 03:29:05", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Zalman", last_name: "Blau", birthdate: nil, height: nil, weight: nil, gender: "male", zipcode: nil, avatar_file_name: "zalman-icon.png", avatar_content_type: "image/png", avatar_file_size: 9008, avatar_updated_at: "2015-10-26 03:34:35"},
  {email: "marley@flatironschool.com", password: "testing5", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-10-26 03:38:25", last_sign_in_at: "2015-10-26 03:38:25", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Bob", last_name: "Marley", birthdate: nil, height: nil, weight: nil, gender: "male", zipcode: nil, avatar_file_name: "bob-marley.png", avatar_content_type: "image/png", avatar_file_size: 10955, avatar_updated_at: "2015-10-26 03:38:24"},
  {email: "fawkes@flatironschool.com", password: "testing6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-10-26 03:39:14", last_sign_in_at: "2015-10-26 03:39:14", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Guy", last_name: "Fawkes", birthdate: nil, height: nil, weight: nil, gender: "male", zipcode: nil, avatar_file_name: "guy-fawkes.png", avatar_content_type: "image/png", avatar_file_size: 10244, avatar_updated_at: "2015-10-26 03:39:13"},
  {email: "dylan@gmail.com", password: "testing7", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-10-26 17:34:02", last_sign_in_at: "2015-10-26 17:34:02", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Dylan", last_name: "Okeefe", birthdate: nil, height: nil, weight: nil,  gender: "", zipcode: nil, avatar_file_name: "dylan.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 201636, avatar_updated_at: "2015-10-26 17:34:01"}
])

# User.create!([
#   {
#     email: "sylvia@flatironschool.com", password: "testing1", first_name: "Sylvia", last_name: "Dolmo", birthdate: "1991-09-03", height: 6, weight: 205, gender: "male", zipcode: nil, avatar_file_name: "gian-icon.png", avatar_content_type: "image/png", avatar_file_size: 10376, avatar_updated_at: "2015-10-26 03:01:33"
#   },
#   {
#     email: "isaac@flatironschool.com", password: "testing2", first_name: "Isaac", last_name: "Lapides", birthdate: nil, height: nil, weight: nil, gender: "male", zipcode: nil, avatar_file_name: "isaac-icon.png", avatar_content_type: "image/png", avatar_file_size: 9480, avatar_updated_at: "2015-10-26 03:32:38"
#   }
#   {
#     email: "damian@flatironschool.com", password: "testing3", first_name: "Damian", last_name: "Lajara", birthdate: nil, height: nil, weight: nil, gender: "male", zipcode: nil, avatar_file_name: "damian-icon.png", avatar_content_type: "image/png", avatar_file_size: 10126, avatar_updated_at: "2015-10-26 03:33:37"
#   },
#   {
#     email: "zalman@flatironschool.com", password: "testing4", first_name: "Zalman", last_name: "Blau", birthdate: nil, height: nil, weight: nil, gender: "male", zipcode: nil, avatar_file_name: "zalman-icon.png", avatar_content_type: "image/png", avatar_file_size: 9008, avatar_updated_at: "2015-10-26 03:34:35"
#   },
#   {
#     email: "marley@flatironschool.com", password: "testing5", first_name: "Bob", last_name: "Marley", birthdate: nil, height: nil, weight: nil, gender: "male", zipcode: nil, avatar_file_name: "bob-marley.png", avatar_content_type: "image/png", avatar_file_size: 10955, avatar_updated_at: "2015-10-26 03:38:24"
#   },
#   {
#     email: "fawkes@flatironschool.com", password: "testing6", first_name: "Guy", last_name: "Fawkes", birthdate: nil, height: nil, weight: nil, gender: "male", zipcode: nil, avatar_file_name: "guy-fawkes.png", avatar_content_type: "image/png", avatar_file_size: 10244, avatar_updated_at: "2015-10-26 03:39:13"
#   },
#   {
#     email: "dylan@gmail.com", password: "testing7", first_name: "Dylan", last_name: "Okeefe", birthdate: nil, height: nil, weight: nil, gender: "", zipcode: nil, avatar_file_name: "dylan.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 201636, avatar_updated_at: "2015-10-26 17:34:01"
#   }
# ])

Circle.create!([
  {name: "work team"}
])

UserCircle.create!([
  {user_id: 1, circle_id: 1},
  {user_id: 2, circle_id: 1},
  {user_id: 3, circle_id: 1},
  {user_id: 4, circle_id: 1},
  {user_id: 5, circle_id: 1},
  {user_id: 6, circle_id: 1}
])
UserStatus.create!([
  {user_id: 7, status: "Energized"},
  {user_id: 7, status: "Exhausted"},
  {user_id: 7, status: "Very Sick"},
  {user_id: 7, status: "Very Sick"},
  {user_id: 7, status: "Energized"},
  {user_id: 7, status: "Energized"},
  {user_id: 1, status: "Energized"}
])


food_array = CSV.read("./db/food_seed_source.csv")[1..-1]
food_groups = File.read("./db/food_groups.txt").split("\n")
food_group_connections = CSV.read("./db/food_group_connection.csv")

food_array.each do |row| 
  food_data = {
    name: row[1].gsub(",", ", "),
    calories: row[3].to_i,
    usda_id: row[0].to_i
  }
  @food = Food.create(food_data)
end

food_groups.each do |group| 
  group_data = {
    name: group.match(/\^~(\D+)~/)[1],
    usda_id: group.match(/~(\d+)/)[1].to_i
  }
  @food_group = FoodGroup.create(group_data)
end

food_group_connections.each do |row|

  usda_food_id = row[0].match(/~(\d{5})/)[1].to_i
  usda_group_id = row[0].match(/\^~(\d+)/)[1].to_i


  @food = Food.find_by(usda_id: usda_food_id)
  @group = FoodGroup.find_by(usda_id: usda_group_id)
  begin
    @group.foods << @food
    @group.save
  rescue
  end
end

Symptom.create([
  # Acne
  {common_term: "Whiteheads"},
  {common_term: "Blackheads"},
  {common_term: "Red Bumps"},
  {common_term: "Pimples"},
  {common_term: "Lumps"},
  # HIV/AIDS
  {common_term: "Fever"},
  {common_term: "Headache"},
  {common_term: "Muscle Ache"},
  {common_term: "Rash"},
  {common_term: "Sore Throat"},
  {common_term: "Swollen Lymph Glands"},
  # Asthma
  {common_term: "Shortness of breath"},
  {common_term: "Chest pain"},
  {common_term: "Coughing"},
  {common_term: "Wheezing"},
  {common_term: "Whistling sound when exhailing"},
  #{common_term: "Whiteheads"},
  # Back Pain
  #{common_term: "Muscle Ache"},
  {common_term: "Leg pain"},
  {common_term: "Limited flexibility"},
  {common_term: "Rigid back motion"},
  # Cellulitis
  {common_term: "Swelling"},
  {common_term: "Tenderness"},
  {common_term: "Pain"},
  {common_term: "Warmth"},
  #{common_term: "Fever"},
  {common_term: "Red Spots"},
  {common_term: "Blisters"},
  {common_term: "Skin dimpling"},
  # Chicken Pox
  {common_term: "Fever"},
  {common_term: "Loss of appetite"},
  {common_term: "Headache"},
  {common_term: "Whiteheads"},
  {common_term: "Tired"},
  # Constipation
  {common_term: "Lumpy stools"},
  {common_term: "Blockage in rectum"},
  {common_term: "Stomach pain"},
  # Hives
  {common_term: "Wheals"},
  {common_term: "Itching"},
  {common_term: "Burning throat"},
  {common_term: "Swollen genitals"},
  # Cold Sore
  {common_term: "Blisters"},
  {common_term: "Tingling"},
  {common_term: "Itching"},
  {common_term: "Oozing Blisters"},
  #{common_term: "Muscle aches"},
  {common_term: "Swollen Lymph Nodes"},
  {common_term: "Sore Throat"}
])

Illness.create([
  {common_term: "Acne"},
  {common_term: "HIV/AIDS"},
  {common_term: "Asthma"},
  {common_term: "Back Pain"},
  {common_term: "Cellulitis"},
  {common_term: "Chicken Pox"},
  {common_term: "Constipation"},
  {common_term: "Hives"},
  {common_term: "Cold Sore"},
  {common_term: "Muscle aches"}
])

x = Illness.find_or_create_by(common_term: "Acne")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Whiteheads"),
    Symptom.find_or_create_by(common_term: "Blackheads"),
    Symptom.find_or_create_by(common_term: "Red Bumps"),
    Symptom.find_or_create_by(common_term: "Pimples"),
    Symptom.find_or_create_by(common_term: "Lumps") 
  ]
x.save

x = Illness.find_or_create_by(common_term: "HIV/AIDS")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Fever"),
    Symptom.find_or_create_by(common_term: "Headache"),
    Symptom.find_or_create_by(common_term: "Muscle Ache"),
    Symptom.find_or_create_by(common_term: "Rash"),
    Symptom.find_or_create_by(common_term: "Sore Throat"),
    Symptom.find_or_create_by(common_term: "Swollen Lymph Glands") 
  ]
x.save

x = Illness.find_or_create_by(common_term: "Asthma")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Shortness of breath"),
    Symptom.find_or_create_by(common_term: "Chest pain"),
    Symptom.find_or_create_by(common_term: "Coughing"),
    Symptom.find_or_create_by(common_term: "Wheezing"),
    Symptom.find_or_create_by(common_term: "Whistling sound when exhailing"), 
  ]
x.save

x = Illness.find_or_create_by(common_term: "Back Pain")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Muscle Ache"),
    Symptom.find_or_create_by(common_term: "Leg pain"),
    Symptom.find_or_create_by(common_term: "Limited flexibility"),
    Symptom.find_or_create_by(common_term: "Rigid back motion")
  ]
x.save

x = Illness.find_or_create_by(common_term: "Cellulitis")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Swelling"),
    Symptom.find_or_create_by(common_term: "Tenderness"),
    Symptom.find_or_create_by(common_term: "Pain"),
    Symptom.find_or_create_by(common_term: "Warmth"),
    Symptom.find_or_create_by(common_term: "Red Spots"),
    Symptom.find_or_create_by(common_term: "Blisters"),
    Symptom.find_or_create_by(common_term: "Fever"),
    Symptom.find_or_create_by(common_term: "Skin dimpling")
  ]
x.save

x = Illness.find_or_create_by(common_term: "Chicken Pox")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Fever"),
    Symptom.find_or_create_by(common_term: "Loss of appetite"),
    Symptom.find_or_create_by(common_term: "Headache"),
    Symptom.find_or_create_by(common_term: "Whiteheads"),
    Symptom.find_or_create_by(common_term: "Tired")
  ]
x.save

x = Illness.find_or_create_by(common_term: "Constipation")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Lumpy stools"),
    Symptom.find_or_create_by(common_term: "Blockage in rectum"),
     Symptom.find_or_create_by(common_term: "Stomach pain") 
  ]
x.save

x = Illness.find_or_create_by(common_term: "Hives")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Wheals"),
    Symptom.find_or_create_by(common_term: "Itching"),
    Symptom.find_or_create_by(common_term: "Burning throat"),
    Symptom.find_or_create_by(common_term: "Swollen genitals")
  ]
x.save

x = Illness.find_or_create_by(common_term: "Cold Sore")
x.symptoms << 
  [
    Symptom.find_or_create_by(common_term: "Blisters"),
    Symptom.find_or_create_by(common_term: "Tingling"),
    Symptom.find_or_create_by(common_term: "Itching"),
    Symptom.find_or_create_by(common_term: "Oozing Blisters"),
    Symptom.find_or_create_by(common_term: "Muscle aches"),
    Symptom.find_or_create_by(common_term: "Sore Throat"),
    Symptom.find_or_create_by(common_term: "Swollen Lymph Nodes")
  ]
x.save







