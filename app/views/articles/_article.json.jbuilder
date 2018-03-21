json.extract! article, :id, :title, :place, :complete, :created_at, :updated_at
json.url article_url(article, format: :json)
