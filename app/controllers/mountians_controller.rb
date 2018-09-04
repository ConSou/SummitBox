class MountiansController < ApplicationController

      def index
        @mountians = Mountian.all

        render :index, status: :ok
      end

      def show

        if !numeric(params[:id])
        @mountian = Mountian.where(["name LIKE ?", "%#{params[:id]}%"])
        #@bin_entries = @mountian[0].bin.entries.count

        if @mountian.length > 0
          puts "HELLO"
          render json: @mountian, only: [:id, :name, :description, :lat, :lng, :elevation, :image]
        else
          render json: {}, status: :unauthorized
        end
      else
        @mountian = [Mountian.find(params[:id])]

        render json: @mountian, only: [:id, :name, :description, :lat, :lng, :elevation, :image]
      end
    end

    private
    def numeric(val)
      Float(val) != nil rescue false
    end

end
