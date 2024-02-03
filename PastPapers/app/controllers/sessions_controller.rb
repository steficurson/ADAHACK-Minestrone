class SessionsController < ApplicationController
  def create
    @user = User.find_by(email: params[:email])

    #Authenticate the user
    if @user && @user.authenticate(params[:password])
      #Success: log the user in
      session[:user_id] = @user.id
      redirect_to user_path
    else
      message = "Invalid email and/or password. Please try again."
      redirect_to login_path, notice: message
    end
  end
end
