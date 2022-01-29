require "aasm"

class Product < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :tags

  include AASM

  aasm do
    state :to_buy, initial: true
    state :bought

    event :buy do
      transitions from: :to_buy, to: :bought
    end

    event :re_buy do
      transitions from: :bought, to: :to_buy
    end

    event :archive do
      transitions from: :to_buy, to: :archive
    end
  end


end
