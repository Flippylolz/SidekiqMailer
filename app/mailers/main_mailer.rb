class MainMailer < ApplicationMailer
  def sample_email(name, email)
    @name = name
    # binding.pry
    mail(to: email, subject: 'Welcome Email')
  end
end
