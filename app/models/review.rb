class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, numericality: { only_integer: true, in: 0..5}
  validates :content, presence: true

  #faire le lien avec le restaurant ID ?
  #, inclusion: { in: 0..5 }, only_integer: true, presence: true

end
