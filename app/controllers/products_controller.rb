class ProductsController < ApplicationController
  def index
    @products = policy_scope(Product)
    @products_to_buy = @products.select{|product| product.aasm_state == "to_buy"}
    @products_bought = @products.select{|product| product.aasm_state == "bought"}
    authorize @product
  end

  def edit
    @product = Product.find(params[:id])
    authorize @product
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    authorize @product

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
