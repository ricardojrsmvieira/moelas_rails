class Cocktail < ApplicationRecord
    #attr_accessible :drinks_cocktails_attributes
    validates :name, presence: true

    has_many :drinks_cocktails, dependent: :destroy
    has_many :drinks, through: :drinks_cocktails

    accepts_nested_attributes_for :drinks_cocktails, allow_destroy: true, reject_if: :all_blank
end
