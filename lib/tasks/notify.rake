namespace :notify do
  desc "Notification before event"
  task(:mail_users => :environment) do
    User.all.each do |user|
      user.events.each do |event|
        UserMailer.notification(user, event).deliver_now!
      end
    end
  end
end
