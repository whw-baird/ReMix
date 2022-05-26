json.extract! cocktail_comment, :id, :cocktail_id, :user_id, :body, :created_at, :updated_at
json.url cocktail_comment_url(cocktail_comment, format: :json)
