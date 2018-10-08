ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    address: 'smtp.gmail.com',
    domain: 'gmail.com',
    port: 587,
    user_name: 'shun12baseball@gmail.com',
    password: 'Mine3135',
    authentication: 'plain',
    enable_starttls_auto: true
}
