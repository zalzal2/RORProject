class CreateMyinfos < ActiveRecord::Migration[7.0]
  def change
    create_table :myinfos do |t|
      t.string :name
      t.text :academic
      t.text :itlanguage
      t.text :certificate
      t.text :wish

      t.timestamps
    end
  end
end
