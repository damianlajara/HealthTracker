json.array!(@prescriptions) do |prescription|
  json.extract! prescription, :id, :name, :amount, :refills, :dosage, :frequency
  json.url prescription_url(prescription, format: :json)
end
