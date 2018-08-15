class UsersController < ApplicationController
  skip_before_action :require_authentication!, only: [:create]

  def create
    @user = User.new(user_params)

    if @user.save
      render :create
    else
      head(:unprocsessable_entity)
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end


end
