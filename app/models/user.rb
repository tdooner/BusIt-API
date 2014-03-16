class User < ActiveRecord::Base
  validates :email, presence: true
  validates :name, presence: true
  validates :access_token, presence: true
end
