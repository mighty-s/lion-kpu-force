class Branch < ApplicationRecord

  belongs_to :user
  has_many :seat_strutures
  has_many :menus

end
