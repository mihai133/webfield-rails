json.extract! user_project, :id, :name, :description, :created_at, :updated_at
json.url user_project_url(user_project, format: :json)
