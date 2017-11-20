class ChangeColumnEvents < ActiveRecord::Migration[5.1]
  def up
    remove_column :events, :date, :date
  end

  def down
    add_column :events, :date, :date
  end
end
