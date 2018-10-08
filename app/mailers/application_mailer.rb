class ApplicationMailer < ActionMailer::Base
  default from:     "Connector運営",
          bcc:      "sample+sent@gmail.com",
          reply_to: "sample+reply@gmail.com"
  layout 'mailer'
end
