class AddCountToVotes < ActiveRecord::Migration[5.0]
  def change
    add_column :votes, :count, :integer
  end
end
