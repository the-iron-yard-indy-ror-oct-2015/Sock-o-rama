class FeedbackMailer < ApplicationMailer

  def feedback_email(feedback)
    @user = feedback.user
    @feedback = feedback.body
    mail(to: admin.email, subject: "New customer feedback")
  end

end
