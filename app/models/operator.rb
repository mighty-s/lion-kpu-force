class Operator < ApplicationRecord

  has_many :branches
  before_save {self.user_id=user_id.downcase}
  has_secure_password
  validates :name, presence: true
  validates :user_id, presence: true,
           uniqueness: {case_sensitive: false}


end
