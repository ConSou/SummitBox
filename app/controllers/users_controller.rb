class UsersController < ApplicationController
  include Rails.application.routes.url_helpers
  skip_before_action :require_authentication!, only: [:create]

  def show
    @user = User.find(params[:id])

    if @user.image.attached?
      image = my_url(@user)
      @user.imgurl = "http://localhost:3000#{image}"
    end

    render :show

  end

  def update
    @user = User.find(params[:id])
    @user.assign_attributes(user_params)
    #@user.image.attach(params[:image])

    @user.save!


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
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :image, :bio, :city, :state, :country)
    # params.fetch(:user, {}).permit(:email, :password, :password_confirmation, :first_name, :last_name, :image)
  end

  def my_url(user)
    rails_blob_path(user.image)
  end


end
