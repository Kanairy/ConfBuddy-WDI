class MatchMaker

  # m = MatchMaker.new

  def perfect_match(event, user)
    if user.get_buddy(event.id)
      return
    end
    array = event.users
    array.each do |attendee|
      if attendee.get_buddy(event) == nil
    #checks for perfect match
        if user.id != attendee.id
          if user[:strength] == attendee[:seeking] && user[:seeking] == attendee[:strength]
          match = Match.create(user_one_id:"#{user.id}", user_two_id:"#{attendee.id}", event_id:"#{event.id}", compatibility:"perfect")
          break
      #delete match from array
          end
        end
      # return attendee
      end
    end
  end

  def partial_match(event, user)
    if user.get_buddy(event.id)
      return
    end
    array = event.users
    array.each do |attendee|
      if attendee.get_buddy(event) == nil
    #checks for perfect match
        if user.id != attendee.id
          if user[:strength] == attendee[:seeking] || user[:seeking] == attendee[:strength]
            match = Match.create(user_one_id:"#{user.id}", user_two_id:"#{attendee.id}", event_id:"#{event.id}", compatibility:"partial")
            break

      #delete match from array
          end
        end
        # return attendee
      end
    end
  end

  def bottom_of_the_barrel(event, user)
    if user.get_buddy(event.id)
      return
    end
    array = event.users
    array.each do |attendee|
      if user.id != attendee.id
        if attendee.get_buddy(event) == nil
          match = Match.create(user_one_id:"#{user.id}", user_two_id:"#{attendee.id}", event_id:"#{event.id}", compatibility:"bottom")
          break
      #delete match from array
        end
      end
        # return attendee
    end
  end

  def event_match_maker(event)
    users = event.users
    users.each do |user|
      perfect_match(event, user)
    end
    users.each do |user|
      partial_match(event, user)
    end
    users.each do |user|
      bottom_of_the_barrel(event, user)
    end
  end

  def match_maker()
    events = Event.all
    events.each do |event|
      event_match_maker(event)
    end
  end

  def buddy_email()
    events = Event.all
    events.each do |event|
      users = event.users
      users.each do |user|
        if user.get_buddy(event.id) == nil
          puts "you are a loner"
        else
          puts "#{user.first_name} is partnered with #{user.get_buddy(event.id).first_name}"
        end
      end
    end
  end

end
