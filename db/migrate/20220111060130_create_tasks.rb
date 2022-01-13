class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :name
      t.text :description
      t.text :date
      t.boolean :completed
      t.string :tags, array: true, default: []

      t.timestamps
    end
  end
end
