class UsersController < ApplicationController
  before_action :set_user, only: [:follow, :unfollow]

  def index
    @users = policy_scope(User).where.not(id: current_user.id)
    @products_to_buy = policy_scope(Product).select { |product| product.aasm_state == "to_buy" }
  end

  def follow
    if current_user.follow(@user.id)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  def unfollow
    if current_user.unfollow(@user.id)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { render action: :follow }
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
