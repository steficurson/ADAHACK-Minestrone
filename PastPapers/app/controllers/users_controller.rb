class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    #Save the user
    if @user.save
      #Success: log the user in
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render home_path
    end
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
