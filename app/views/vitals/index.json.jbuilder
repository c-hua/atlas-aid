json.array!(@vitals) do |vital|
  json.extract! vital, :id, :heart_rate, :date, :blood_pressure, :respiratory_rate, :temperature, :red_blood_cell, :white_blood_cell, :chemo_date, :chemo_type
  json.url vital_url(vital, format: :json)
end
