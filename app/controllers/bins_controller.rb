class BinsController < ApplicationController
  def show
    @mountian = Mountian.find(params[:id])
    @bin = Bin.where(mountian: @mountian)

    render :show, status: :ok
  end
end
