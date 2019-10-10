class Resource < ApplicationRecord
  belongs_to :resource_type
  has_many :reservations
  validates :kód, :név, :resource_type_id, :presence => true
end
