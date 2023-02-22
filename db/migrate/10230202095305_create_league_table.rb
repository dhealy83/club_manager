class CreateLeagueTable < ActiveRecord::Migration[7.0]
  def change
    create_table :league_tables do |t|
      t.string :title
      t.string :day
      t.string :time
      t.string :location
      t.string :description
      t.timestamps
    end
  end
end
