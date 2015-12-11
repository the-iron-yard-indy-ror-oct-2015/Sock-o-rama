class FeedbacksController < ApplicationController

  def new
    respond_to do |format|
      format.html {
        redirect_to root_path
      }
      format.js {
        render :partial => "shared/feedback_form"
      }
    end
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.user = current_user
    if @feedback.save
      redirect_to root_path
      FeedbackMailer.feedback_email(@feedback).deliver_now
    else
      respond_to do |format|
        format.js {}
      end
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:body)
  end

end
