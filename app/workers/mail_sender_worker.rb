class MailSenderWorker
  include Sidekiq::Worker

  def perform(name, email)
    MainMailer.sample_email(name, email).deliver
  end
end
