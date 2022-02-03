class ProductsController < ApplicationController
  def index
    @products = Product.all
    @products_to_buy = Product.all.where(aasm_state: "to_buy")
    @products_bought = Product.all.where(aasm_state: "bought")
    @tags_category = Tag.all.where(group_name: "category")
  end

  def edit
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
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
