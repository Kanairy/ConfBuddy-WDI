class Match < ActiveRecord::Base
  belongs_to :user_one, :class_name => "User"
  belongs_to :user_two, :class_name => "User"
  belongs_to :event

  def get_buddy(user)
    if self.user_one_id == user.id
      return User.find("#{self.user_two_id}")
    elsif self.user_two_id == user.id
      return User.find("#{self.user_one_id}")
    end
  end

  def get_users()
    result = []
    result << User.find("#{self.user_two_id}")
    result << User.find("#{self.user_one_id}")
    return result
  end

    # Match.where(user_one_id: self.id) << Match.where(user_two_id: self.id)
  # end



end
