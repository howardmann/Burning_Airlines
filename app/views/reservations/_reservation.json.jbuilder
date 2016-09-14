json.extract! reservation, :id, :row, :column, :user_id, :flight_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)