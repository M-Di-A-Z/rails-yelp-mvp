class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true
#  validates :category, only:["chinese", "italian", "japanese", "french", "belgian"], presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }, presence: true
end
