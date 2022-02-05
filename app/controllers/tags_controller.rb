class TagsController < ApplicationController
  def index
    @tags = policy_scope(Tag).order(created_at: :desc)
    @tags = Tag.all
    @tags_category = Tag.all.where(group_name: "category")
  end

  def show
    @tag = Tag.find(params[:id])
  end

end
