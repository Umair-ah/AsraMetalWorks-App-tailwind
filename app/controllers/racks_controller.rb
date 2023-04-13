class RacksController < ApplicationController
    def index
        @metal_racks = Product.where(furniture_style: "Metal Racks Furniture").order(created_at: :desc)#.page(params[:page]).per(5)
    end

end