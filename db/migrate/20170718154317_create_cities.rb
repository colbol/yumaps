class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.float :longitude
      t.float :latitude
      t.float :zoom
      t.string :name
      t.reference :country

      t.timestamps
    end
  end
end
