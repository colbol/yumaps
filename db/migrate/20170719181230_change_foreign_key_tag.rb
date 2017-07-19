class ChangeForeignKeyTag < ActiveRecord::Migration[5.0]
  def change
    remove_column :tags, :districts_id
    add_reference :tags, :district, index: true
  end
end
