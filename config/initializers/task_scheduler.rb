require 'rubygems'
require 'rake'
require 'rufus/scheduler'

scheduler = Rufus::Scheduler.new
scheduler.at '2016/06/03 00:00:00' do
system 'bundle exec rake match:mail_users'
end
