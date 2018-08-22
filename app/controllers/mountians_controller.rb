class MountiansController < ApplicationController

      def index
        @mountians = Mountian.all

        render :index, status: :ok
      end

      def show
        @mountian = Mountian.where(["name LIKE ?", "%#{params[:id]}%"])

        if @mountian.length > 0
          puts "HELLO"
          render json: @mountian, only: [:id, :name, :description, :lat, :lng, :elevation, :image]
        else
          render json: {}, status: :unauthorized
        end
      end

end
