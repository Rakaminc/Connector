# Preview all emails at http://localhost:3000/rails/mailers/send_mailer
class SendMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/send_mailer/sned_when_update
  def sned_when_update
    SendMailer.sned_when_update
  end

end
