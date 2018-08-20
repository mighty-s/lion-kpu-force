class Branch < ApplicationRecord

  has_many :seat_strutures
  belongs_to :operator

end
