namespace :match do
  desc "This is to send an email to users"
  task(:mail_users => :environment) do
    Match.all.each do |match|
      UserMailer.match_buddy(User.find(match.user_one_id),Event.find(match.event_id) ,User.find(match.user_two_id) ).deliver_now!
      UserMailer.match_buddy(User.find(match.user_two_id),Event.find(match.event_id) ,User.find(match.user_one_id) ).deliver_now!
    end
  end
end
