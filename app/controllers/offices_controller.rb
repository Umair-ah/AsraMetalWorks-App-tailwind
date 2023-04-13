class OfficesController < ApplicationController
    def index
        @metal_offices = Product.where(furniture_style: "Metal Office Furniture").order(created_at: :desc)#.page(params[:page]).per(5)
    end

end