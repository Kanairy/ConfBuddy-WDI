namespace :notify do
  desc "Notification before event"
  task(:mail_users => :environment) do
    UserMailer.notification(user).deliver_later
  end
end
