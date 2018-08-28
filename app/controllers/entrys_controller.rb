class EntrysController < ApplicationController

  def index
    @entrys = Entry.all

    render :index, status: :ok
  end

  def show
    @bin = Bin.find(params[:id])
    @entrys = Entry.where(bin: @bin)

    render :show, status: :ok
  end

end
