json.array!(@investments) do |investment|
  json.extract! investment, :id, :portfolio_id, :user_id, :name, :category_id
  json.url investment_url(investment, format: :json)
end
