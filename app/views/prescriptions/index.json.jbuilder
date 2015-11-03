json.array!(@prescriptions) do |prescription|
  json.extract! prescription, :id, :name, :amount, :refill, :dosage, :frequency
  json.url prescription_url(prescription, format: :json)
end
