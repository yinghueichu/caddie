class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all.select do |product|
        product.user == user || user.is_following?(product.user)
      end
    end
  end

  def new?
    true
  end
end