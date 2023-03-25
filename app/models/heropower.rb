class Heropower < ApplicationRecord
  belongs_to :hero
  belongs_to :power

  validates :strength, presence: true, inclusion: { in: ['Average', 'Strong', 'Weak'] }
  validates :hero_id, presence: true, numericality: { only_integer: true }
  validates :power_id, presence: true, numericality: { only_integer: true }
end
