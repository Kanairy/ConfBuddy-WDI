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
