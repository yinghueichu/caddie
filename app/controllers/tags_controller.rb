class TagsController < ApplicationController
  def index
    @tags_category = policy_scope(Tag).order(created_at: :desc)
    @tags_category = Tag.all.where(group_name: "category")
    @products_to_buy = policy_scope(Product).select { |product| product.aasm_state == "to_buy" }

    if params[:query].present?
      @products = Product.where(name: params[:query])
    end
  end

  def show
    @products_to_buy = policy_scope(Product).select { |product| product.aasm_state == "to_buy" }
    @tag = Tag.find(params[:id])
    authorize @tag
    @products_by_tag = @tag.products
  end
end
