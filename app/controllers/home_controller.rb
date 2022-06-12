class HomeController < ApplicationController
  def index
    @date = Time.now
    @attempts = Attempt.where(activity: current_user.routine.activities.active, created_at: @date.midnight..@date.end_of_day)

    if @attempts.count != current_user.routine.activities.active.count
      current_user.routine.activities.each do |activity|
        Attempt.create!(activity: activity) unless activity.has_today_attempt?
      end
    end

    unless params[:activity].nil?
      new_activity = Activity.create!(routine: current_user.routine, name: params[:activity][:name], icon: params[:activity][:icon])
      Attempt.create!(activity: new_activity)
      redirect_to root_path
    end

  end
end
