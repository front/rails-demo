class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.text :description
      t.references :strategy

      t.timestamps
    end
    add_index :goals, :strategy_id
  end
end
