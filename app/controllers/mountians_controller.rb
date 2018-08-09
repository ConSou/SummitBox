class MountiansController < ApplicationController

      def index
        @mountians = Mountian.all

        render :index, status: :ok
      end

      def show
        @mountian = Mountian.find(params[:id])
        render json: @mountian, only: [:name, :description, :id]
      end

end
