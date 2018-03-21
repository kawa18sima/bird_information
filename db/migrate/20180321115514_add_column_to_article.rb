class AddColumnToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :article, :text, null: false
    remove_column :articles, :place, :string
  end
end
