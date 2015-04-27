json.array!(@idears) do |idear|
  json.extract! idear, :id, :role_id, :user_id, :idea_id, :filled
  json.url idear_url(idear, format: :json)
end
