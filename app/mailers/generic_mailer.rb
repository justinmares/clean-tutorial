class GenericMailer < ActionMailer::Base

  helper ApplicationHelper

  default from: "DNSrep <wuddup@dnsrep.herokuapp.com>"

  def signup_alert(user)
    @user = user
    mail :to => ['stuartchaney22@gmail.com'],
    :subject => "Someone just signed up"
  end

end


