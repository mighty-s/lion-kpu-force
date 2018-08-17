class SeatStruture < ApplicationRecord
  belongs_to :branch
  has_many :seat_onuses
end
