class CreateStrategies < ActiveRecord::Migration
  def change
    create_table :strategies do |t|
      t.string :title
      t.text :vision

      t.timestamps
    end
  end
end
