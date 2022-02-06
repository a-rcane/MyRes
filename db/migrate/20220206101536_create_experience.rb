class CreateExperience < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :position
      t.text :description
      t.date :start
      t.date :end

      t.belongs_to :profile, index: true, foreign_key: true

      t.timestamps
    end
  end
end