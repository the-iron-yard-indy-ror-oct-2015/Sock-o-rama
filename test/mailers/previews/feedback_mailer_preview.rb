# Preview all emails at http://localhost:3000/rails/mailers/feedback_mailer
class FeedbackMailerPreview < ActionMailer::Preview

  def send
    FeedbackMailer.feedback_email(Feedback.first)
  end

end
