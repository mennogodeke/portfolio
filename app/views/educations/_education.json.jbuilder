json.extract! education, :id, :name, :school, :location, :start_date, :end_date, :diploma, :created_at, :updated_at
json.url education_url(education, format: :json)