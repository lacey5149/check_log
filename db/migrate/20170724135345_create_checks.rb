class CreateChecks < ActiveRecord::Migration[5.1]
  def change
    create_table :checks do |t|
      t.string :to
      t.string :from
      t.string :mailed_from
      t.decimal :value
      t.date :date_received
      t.date :date_released

      t.timestamps
    end
  end
end
