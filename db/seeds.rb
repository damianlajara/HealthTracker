users = [
  {email: "g.r.martinez49@gmail.com", encrypted_password: "$2a$10$VfxO0G0Ak.I2StAUIx4gH.gz2SHODl/vQHJqE7AVAJ8aG5M2ubAlS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2015-10-28 19:07:19", last_sign_in_at: "2015-10-26 03:34:51", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Giancarlo", last_name: "Martinez", birthdate: "1991-09-03", height: 6, weight: 205, gender: "male", avatar_file_name: "gian-icon.png", avatar_content_type: "image/png", avatar_file_size: 10376, avatar_updated_at: "2015-10-26 03:01:33"},
  {email: "isaac@flatironschool.com", encrypted_password: "$2a$10$rEjRisw6xZEm159Vmog1uuPLTKUYpvgj9fFyogSg3GZaxg9CQFlna", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-10-26 03:32:15", last_sign_in_at: "2015-10-26 03:26:22", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Isaac", last_name: "Lapides", birthdate: nil, height: nil, weight: nil, gender: "male", avatar_file_name: "isaac-icon.png", avatar_content_type: "image/png", avatar_file_size: 9480, avatar_updated_at: "2015-10-26 03:32:38"},
  {email: "damian@flatironschool.com", encrypted_password: "$2a$10$5qAYwGsqCdZ0/o/oYkZGXOFqaPL1hUqSp5vJqjp8O2FeQzWDR2zj2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-10-26 03:33:02", last_sign_in_at: "2015-10-26 03:28:05", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Damian", last_name: "Lajara", birthdate: nil, height: nil, weight: nil, gender: "male", avatar_file_name: "damian-icon.png", avatar_content_type: "image/png", avatar_file_size: 10126, avatar_updated_at: "2015-10-26 03:33:37"},
  {email: "zalman@flatironschool.com", encrypted_password: "$2a$10$ZT1YO6bNF2/TrE7XG6Z47.JJV8h5VCpv/2SyWS3wfmhhZK93AOPjW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-10-26 03:34:16", last_sign_in_at: "2015-10-26 03:29:05", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Zalman", last_name: "Blau", birthdate: nil, height: nil, weight: nil, gender: "male", zipcode: nil, avatar_file_name: "zalman-icon.png", avatar_content_type: "image/png", avatar_file_size: 9008, avatar_updated_at: "2015-10-26 03:34:35"},
  {email: "marley@flatironschool.com", encrypted_password: "$2a$10$m2HFhw.KlseRUQA4BrYsYeCd6m2j2bxSezOQdF6vY7hfgBEig9.aW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-10-26 03:38:25", last_sign_in_at: "2015-10-26 03:38:25", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Bob", last_name: "Marley", birthdate: nil, height: nil, weight: nil, gender: "male", zipcode: nil, avatar_file_name: "bob-marley.png", avatar_content_type: "image/png", avatar_file_size: 10955, avatar_updated_at: "2015-10-26 03:38:24"},
  {email: "fawkes@flatironschool.com", encrypted_password: "$2a$10$wqjPyMQK9E4Qm0/Vu4PWT.H00MRU8W93EepyV7KyRIPm82vL6QkLK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-10-26 03:39:14", last_sign_in_at: "2015-10-26 03:39:14", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Guy", last_name: "Fawkes", birthdate: nil, height: nil, weight: nil, gender: "male", zipcode: nil, avatar_file_name: "guy-fawkes.png", avatar_content_type: "image/png", avatar_file_size: 10244, avatar_updated_at: "2015-10-26 03:39:13"},
  {email: "dylan@gmail.com", encrypted_password: "$2a$10$UlXZjEZi2oocR.Ri1DkGj./36OIVHWMb542HFnveS5QFdVBwjSMF.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-10-26 17:34:02", last_sign_in_at: "2015-10-26 17:34:02", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: "Dylan", last_name: "Okeefe", birthdate: nil, height: nil, weight: nil,  gender: "", zipcode: nil, avatar_file_name: "dylan.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 201636, avatar_updated_at: "2015-10-26 17:34:01"}
]

users.each do |u|
  @user = User.new(u)
  @user.save!(validate: false)
end

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
