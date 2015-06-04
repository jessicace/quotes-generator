class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.references :medium, polymorphic: true
      t.text :content 
      t.datetime :date
      t.text :attribution
      t.timestamps null: false
    end
  end
end
