class TagsController < ApplicationController
  def index
    @tags_category = Tag.all.where(group_name: "category").order(:name)
    @products_to_buy = policy_scope(Product).select { |product| product.aasm_state == "to_buy" }

    @query = params[:query]
    if @query.present?
      @products = Product.all.where('name ILIKE ?', "%#{@query}%")
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'list.html', locals: { products: @products } }
    end
  end

  def show
    @products_to_buy = policy_scope(Product).select { |product| product.aasm_state == "to_buy" }
    @tag = Tag.find(params[:id])
    authorize @tag
    @products_by_tag = @tag.products
  end

  def filters
    @filters = policy_scope(Tag).order(name: :asc)
    authorize @filters
  end

  def filter
    @filter = Tag.find(params[:id])
    authorize @filter
    if @filter == Tag.find_by_name('All')
      redirect_to '/products'
    else
      @products_all_by_filter = @filter.products.select { |product| product.aasm_state == "bought" || product.aasm_state == "to_buy" }
      @products_to_buy_by_filter = @products_all_by_filter.select { |product| product.aasm_state == "to_buy" }
      @products_bought_by_filter = @products_all_by_filter.select { |product| product.aasm_state == "bought" }
      @products_all_by_filter = @products_to_buy_by_filter + @products_bought_by_filter
    end
  end


end
