class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @msg = "Hello"
    render :show
    # puts "HERE products_controller"
  end

end
