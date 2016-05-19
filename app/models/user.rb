<<<<<<< HEAD
=======
class User < ActiveRecord::Base
  has_many :event_users
  has_many :events, through: :event_users
  has_many :matches
  # has_many :matches, :foreign_key => "user_two_id"

  def get_all_buddies()
    Match.where(user_one_id: self.id) << Match.where(user_two_id: self.id) 
  end

  def get_buddy(event_id)
    if Match.where(user_one_id: self.id, event_id: event_id).any?
      match_two_id = Match.where(user_one_id: self.id, event_id: event_id)[0].user_two_id
      return User.find(match_two_id)
    elsif Match.where(user_two_id: self.id, event_id: event_id).any?
      match_one_id = Match.where(user_two_id: self.id, event_id: event_id)[0].user_one_id
      return User.find(match_one_id)
    end
  end
end


  # event 1


    # 2     31    43
# event.user.buddy
>>>>>>> abab1a127e99247ffbebd47d1c4d617624efd8e2
