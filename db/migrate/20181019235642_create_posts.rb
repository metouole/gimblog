class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :name
      t.date :pdate
      t.time :ptime
      t.text :description
      t.string :province

      t.timestamps
    end
  end
end
