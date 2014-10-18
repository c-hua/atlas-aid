json.array!(@comments) do |comment|
  json.extract! comment, :id, :doctor_id, :date
  json.url comment_url(comment, format: :json)
end
