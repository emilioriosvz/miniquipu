class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.float :price
      t.integer :invoice_id
    end
  end
end
