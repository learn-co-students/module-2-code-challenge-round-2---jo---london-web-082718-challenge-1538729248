class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :guest_rating, numericality: { less_than: 6 }
end
