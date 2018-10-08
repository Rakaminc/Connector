require 'test_helper'

class SendMailerTest < ActionMailer::TestCase
  test "sned_when_update" do
    mail = SendMailer.sned_when_update
    assert_equal "Sned when update", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
