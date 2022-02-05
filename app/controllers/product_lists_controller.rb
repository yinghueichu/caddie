class ProductListsController < ApplicationController
  def create
    @product_list = ProductList.new
    authorize @product_list
    @list = current_user.lists.where(status: "progress").first
    @product = Product.find(params[:product_id])
    @product_list.update(list: @list, product: @product)
  end
end
