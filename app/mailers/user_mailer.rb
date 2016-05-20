class UserMailer < ApplicationMailer

  def match_buddy(user)
    @user = user
    # @event = event
    # @buddy = buddy
    mail( to: @user.email,
    subject: 'Matching buddy' )
  end
end
