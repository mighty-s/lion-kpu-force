class Menu < ApplicationRecord
  has_many :orders
  belongs_to :branch
end
