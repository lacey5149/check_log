class AddIntegerToCheck < ActiveRecord::Migration[5.1]
  def change
    add_column :checks, :account_id, :integer
  end
end
