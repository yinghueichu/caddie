class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all.select do |product|
        product.user == user || user.is_following?(product.user)
      end
    end
  end

  def product_to_create?
    true
  end

  def create?
    true
  end

  def buy?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end

  def show?
    true
  end

  def filter?
    true
  end

  def to_buy?
    true
  end
end
