class AddDistrictIndexToTags < ActiveRecord::Migration[5.0]
  def change
    add_column :tags, :district_index, :integer
  end
end
