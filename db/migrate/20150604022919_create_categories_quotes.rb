class CreateCategoriesQuotes < ActiveRecord::Migration
  def change
    create_table :categories_quotes, id: false do |t|
      t.references :category, :quote
    end
  end
end
