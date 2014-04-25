class User < ActiveRecord::Base
  validates :email, presence: true
  validates :name, presence: true
  # validates :access_token, presence: true
  validates :recipient_id, presence: true
end
