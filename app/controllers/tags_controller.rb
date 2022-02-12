class TagsController < ApplicationController
  def index
    @tags_category = policy_scope(Tag).order(created_at: :desc)
    @tags_category = Tag.all.where(group_name: "category")

    if params[:query].present?
      @products = Product.all.where('name ILIKE ?', "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'list.html', locals: { products: @products } }
    end
  end

  def show
    @tag = Tag.find(params[:id])
    authorize @tag
  end
end
