class RemoveCountdownFromVotes < ActiveRecord::Migration[5.0]
  def change
    remove_column :votes, :countdown
  end
end
