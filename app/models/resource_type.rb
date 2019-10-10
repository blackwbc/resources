class ResourceType < ApplicationRecord
  has_many :resources
  validates :név, :presence => true
end
