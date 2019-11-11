json.extract! company, :id, :federalId, :name, :address, :limit, :rate, :created_at, :updated_at
json.url company_url(company, format: :json)
