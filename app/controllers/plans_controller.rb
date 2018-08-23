class PlansController < ApplicationController
  def index
    @plans = Plan.where(user_id: current_user.id)

    render :index, status: :ok
  end

  def create
    @mountian = Mountian.find(params[:mountian_id])
    @plan = current_user.plans.build(mountian: @mountian)

    @plan.save
    render :create, status: :ok

  end

  def destroy
    @plan = Plan.find(params[:id])

    @plan.destroy
    render :create, status: :ok
  end

end
