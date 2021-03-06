class ListsController < ApplicationController

  def create
    @list = List.new(date: Date.today)
    authorize @list
    @list.user = current_user
    @list.save!

    @products_bought = Product.all.where(aasm_state: "bought")
    @products_bought.each do |product|
      product.archive!
      product.save!
      product_list = ProductList.new(product_id: product.id, list_id: @list.id)
      product_list.save!
    end

    redirect_to products_path
  end

  def index
    @products_to_buy = policy_scope(Product).select { |product| product.aasm_state == "to_buy" }
    @lists = policy_scope(List).order(created_at: :desc)
    @lists = List.all.reverse
    @product_lists = ProductList.all
    @lists_of_products = []
    @lists.each do |list|
      list.id
      products_by_list = []
      @product_lists.each do |product_list|
        products_by_list << Product.find(product_list.product_id) if product_list.list_id == list.id
      end
      @lists_of_products << products_by_list
    end
    @lists_of_products = @lists_of_products.reverse
  end

  def show
    @products_to_buy = policy_scope(Product).select { |product| product.aasm_state == "to_buy" }
    @list = List.find(params[:id])
    authorize @list
    @product_lists = ProductList.all
    @products_by_list = []
    @product_lists.each do |product_list|
      @products_by_list << Product.find(product_list.product_id) if product_list.list_id == @list.id
    end
    @products_by_list
  end


end
