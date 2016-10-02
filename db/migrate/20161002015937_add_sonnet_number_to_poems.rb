class AddSonnetNumberToPoems < ActiveRecord::Migration[5.0]
  def change
    add_column :poems, :sonnet_number, :integer
  end
end
