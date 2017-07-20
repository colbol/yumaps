class AddContentToTags < ActiveRecord::Migration[5.0]
  def change
    add_column :tags, :content, :string
  end
end
