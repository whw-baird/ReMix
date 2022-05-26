json.extract! cocktail, :id, :user_id, :bar_id, :name, :recipe, :created_at, :updated_at
json.url cocktail_url(cocktail, format: :json)
