json.array!(@flights) do |flight|
  json.extract! flight, :id, :number, :origin, :destination, :date, :capacity, :remaining, :airplane, :reservations
end
