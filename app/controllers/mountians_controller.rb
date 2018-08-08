class MountiansController < ApplicationController

      def index
        @mountians = Mountian.all

        render json: @mountians, status: :ok
      end

      def show
        @mountian = Mountian.find(params[:id])
        render json: @mountian
      end

end
