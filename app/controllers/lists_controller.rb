class ListsController < ApplicationController

  def create
    @list = List.new(date: Date.today)
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
    @lists = List.all.reverse
  end

  def show
    @list = List.find(params[:id])
    @product_lists = ProductList.all
    @products_by_list = []
    @product_lists.each do |product_list|
      @products_by_list << Product.find(product_list.product_id) if product_list.list_id == @list.id
    end
    @products_by_list
  end
end
