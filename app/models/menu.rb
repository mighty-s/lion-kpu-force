class Menu < ApplicationRecord
  has_many :orders
  belongs_to :branch
  mount_uploader :image, AvatarUploader
end
