class MatchMaker

  def perfect_match(event, user)
    if user.get_buddy(event.id)
      return false
    end
    array = event.users
    array.each do |attendee|
      if attendee.get_buddy(event) == nil
    #checks for perfect match
        if user[:strength] == attendee[:seeking] && user[:seeking] == attendee[:strength]
        match = Match.create(user_one_id:"#{user.id}", user_two_id:"#{attendee.id}", event_id:"#{event.id}")
    #delete match from array
        end
      # return attendee
      end
    end
  end

  def perfect_match(event, user)
    if user.get_buddy(event.id)
      return false
    end
    array = event.users
    array.each do |attendee|
      if attendee.get_buddy(event) == nil
    #checks for perfect match
        if user[:strength] == attendee[:seeking] || user[:seeking] == attendee[:strength]
        match = Match.create(user_one_id:"#{user.id}", user_two_id:"#{attendee.id}", event_id:"#{event.id}")
    #delete match from array
        end
      # return attendee
      end
    end
  end  




  def match(user, array)
    if perfect_match(user, array) != false
      return perfect_match(user, array)
    else
      array.each do |attendee|
      end
    end
  end

end


