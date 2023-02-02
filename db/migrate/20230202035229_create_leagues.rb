class CreateLeagues < ActiveRecord::Migration[7.0]
  def change
    create_table :leagues do |t|
      t.string :title
      t.string :day
      t.string :time
      t.text :location
      t.text :description

      t.timestamps
    end
  end
end
