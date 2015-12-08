class FeedbacksController < ApplicationController

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.user = current_user
    if @feedback.save
      redirect_to root_path
    else
      respond_to do |format|
        format.js {render partial: "shared/feedback_form"}
      end
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:body)
  end

end
