class HomeController < ApplicationController
  def index
    @date = Time.now
    @attempts = Attempt.where(activity: current_user.routine.activities, created_at: @date.midnight..@date.end_of_day)
  end
end
