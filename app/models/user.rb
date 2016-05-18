class User < ActiveRecord::Base
  has_many :event_users
  has_many :events, through: :event_users
end
