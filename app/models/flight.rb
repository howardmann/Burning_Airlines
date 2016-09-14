# == Schema Information
#
# Table name: flights
#
#  id          :integer          not null, primary key
#  number      :string
#  origin      :string
#  destination :string
#  date        :date
#  airplane_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Flight < ActiveRecord::Base
  belongs_to :airplane
  has_many :reservations
  has_many :users, through: :reservations

  # Logic goes here
  def capacity
    self.airplane.rows * self.airplane.columns
  end

  def remaining
    self.capacity - self.reservations.length
  end

  def seats_taken
    rows = self.reservations.pluck("row")
    cols = self.reservations.pluck("column")
    seats = []

    rows.each_index do |i|
      arr = [rows[i], cols[i]]
      seats.push(arr)
    end
    return seats
  end

end
