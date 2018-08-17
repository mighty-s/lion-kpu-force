class Order < ApplicationRecord
  belongs_to :menu
  belongs_to :seat_onuse
end
