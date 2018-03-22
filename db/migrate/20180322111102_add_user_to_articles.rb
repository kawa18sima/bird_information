class AddUserToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles ,:user_id, :integer, null: false, foreign_key: true
  end
end
