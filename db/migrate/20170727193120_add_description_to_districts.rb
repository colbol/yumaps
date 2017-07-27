class AddDescriptionToDistricts < ActiveRecord::Migration[5.0]
  def change
    add_column :districts, :description, :string
  end
end
