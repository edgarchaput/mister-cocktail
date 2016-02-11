class Ingredient < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  has_many :doses
  has_many :cocktails, through: :doses, dependent: :restrict_with_exception
end
