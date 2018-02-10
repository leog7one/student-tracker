json.extract! student, :id, :first_name, :last_name, :student_id_number, :grade_level, :homeroom, :created_at, :updated_at
json.url student_url(student, format: :json)
