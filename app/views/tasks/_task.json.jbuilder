json.extract! task, :id, :unit_code, :unit_name, :semester, :additional_information, :user_id, :created_at, :updated_at
json.url task_url(task, format: :json)
