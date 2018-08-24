class Operator < ApplicationRecord
  has_many :branches
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  before_save {self.email=email.downcase}
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true,
            format:{with: VALID_EMAIL_REGEX},
           uniqueness: {case_sensitive: false}

end
