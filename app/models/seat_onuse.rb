class SeatOnuse < ApplicationRecord
  has_many :orders
  belongs_to :seat_struture, optional: true
end
