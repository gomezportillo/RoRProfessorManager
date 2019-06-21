json.extract! student, :id, :name, :avg_mark, :created_at, :updated_at
json.url student_url(student, format: :json)
