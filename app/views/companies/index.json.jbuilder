json.array!(@companies) do |company|
  json.extract! company, :id, :avatar, :name, :description, :created_at, :updated_at
  json.url company_url(company, format: :json)
end
