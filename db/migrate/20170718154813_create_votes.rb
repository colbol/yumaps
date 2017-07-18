class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.string :ip
      t.references :tag

      t.timestamps
    end
  end
end
