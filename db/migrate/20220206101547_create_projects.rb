class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :url
      t.string :techstack
      t.text :description

      t.belongs_to :profile, index: true, foreign_key: true

      t.timestamps
    end
  end
end
