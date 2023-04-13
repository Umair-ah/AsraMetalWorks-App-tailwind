class ProductsController < ApplicationController
    before_action :authenticate_admin!, except: [:index, :show]
    before_action :set_product, except: %i[new create index]    

    def index
        @products = Product.all.order(created_at: :desc)#.page(params[:page]).per(5)
    end

    def new
        @product = current_admin.products.build
    end

    def create
        @product = current_admin.products.build(products_params)
        if @product.save
            redirect_to root_path, notice: "Product Created"
        else
            redirect_to new_admin_session_path, alert: "Error"
        end
    end

    def edit

    end

    def update
        if @product.update(products_params)
            redirect_to root_path, notice: "Product Updated"
        end
    end

    def destroy
        if @product.destroy
            redirect_to root_path, notice: "Product Removed"
        end
    end

    def show

    end

    private

        def set_product
            @product = Product.find(params[:id])
        end

        def products_params
            params.require(:product).permit(:admin_id, :name, :description, :furniture_style, :price, :pic)
        end
    

end