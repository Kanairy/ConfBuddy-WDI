class UserMailer < ApplicationMailer

  def match_buddy(user, event, buddy)
    @user = user
    @event = event
    @buddy = buddy

    attachments.inline['qr.png'] = File.read('./app/assets/images/qr.png')
    mail( to: @user.email,
    subject: 'Matching buddy' )
  end

  def notification(user, event)
    @user = user
    @event = event
    @delivery_time = @event.start_at - 2.hours
    mail( to: @user.email,
    subject: "Upcoming event")
  end
end

# this is going to be added into the user_controller
# into the create method
# UserMailer.match_buddy(@user).deliver_later
# UserMailer.notification(@user).deliver_later

#options available
# Notifier.welcome(User.first).deliver_later
# Notifier.welcome(User.first).deliver_later(wait_until: @delivery_time)
# Notifier.welcome(User.first).deliver_later(wait: 1.hour)
# Notifier.welcome(User.first).deliver_later(wait_until: 10.hours.from_now)
