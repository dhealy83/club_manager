class CreateTournaments < ActiveRecord::Migration[7.0]
  def change
    create_table :tournaments do |t|
      t.string :title
      t.datetime :date
      t.text :location
      t.text :description

      t.timestamps
    end
  end
end
