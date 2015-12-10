class FeedbackMailer < ApplicationMailer

  def feedback_email(feedback)
    admin =
    @user = feedback.user
    @body = feedback.body
    mail(to: admin.email, subject: "New customer feedback")
  end

end
