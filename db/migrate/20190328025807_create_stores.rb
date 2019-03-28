class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :type
      t.datetime :opening_time
      t.datetime :closing_time
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
