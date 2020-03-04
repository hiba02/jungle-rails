class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
    puts "HEHEHEHEHEHHEHEHEHHEHEHEHEHHEHE"
    puts "index @products: #{@products.inspect}"
    puts "index @products[0]: #{@products[1]}"
  end

  def show
    @product = Product.find params[:id]
    @msg = "Hello"
    render :show
    # puts "HERE products_controller"
  end

end
