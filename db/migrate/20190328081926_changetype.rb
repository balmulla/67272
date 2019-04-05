class Changetype < ActiveRecord::Migration[5.1]
  def change
    change_column :stores, :opening_time, :time
    change_column :stores, :closing_time, :time
  end
end
