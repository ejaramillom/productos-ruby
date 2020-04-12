class CreateJoinTableProductsCategories < ActiveRecord::Migration[6.0]
  def change
    create_join_table :products, :categories do |t|
      t.references :products, null: false, foreign_key: true
      t.references :categories, null: false, foreign_key: true
    end
  end
end
