json.array!(@flight.reservations) do |reservation|
  json.extract! @flight, :number, :capacity, :remaining, :seats_taken
  json.extract! @flight.airplane, :rows, :columns

  json.extract! reservation.user, :name
  json.extract! reservation, :row, :column, :seat, :user_id
end



# create_table "flights", force: :cascade do |t|
#   t.string   "number"
#   t.string   "origin"
#   t.string   "destination"
#   t.date     "date"
#   t.integer  "airplane_id"
#   t.datetime "created_at",  null: false
#   t.datetime "updated_at",  null: false
# end
#
# create_table "reservations", force: :cascade do |t|
#   t.integer  "row"
#   t.integer  "column"
#   t.integer  "user_id"
#   t.integer  "flight_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "users", force: :cascade do |t|
#   t.string   "name"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
