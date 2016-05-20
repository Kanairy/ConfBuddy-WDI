require 'rubygems'
require 'rake'
require 'rufus/scheduler'

scheduler = Rufus::Scheduler.start_new
scheduler.every '15m' do
system 'bundle exec rake demo:mail_users'
end 
