class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :introduce
      t.text :content
      t.string :money
      t.text :url


      t.timestamps
    end
  end
end
