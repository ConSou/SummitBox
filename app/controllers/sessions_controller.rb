class SessionsController < ApplicationController
  skip_before_action :require_authentication!, only: [:create, :destroy]

  def create
    @user = User.where(email: params[:email]).first
    if @user&.valid_password?(params[:password])
      render :create, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end

  def destroy
    current_user&.authentication_token = nil
    if current_user.save
      head(:ok)
    else
      head(:unauthorized)
    end
  end
end
