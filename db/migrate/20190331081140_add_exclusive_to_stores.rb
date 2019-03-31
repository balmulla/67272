class AddExclusiveToStores < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :exclusive, :boolean
  end
end
