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
end
