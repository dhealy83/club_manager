class RenameOldTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :league_tables, :leagues
  end
end
