class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :name
      t.string :en_name
      t.text :content
      t.text :en_content
      t.timestamps
    end
  end
end
