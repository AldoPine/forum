class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.references :post, index: true, foreign_key: true
      t.string :user
      t.string :references

      t.timestamps null: false
    end
  end
end
