class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :poster_name
      t.text :content

      t.timestamps
    end
  end
end
