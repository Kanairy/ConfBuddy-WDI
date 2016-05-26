namespace :match do
  desc "This is to send an email to users"
  task(:mail_users => :environment) do
    Match.each do |match|
      UserMailer.match_buddy(match.user_one_id, match.user_two_id, match.event_id).deliver!
    end
  end
end
