class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :project_url
      t.string :github_url
      t.integer :stars
      t.integer :forks
      t.text :tech_stacks, array: true, default: []

      t.timestamps
    end
  end
end
