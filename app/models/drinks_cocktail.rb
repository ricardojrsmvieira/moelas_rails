class DrinksCocktail < ApplicationRecord
    validates :drink_id, :quantity, presence: true
    validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 1}

    belongs_to :cocktail, optional: true
    belongs_to :drink
end
