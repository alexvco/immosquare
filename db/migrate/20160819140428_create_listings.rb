class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.text :desc
      t.references :building, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
