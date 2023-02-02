class AddLocationToLeagues < ActiveRecord::Migration[7.0]
  def change
    add_column :leagues, :location, :text
  end
end
