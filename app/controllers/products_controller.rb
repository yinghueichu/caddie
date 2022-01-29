class ProductsController < ApplicationController
  def index
    @products = Product.all
    @products_to_buy = Product.all.where(aasm_state: "to_buy")
    @products_bought = Product.all.where(aasm_state: "bought")
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
  end

  private

  def product_params
    params.require(:product).permit(:name, :frequency, :quantity, :unity, :description,:rating, :comment, :state, :price)
  end

end
