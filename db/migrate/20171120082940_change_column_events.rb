class ChangeColumnEvents < ActiveRecord::Migration[5.1]
  def up
    delete_column :events, :date, :date
  end

  def down
    add_column :events, :describe, :string
  end
end
