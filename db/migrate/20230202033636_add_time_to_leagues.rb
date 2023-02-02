class AddTimeToLeagues < ActiveRecord::Migration[7.0]
  def change
    add_column :leagues, :time, :string
  end
end
