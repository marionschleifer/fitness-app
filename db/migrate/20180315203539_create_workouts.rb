class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.string :title
      t.text :description
      t.date :date
      t.string :type
      t.integer :calories

      t.timestamps
    end
  end
end
