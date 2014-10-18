json.array!(@current_vitals) do |current_vital|
  json.extract! current_vital, :id, :current_interventions, :status, :dosage_dates, :surgeries, :eligibility_clinical
  json.url current_vital_url(current_vital, format: :json)
end
