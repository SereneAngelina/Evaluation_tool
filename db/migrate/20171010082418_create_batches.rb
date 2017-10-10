class CreateBatches < ActiveRecord::Migration[5.1]
  def change
    create_table :batches do |t|
      t.integer :code
      t.date :starts_at
      t.date :ends_at

      t.timestamps
    end
  end
end
