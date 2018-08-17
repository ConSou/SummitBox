class UsersController < ApplicationController
  skip_before_action :require_authentication!, only: [:create]

  def show
    @user = User.find(params[:id])

    render :show
  end

  def update
    @user = User.find(params[:id])

    render :show


  end

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
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :avatar)
  end


end
