class AddLineAndStanzaNumberToLines < ActiveRecord::Migration[5.0]
  def change
    add_column :lines, :line_number, :integer
    add_column :lines, :stanza_number, :integer
  end
end
