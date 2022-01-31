class ProductsController < ApplicationController
  def index
    @products = Product.all
    @products_to_buy = Product.all.where(aasm_state: "to_buy")
    @products_bought = Product.all.where(aasm_state: "bought")
  end

  def edit
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @frequency_options = {
      "Never" => nil,
      "Every week" => 7,
      "Every 2 weeks" => 14,
      "Every month" => 30,
      "Personalise..." => nil
    }
    @unit_options = [
      "unit", "bottle", "box", "piece", "pack",
      "gram", "kilo", "bag", "roll", "personalise..." ]

  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user

    if @product.save!
      redirect_to products_path
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :photo,:frequency, :quantity, :unity, :description,:rating, :comment, :state, :price)
  end

end
