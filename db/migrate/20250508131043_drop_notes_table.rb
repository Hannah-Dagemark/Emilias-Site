class DropNotesTable < ActiveRecord::Migration[8.0]
  def change
    drop_table :notes
  end
end
