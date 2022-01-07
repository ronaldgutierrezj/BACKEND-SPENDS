class CreateSpends < ActiveRecord::Migration[6.1]
  def change
    create_table :spends do |t|
      t.string :concept
      t.integer :amount
      t.date :date
      t.string :details

      t.timestamps
    end
  end
end
