json.extract! task, :id, :name, :description, :status, :user_project_id, :created_at, :updated_at
json.url task_url(task, format: :json)
