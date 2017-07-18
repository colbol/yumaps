class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :name
      t.boolean :display
      t.reference :districts

      t.timestamps
    end
  end
end
