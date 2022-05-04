class HomeController < ApplicationController
  def index
    redirect_to "/user/sign_in" unless signed_in?
  end
end
