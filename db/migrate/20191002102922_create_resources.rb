class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :név, limit: 32, :null => false
      t.string :kód, limit: 32, :null => false
      t.references :resource_type, null: false, foreign_key: true

      t.timestamps

    end
  end
end
