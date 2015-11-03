json.array!(@prescriptions) do |prescription|
  json.extract! prescription, :id, :belongs_to, :name, :doctor, :amount, :dosage, :schedule, :refills, :start
  json.url prescription_url(prescription, format: :json)
end
