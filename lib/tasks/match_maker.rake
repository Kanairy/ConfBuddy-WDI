namespace :match_maker do
  desc "make matches"
  task(:match_maker => :environment) do
    match = MatchMaker.new
    match.match_maker      
  end
end
