class TagsController < ApplicationController
  def index
    @tags_category = policy_scope(Tag).order(created_at: :desc)
    @tags_category = Tag.all.where(group_name: "category")

    if params[:query].present?
      @tags = Tag.where(name: params[:query])
    else
      @tags = Tag.all
    end
  end

  def show
    @tag = Tag.find(params[:id])
    authorize @tag
  end
end
