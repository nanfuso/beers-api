class Beer < ApplicationRecord
    validates :name, presence: true
    validates :style, presence: true
    validates :yeast, presence: true
    validates :ibu, presence: true
end
