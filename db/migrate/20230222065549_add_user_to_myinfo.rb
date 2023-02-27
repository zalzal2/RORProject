class AddUserToMyinfo < ActiveRecord::Migration[7.0]
  def change
    add_column :myinfos, :user_id, :integer
  end
end
