require 'csv'
User.create!([
  {email: "g.r.martinez49@gmail.com", password: "password123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2015-10-28 19:07:19", last_sign_in_at: "2015-10-26 03:34:51", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Giancarlo", last_name: "Martinez", birthdate: "1991-09-03", height: 6, weight: 205, gender: "male", avatar_file_name: "gian-icon.png", avatar_content_type: "image/png", avatar_file_size: 10376, avatar_updated_at: "2015-10-26 03:01:33"},
  {email: "isaac@flatironschool.com", password: "password123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-10-26 03:32:15", last_sign_in_at: "2015-10-26 03:26:22", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Isaac", last_name: "Lapides", birthdate: nil, height: nil, weight: nil, gender: "male", avatar_file_name: "isaac-icon.png", avatar_content_type: "image/png", avatar_file_size: 9480, avatar_updated_at: "2015-10-26 03:32:38"},
  {email: "damian@flatironschool.com", password: "password123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-10-26 03:33:02", last_sign_in_at: "2015-10-26 03:28:05", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Damian", last_name: "Lajara", birthdate: nil, height: nil, weight: nil, gender: "male", avatar_file_name: "damian-icon.png", avatar_content_type: "image/png", avatar_file_size: 10126, avatar_updated_at: "2015-10-26 03:33:37"},
  {email: "zalman@flatironschool.com", password: "password123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-10-26 03:34:16", last_sign_in_at: "2015-10-26 03:29:05", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Zalman", last_name: "Blau", birthdate: nil, height: nil, weight: nil, gender: "male", zipcode: nil, avatar_file_name: "zalman-icon.png", avatar_content_type: "image/png", avatar_file_size: 9008, avatar_updated_at: "2015-10-26 03:34:35"},
  {email: "marley@flatironschool.com", password: "password123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-10-26 03:38:25", last_sign_in_at: "2015-10-26 03:38:25", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Bob", last_name: "Marley", birthdate: nil, height: nil, weight: nil, gender: "male", zipcode: nil, avatar_file_name: "bob-marley.png", avatar_content_type: "image/png", avatar_file_size: 10955, avatar_updated_at: "2015-10-26 03:38:24"},
  {email: "fawkes@flatironschool.com", password: "password123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-10-26 03:39:14", last_sign_in_at: "2015-10-26 03:39:14", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Guy", last_name: "Fawkes", birthdate: nil, height: nil, weight: nil, gender: "male", zipcode: nil, avatar_file_name: "guy-fawkes.png", avatar_content_type: "image/png", avatar_file_size: 10244, avatar_updated_at: "2015-10-26 03:39:13"},
  {email: "dylan@gmail.com", password: "password123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-10-26 17:34:02", last_sign_in_at: "2015-10-26 17:34:02", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Dylan", last_name: "Okeefe", birthdate: nil, height: nil, weight: nil,  gender: "", zipcode: nil, avatar_file_name: "dylan.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 201636, avatar_updated_at: "2015-10-26 17:34:01"}
])


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

YearlyCheckup.create!([
  {name: "Phyical", location: "Brooklyn", checkup_date: Date.current + 1.month},
  {name: "Dental", location: "Queens", checkup_date: Date.current + 1.month},
  {name: "Optical", location: "LI", checkup_date: Date.current + 1.month},
  {name: "Flu_shot", location: "Manhattan", checkup_date: Date.current + 1.month}
])

PendingEvent.create!([
  {appt_type: "Physical", user_id: 1},
  {appt_type: "Blood", user_id: 1},
  {appt_type: "Dental", user_id: 1},
  {appt_type: "Optical", user_id: 1},
  {appt_type: "Physical", user_id: 2},
  {appt_type: "Blood", user_id: 2},
  {appt_type: "Dental", user_id: 2},
  {appt_type: "Optical", user_id: 2},
  {appt_type: "Physical", user_id: 3},
  {appt_type: "Blood", user_id: 3},
  {appt_type: "Dental", user_id: 3},
  {appt_type: "Optical", user_id: 3},
  {appt_type: "Physical", user_id: 4},
  {appt_type: "Blood", user_id: 4},
  {appt_type: "Dental", user_id: 4},
  {appt_type: "Optical", user_id: 4},
])

UserStat.create!([
    {
      user_id: 1,
      feeling: "Exhausted",
      sleep: 910,
      calories: 1500,
      exercise: 1200,
      created_at: DateTime.new(2015,11,2),
      updated_at: DateTime.new(2015,11,2)
    },
    {
      user_id: 1,
      feeling: "Energized",
      sleep: 600,
      calories: 500,
      exercise: 520,
      created_at: DateTime.new(2015,11,3),
      updated_at: DateTime.new(2015,11,3)
    },
    {
      user_id: 1,
      feeling: "Just Fine",
      sleep: 600,
      calories: 500,
      exercise: 520,
      created_at: DateTime.new(2015,11,4),
      updated_at: DateTime.new(2015,11,4)
    },
    {
      user_id: 1,
      feeling: "Mildly Sick",
      sleep: 800,
      calories: 250,
      exercise: 420,
      created_at: DateTime.new(2015,11,5),
      updated_at: DateTime.new(2015,11,5)
    },
    {
      user_id: 1,
      feeling: "Very Sick",
      sleep: 990,
      calories: 200,
      exercise: 920,
      created_at: DateTime.new(2015,11,6),
      updated_at: DateTime.new(2015,11,6)
    },
    {
      user_id: 1,
      feeling: "Energized",
      sleep: 100,
      calories: 1000,
      exercise: 1520,
      created_at: DateTime.new(2015,11,7),
      updated_at: DateTime.new(2015,11,7)
    },
    # User 2
    {
      user_id: 2,
      feeling: "Exhausted",
      sleep: 900,
      calories: 200,
      exercise: 720,
      created_at: DateTime.new(2015,11,2),
      updated_at: DateTime.new(2015,11,2)
    },
    {
      user_id: 2,
      feeling: "Energized",
      sleep: 200,
      calories: 560,
      exercise: 590,
      created_at: DateTime.new(2015,11,3),
      updated_at: DateTime.new(2015,11,3)
    },
    {
      user_id: 2,
      feeling: "Just Fine",
      sleep: 900,
      calories: 650,
      exercise: 908,
      created_at: DateTime.new(2015,11,4),
      updated_at: DateTime.new(2015,11,4)
    },
    {
      user_id: 2,
      feeling: "Mildly Sick",
      sleep: 800,
      calories: 450,
      exercise: 690,
      created_at: DateTime.new(2015,11,5),
      updated_at: DateTime.new(2015,11,5)
    },
    {
      user_id: 2,
      feeling: "Very Sick",
      sleep: 400,
      calories: 200,
      exercise: 320,
      created_at: DateTime.new(2015,11,6),
      updated_at: DateTime.new(2015,11,6)
    },
    {
      user_id: 2,
      feeling: "Energized",
      sleep: 1100,
      calories: 1050,
      exercise: 1250,
      created_at: DateTime.new(2015,11,7),
      updated_at: DateTime.new(2015,11,7)
    },
    # User 3
    {
      user_id: 3,
      feeling: "Exhausted",
      sleep: 200,
      calories: 530,
      exercise: 528,
      created_at: DateTime.new(2015,11,2),
      updated_at: DateTime.new(2015,11,2)
    },
    {
      user_id: 3,
      feeling: "Energized",
      sleep: 1200,
      calories: 900,
      exercise: 820,
      created_at: DateTime.new(2015,11,3),
      updated_at: DateTime.new(2015,11,3)
    },
    {
      user_id: 3,
      feeling: "Just Fine",
      sleep: 500,
      calories: 800,
      exercise: 320,
      created_at: DateTime.new(2015,11,4),
      updated_at: DateTime.new(2015,11,4)
    },
    {
      user_id: 3,
      feeling: "Mildly Sick",
      sleep: 1060,
      calories: 950,
      exercise: 200,
      created_at: DateTime.new(2015,11,5),
      updated_at: DateTime.new(2015,11,5)
    },
    {
      user_id: 3,
      feeling: "Very Sick",
      sleep: 690,
      calories: 650,
      exercise: 860,
      created_at: DateTime.new(2015,11,6),
      updated_at: DateTime.new(2015,11,6)
    },
    {
      user_id: 3,
      feeling: "Energized",
      sleep: 1110,
      calories: 1100,
      exercise: 1420,
      created_at: DateTime.new(2015,11,7),
      updated_at: DateTime.new(2015,11,7)
    },
])

Task.create([
    {name: "Check what symptoms my brother has", status: "done"},
    {name: "Make sure to call my mom about her back pain", status: "done"},
    {name: "Call the doctor for botox renewal", status: "done"},
    {name: "Call the doctor", status: "pending"},
    {name: "Get a list of good dentists", status: "pending"},
    {name: "Call sister about her surgery", status: "pending"},
    {name: "Look up cures for the flu", status: "pending"},
])


UserStatus.create([
    {user_id: 1, status: "Energized"},
    {user_id: 2, status: "Very Sick"},
    {user_id: 3, status: "Just Fine"},
    {user_id: 4, status: "Energized"},
    {user_id: 5, status: "Energized"},
    {user_id: 6, status: "Just Fine"},

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

