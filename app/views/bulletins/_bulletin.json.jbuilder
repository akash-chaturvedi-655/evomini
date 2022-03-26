json.extract! bulletin, :id, :from, :to, :body, :flag, :created_at, :updated_at
json.url bulletin_url(bulletin, format: :json)
