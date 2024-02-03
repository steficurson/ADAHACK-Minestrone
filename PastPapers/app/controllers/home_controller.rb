class HomeController < ApplicationController
  def index
    if session[:user_id] != nil
      @user = User.find(session[:user_id])
    else
      @user = nil
    end
  end
end
