class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :lefoglaló_neve
      t.datetime :mettől
      t.datetime :meddig
      t.references :resource, null: false, foreign_key: true
      t.timestamps
    end
  end
end
