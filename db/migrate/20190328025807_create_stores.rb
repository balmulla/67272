class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :type
      t.time :opening_time
      t.time :closing_time
      #new type is 'time'
      t.float :longitude
      t.float :latitude
      #added exclusive column - boolean

      t.timestamps
    end
  end
end
