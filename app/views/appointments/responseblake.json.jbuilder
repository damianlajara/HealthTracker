

json.array!(@appointments) do |appointment|
      json.id  appointment.id
      json.title  appointment.reasons
      json.start  appointment.cal_date
      json.url "./../appointments/#{appointment.id}"
      json.color  "green"
end
