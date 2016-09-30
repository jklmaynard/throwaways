class CreateLines < ActiveRecord::Migration[5.0]
  def change
    create_table :lines do |t|
      t.string :line
      t.integer :poem_id

      t.timestamps
    end
  end
end
