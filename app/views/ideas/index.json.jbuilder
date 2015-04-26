json.array!(@ideas) do |idea|
  json.extract! idea, :id, :title, :idea_description, :skill_description
  json.url idea_url(idea, format: :json)
end
