json.array!(@recomendations) do |recomendation|
  json.extract! recomendation, :id, :doctor_id, :comment
  json.url recomendation_url(recomendation, format: :json)
end
