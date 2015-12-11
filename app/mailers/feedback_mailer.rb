class FeedbackMailer < ApplicationMailer

  def feedback_email(feedback)
    @user = feedback.user
    @feedback = feedback
    mail(to: ENV["admin_email"], subject: "New customer feedback")
  end

end
