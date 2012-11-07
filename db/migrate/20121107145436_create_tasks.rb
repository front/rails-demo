class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.date :duedate
      t.references :goal

      t.timestamps
    end
    add_index :tasks, :goal_id
  end
end
