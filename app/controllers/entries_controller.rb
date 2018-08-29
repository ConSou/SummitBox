class EntriesController < ApplicationController

  def index
    @entrys = Entry.all

    render :index, status: :ok
  end

  def show
    @bin = Bin.find(params[:id])
    @entrys = Entry.where(bin: @bin)

    render :show, status: :ok
  end

  def create
    @bin = Bin.find(params[:bin_id])
    @entry = @bin.entries.build(entry_params)
    @entry.user = current_user

    if @entry.save
      render :create
    else
      head(:unprocsessable_entity)
    end
  end



  private

  def entry_params
    params.permit(:name, :city, :state, :country, :journal, :bin, :user)
  end

end
