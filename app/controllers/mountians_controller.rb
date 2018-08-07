class MountiansController < ApplicationController

      def index
        @mountians = Mountian.all

        render json: @mountians
      end

      def show
        render json: @mountian
      end
      
end
