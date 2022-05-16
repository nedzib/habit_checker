class HomeController < ApplicationController
  def index
    @date = Time.now
    @attempts = Attempt.where(created_at: @date.midnight..@date.end_of_day)
  end
end
