class CreateAboutMes < ActiveRecord::Migration[7.1]
  def change
    create_table :about_mes do |t|
      t.string :title
      t.text :paragraphs, array: true, default: []

      t.timestamps
    end
  end
end
