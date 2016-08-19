class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.integer :year_build
      t.integer :address_id
      t.integer :structure_type
      t.integer :construction_status_id
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
