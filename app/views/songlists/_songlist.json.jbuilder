json.extract! songlist, :id, :name, :key, :band, :url, :lyrics, :category, :mark, :user, :created_at, :updated_at
json.url songlist_url(songlist, format: :json)
