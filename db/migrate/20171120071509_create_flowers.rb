class CreateFlowers < ActiveRecord::Migration[5.1]
  def change
    create_table :flowers do |t|
      t.string :name
      t.integer :votes_num
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
