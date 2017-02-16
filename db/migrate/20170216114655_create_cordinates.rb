class CreateCordinates < ActiveRecord::Migration[5.0]
  def change
    create_table :cordinates do |t|
      t.float :lat
      t.float :lng
      t.references :tennis_court, foreign_key: true

      t.timestamps
    end
  end
end
