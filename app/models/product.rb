require "aasm"

class Product < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :tags
  has_one_attached :photo
  has_many :product_lists
  has_many :lists, through: :product_lists
  validates :name, presence: true

  include AASM

  aasm timestamps: true do
    state :archive, initial: true
    state :bought, :to_buy

    event :buy do
      transitions from: :to_buy, to: :bought
    end

    event :re_buy do
      transitions from: :archive, to: :to_buy
    end

    event :archive do
      transitions from: :bought, to: :archive
    end

    event :delete_from_to_buy do
      transitions from: :to_buy, to: :archive
    end
  end


end
