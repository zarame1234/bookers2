class UsersController < ApplicationController
 
  def show
    @user = User.find(params[:id])
    @books = User.
  end

  def edit
    @user= User.find(params[:id])
  end

  def Update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(user.id)
  end


private

def user_params
  params.require(:user).permit(:name, :profile_image, :introduction)
end
end