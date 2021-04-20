class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.references :community, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :priority
      t.boolean :assigned

      t.timestamps
    end
  end
end
