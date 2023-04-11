class Drink < ApplicationRecord
    validates :name, :quantity, presence: true
    validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0}

    has_many :drinks_cocktails
    has_many :cocktails, through: :drinks_cocktails
end
