class Reservation < ApplicationRecord
  belongs_to :resource
  validates :lefoglaló_neve, :mettől, :meddig, :presence => true
end
