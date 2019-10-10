class AddResourceTypes < ActiveRecord::Migration[6.0]
  def change
    ResourceType.create :név => 'Laptop'
    ResourceType.create :név => 'Tárgyaló terem'
    ResourceType.create :név => 'Kivetítő'
  end
end
