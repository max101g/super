class Power < ApplicationRecord
    has_many :heropowers
    has_many :heroes, through: :heropowers
end
