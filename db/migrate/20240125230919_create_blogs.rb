class CreateBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :about
      t.text :paragraphs, array: true, default: []
      t.date :created_on
      t.integer :user_id
      t.string :image

      t.timestamps
    end
  end
end
