class User < ActiveRecord::Base
  has_secure_password
  has_many :event_users
  has_many :events, through: :event_users
  has_many :matches
  # has_many :matches, :foreign_key => "user_two_id"

  def get_all_buddies()
    result = []
    # if_this_is_a_true_value ? then_the_result_is_this
    result << Match.where(user_one_id: "#{self.id}")
    result << Match.where(user_two_id: "#{self.id}")
    result = result.flatten
    return result
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


# [[#<Match:0x007fa1b6d63260>,
#   #<Match:0x007fa1b6d63008 id: 3, user_one_id: 1, user_two_id: 2, event_id: 8, compatibility: "perfect">],
#  []]