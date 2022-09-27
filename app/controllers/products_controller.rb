class ProductsController < ApplicationController
    def index 
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.new(products_params)

        respond_to do |format|
            if @product.save
              format.html { redirect_to @product, notice: "Address was successfully created." }
  
            else
              format.html { render :new }
            end
          end
        
    end
private

def products_params
    params.require(:product).permit(:name, :price, :description )
end

end
