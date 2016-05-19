class User < ActiveRecord::Base
  has_many :event_users
  has_many :events, through: :event_users
  # has_many :matches, :foreign_key => "user_two_id"

  def get_buddy
    Match.where(user_one_id: self.id)
  end
end
