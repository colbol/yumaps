class RenameCountToCountdown < ActiveRecord::Migration[5.0]
  def change
    rename_column :votes, :count, :countdown
  end
end
