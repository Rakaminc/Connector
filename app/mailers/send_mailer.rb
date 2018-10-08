class SendMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.send_mailer.send_when_update.subject
  #

  default from: "shun12baseball@gmail.com"

  def send_when_update
    @user = user
    mail(to:      params[:user][:email],
         subject: '会員登録が完了しました。'
    )do |format|
      format.text
    end
  end
end
