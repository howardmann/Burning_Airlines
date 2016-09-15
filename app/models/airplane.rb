# == Schema Information
#
# Table name: airplanes
#
#  id         :integer          not null, primary key
#  name       :string
#  columns       :integer
#  columns    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Airplane < ActiveRecord::Base
  has_many :flights
  validates :rows, :numericality => {:less_than_or_equal_to => 50, :greater_than => 0}
  validates :columns, :numericality => {:less_than_or_equal_to => 7, :greater_than => 0}
end
