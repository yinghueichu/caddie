class ProductsController < ApplicationController
  def index
    # Modification par le TA pour améliorer la lisibilité et permettre Pundit + Follow
    @products = Product.order(updated_at: :desc)
    # @products_to_buy = current_user.lists.where(status: "progress").first.products
    @products_to_buy = @products.select { |product| product.aasm_state == "to_buy" }
    @products_bought = @products.select { |product| product.aasm_state == "bought" }
    @products_all = @products.select { |product| product.aasm_state == "bought" || product.aasm_state == "to_buy" }
    @products_newly_added = @products.select { |product| ((Time.new - product.updated_at ) / 60 ) < 30}
  end

  def edit
    @product = Product.find(params[:id])
    authorize @product
    @frequency_options = {
      "Never" => nil,
      "Every week" => 7,
      "Every 2 weeks" => 14,
      "Every month" => 30,
      "Personalise..." => nil
    }
    @unit_options = [
      "unit", "bottle", "box", "piece", "pack",
      "gram", "kilo", "bag", "roll", "personalise..."]
  end

  def update
    @products = Product.all
    @product = Product.find(params[:id])
    authorize @product
    authorize @products
    @product.re_buy if @product.aasm_state == "archive"
    @product.user = current_user
    @product.save
    @products_to_buy = @products.select { |product| product.aasm_state == "to_buy" }
    respond_to do |format|
      format.json { render json: {count: @products_to_buy.count}.to_json }
    end
  end

  def buy
    @product = Product.find(params[:id])
    authorize @product
    @product.buy
    @product.save
    redirect_to products_path(anchor: "product-#{ @product.id - 1 }")
  end

  def new
    @product = Product.new
    authorize @product
    @frequency_options = {
      "Never" => nil,
      "Every week" => 7,
      "Every 2 weeks" => 14,
      "Every month" => 30,
      "Personalise..." => nil
    }
    @unit_options = [
      "unit", "bottle", "box", "piece", "pack",
      "gram", "kilo", "bag", "roll", "personalise..."]
  end

  def product_to_create
    product_params = params["product"]
    product_name = JSON.parse(product_params)["name"]
    @product = Product.new(name: product_name, user_id: current_user.id, aasm_state: "to_buy")
    authorize @product
    @product.save
  end

  def create
    @frequency_options = {
      "Never" => nil,
      "Every week" => 7,
      "Every 2 weeks" => 14,
      "Every month" => 30,
      "Personalise..." => nil
    }
    if params[:query]
      @product = Product.new(name: params[:query], user_id: current_user.id, aasm_state: "to_buy")
    else
      @product = Product.new(product_params)
      @product.user = current_user
    end
    authorize @product

    if @product.save
      redirect_to products_path
    else
      flash[:alert] = "Oups, please check your product info."
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :photo, :frequency, :quantity, :unity, :description, :rating, :comment, :state, :price)
  end

end
