class Power < ApplicationRecord
    has_many :heropowers
    has_many :heroes, through: :heropowers

    validates :name, presence: true
    validates :description, presence: true, length: {minimum: 20}
end
