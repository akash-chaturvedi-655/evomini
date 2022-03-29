json.extract! userlist, :id, :user_id, :topic, :receipients, :created_at, :updated_at
json.url userlist_url(userlist, format: :json)
