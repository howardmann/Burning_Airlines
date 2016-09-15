json.array!(@flight.reservations) do |reservation|
  json.extract! @flight, :number, :capacity, :remaining, :seats_taken
  json.extract! @flight.airplane, :rows, :columns

  json.extract! reservation.user, :name
  json.extract! reservation, :row, :column, :seat, :user_id
end
