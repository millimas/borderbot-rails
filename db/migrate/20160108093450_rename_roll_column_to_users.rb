class RenameRollColumnToUsers < ActiveRecord::Migration
  def change
    rename_column :users, :roll, :role
  end
end
