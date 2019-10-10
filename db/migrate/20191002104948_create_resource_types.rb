class CreateResourceTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :resource_types do |t|
      t.string :név, limit: 32

      t.timestamps
    end
  end
end
