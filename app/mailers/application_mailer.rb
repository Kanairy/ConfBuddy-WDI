class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com" #sender email
  layout 'mailer'
end
