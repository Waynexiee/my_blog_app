json.extract! blog, :id, :name, :content, :created_at, :updated_at
json.url blog_url(blog, format: :json)
