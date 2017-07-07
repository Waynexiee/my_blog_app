class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.text :body
      t.references :blog, foreign_key: true
      # t.integer :commentable_id
      # t.string :commentable_type
      # t.string :ancestry
      t.timestamps
    end
  end
end
