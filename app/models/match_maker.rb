class MatchMaker

  def perfect_match(event, user)
  if user.get_buddy(event)
  array = event
  array.each_with_index do |attendee, index|
    if attendee.get_buddy(event) == nil
    #checks for perfect match
      if user[:strength] == attendee[:seeking] && user[:seeking] == attendee[:strength]
        match = Match.new
        match
    #delete match from array
    

      return attendee
    end
  end
  return false
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