class CreateHomePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :home_posts do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
