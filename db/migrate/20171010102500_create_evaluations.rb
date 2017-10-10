class CreateEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluations do |t|
      t.date :day
      t.string :color_code
      t.text :remarks

      t.timestamps
    end
  end
end
