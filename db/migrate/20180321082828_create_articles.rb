class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :place
      t.boolean :complete, default: false, null: false

      t.timestamps
    end
  end
end
