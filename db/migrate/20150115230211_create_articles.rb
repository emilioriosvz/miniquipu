class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :code
      t.string :name
      t.float :price
    end
  end
end
